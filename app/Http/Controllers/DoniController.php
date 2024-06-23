<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;

class DoniController extends Controller
{
    public function data(){
        $parameter = [
            'nama' => 'donn',
            'pekerjaan' => 'Programmer',
        ];
        $enkripsi = Crypt::encrypt($parameter);
        echo "<a href='/data/".$enkripsi."'>Klik</a>";
    }
    
    public function data_proses($data){
        $data = Crypt::decrypt($data);
        echo "Nama : " . $data['nama'];
        echo "<br/>";
        echo "Pekerjaan : " . $data['pekerjaan'];
    }
    public function hash(){
        // Generate a hashed password for the string 'halo123'
        $hash_password_saya = Hash::make('halo123');
        
        // Output the hashed password
        echo $hash_password_saya;
        
    }
    
    
}
