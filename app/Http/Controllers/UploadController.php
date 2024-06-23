<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Gambar;
use File;

class UploadController extends Controller
{
    public function upload()
{
    // Retrieve all records from the 'gambar' table
    $gambar = Gambar::get();
    
    // Pass the retrieved records to the 'upload' view as the $gambar variable
    return view('upload', ['gambar' => $gambar]);
}

public function proses_upload(Request $request)
{
    // Validate the incoming request data
    $request->validate([
        'file' => 'required|file|image|mimes:jpeg,png,jpg|max:2048', // Ensure file is required, an image, and within specified limits
        'keterangan' => 'required', // Ensure keterangan is required
    ]);
    
    // Retrieve the uploaded file from the request
    $file = $request->file('file');
    
    // Generate a unique file name for the uploaded file
    $nama_file = time() . "_" . $file->getClientOriginalName();
    
    // Specify the destination folder for the uploaded file
    $tujuan_upload = 'data_file';
    
    // Move the uploaded file to the destination folder with the generated file name
    $file->move($tujuan_upload, $nama_file);
    
    // Create a new record in the 'gambar' table with the file name and the provided description
    Gambar::create([
        'file' => $nama_file,
        'keterangan' => $request->keterangan, // Note: Make sure to use $request->input('keterangan') if you're not using Laravel 8
    ]);
    
    // Redirect the user back to the upload page
    return redirect()->back();
}
public function hapus($id)
{
    // Mengambil data dari database berdasarkan ID yang diberikan
    $gambar = Gambar::find($id);
    
    if (!$gambar) {
        // Menangani kasus ketika data dengan ID yang diberikan tidak ditemukan
        return redirect()->back()->with('error', 'Data tidak ditemukan.');
    }
    
    // Menghapus file dari sistem file menggunakan File facade di Laravel
    if (File::exists(public_path('data_file/' . $gambar->file))) {
        File::delete(public_path('data_file/' . $gambar->file));
    } else {
        // Menangani kasus ketika file tidak ditemukan
        return redirect()->back()->with('error', 'File tidak ditemukan.');
    }

    // Menghapus data dari database
    $gambar->delete();
    
    // Mengalihkan pengguna kembali ke halaman sebelumnya dengan pesan sukses
    return redirect()->back()->with('success', 'File berhasil dihapus.');
}


}
