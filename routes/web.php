<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//route CRUD
use App\Http\Controllers\PegawaiController;
Route::get('/pegawai', [PegawaiController::class, 'pegawai']);
Route::get('/pegawai/tambah', [PegawaiController::class, 'tambah']);
Route::post('/pegawai/store', [PegawaiController::class, 'store']);
Route::get('/pegawai/edit/{id}', [PegawaiController::class, 'edit']);
Route::post('/pegawai/update', [PegawaiController::class, 'update']);
Route::get('/pegawai/hapus/{id}', [PegawaiController::class, 'hapus']);
Route::get('/pegawai/cari', [PegawaiController::class, 'cari']);	
// Route::get('/pegawai/tambah','PegawaiController@tambah');

use App\Http\Controllers\MalasngodingController;
Route::get('/input', [MalasngodingController::class, 'input']);
Route::post('/proses', [MalasngodingController::class, 'proses']);

use App\Http\Controllers\PegawaisController;
Route::get('/pegawais', [PegawaisController::class, 'index']);
Route::get('/pegawais/tambah', [PegawaisController::class, 'tambah']);
Route::post('/pegawais/store', [PegawaisController::class, 'store']);
Route::get('/pegawais/edit/{id}', [PegawaisController::class, 'edit']);
Route::put('/pegawais/update/{id}', [PegawaisController::class, 'update']);
Route::get('/pegawais/hapus/{id}', [PegawaisController::class, 'delete']);

use App\Http\Controllers\GuruController;
Route::get('/guru', [GuruController::class, 'index']);
Route::get('/guru/hapus/{id}', [GuruController::class, 'hapus']);
Route::get('/guru/trash', [GuruController::class, 'trash']);
Route::get('/guru/kembalikan/{id}', [GuruController::class, 'kembalikan']);
Route::get('/guru/kembalikan_semua', [GuruController::class, 'kembalikan_semua']);
Route::get('/guru/hapus_permanen/{id}', [GuruController::class, 'hapus_permanen']);
Route::get('/guru/hapus_permanen_semua', [GuruController::class, 'hapus_permanen_semua']);

use App\Http\Controllers\PenggunaController;
Route::get('/pengguna', [PenggunaController::class, 'index']);

use App\Http\Controllers\WebController;
Route::get('/article', [WebController::class, 'index']);  

use App\Http\Controllers\DikiController;
Route::get('/anggota', [DikiController::class, 'index']);
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

use App\Http\Controllers\DoniController;
Route::get('/enkripsi', [DoniController::class, 'enkripsi']);
Route::get('/data', [DoniController::class, 'data']);
Route::get('/data/{data_rahasia}', [DoniController::class, 'data_proses']);
Route::get('/hash', [DoniController::class, 'hash']);

use App\Http\Controllers\UploadController;
Route::get('/upload', [UploadController::class, 'upload']);
Route::post('/upload/proses', [UploadController::class, 'proses_upload']);
Route::get('/upload/hapus/{id}', [UploadController::class, 'hapus']);