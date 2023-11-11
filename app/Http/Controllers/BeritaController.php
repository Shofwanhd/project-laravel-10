<?php

namespace App\Http\Controllers;

use App\Models\BeritaModel;
use App\Models\KategoriBeritaModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller;
use Illuminate\Support\Str;

class BeritaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $berita = DB::table('berita')->count();
        $data = BeritaModel::all();
        return view('admin.view-berita', compact('berita', 'data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $kategori = KategoriBeritaModel::all();
        return view('admin.create-berita', compact('kategori'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $this->validate($request, [
        //     'id_user' => 'required',
        //     'id_kategori' => 'required',
        //     'slug_berita' => 'required|max:255',
        //     'ringkasan' => 'required',
        //     'judul_berita' => 'required|max:255',
        //     'isi' => 'required',
        //     'status_berita' => 'required',
        //     'jenis_berita' => 'required',
        //     'keywords' => 'required',
        //     'gambar' => 'image|mimes : jpg,png,jpeg',
        //     'icon' => 'required',
        //     'hits' => 'required',
        //     'tanggal_post' => 'required',
        //     'tangagl_publish' => 'required',
        //     'tanggal' => 'required',
        // ], [
        //     'id_user' => 'Harus Diisi',
        //     'id_kategori' => 'Harus Diisi',
        //     'slug_berita' => 'Harus Diisi',
        //     'judul_berita' => 'Harus Diisi',
        //     'ringkasan' => 'Harus Diisi',
        //     'isi' => 'Harus Diisi',
        //     'status_berita' => 'Harus Diisi',
        //     'jenis_berita' => 'Harus Diisi',
        //     'keywords' => 'Harus Diisi',
        //     'gambar' => 'Harus Diisi',
        //     'icon' => 'Harus Diisi',
        //     'hits' => 'Harus Diisi',
        //     'tanggal_post' => 'Harus Diisi',
        //     'tangagl_publish' => 'Harus Diisi',
        //     'tanggal' => 'Harus Diisi',
        // ]);

        $data = ([
            'id_user' => $request->id_user,
            'id_kategori' => $request->id_kategori,
            'judul_berita' => $request->judul_berita,
            'slug_berita' => Str::slug($request->judul_berita),
            'ringkasan' => $request->ringkasan,
            'isi' => $request->isi,
            'status_berita' => $request->status_berita,
            'jenis_berita' => $request->jenis_berita,
            'keyword' => $request->keyword,
            'gambar' => $request->gambar,
            'icon' => $request->icon,
            'hits' => 0,
            'tanggal_post' => $request->tanggal_publish,
            'tanggal_publish' => $request->tanggal_publish,
            'tanggal' => Carbon::now(),
        ]);


        dd($data);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
