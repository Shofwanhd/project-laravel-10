<?php

namespace App\Http\Controllers;

use App\Models\BeritaModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function Dashboard()
    {

        $berita = DB::table('berita')->count();
        $client = DB::table('client')->count();
        $staff = DB::table('staff')->count();
        $users = DB::table('users')->count();
        $galeri = DB::table('galeri')->count();
        $video = DB::table('video')->count();
        $kategori = DB::table('kategori')->count();
        // $download = DB::table('berita')->count();

        return view('admin.dashboard', compact(
            'berita',
            'client',
            'staff',
            'users',
            'galeri',
            'video',
            'kategori'
        ));
    }
}
