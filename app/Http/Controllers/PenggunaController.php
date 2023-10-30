<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PenggunaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = User::all();
        return view('admin.pengguna-website', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required|max:50',
            'username' => 'required|max:32',
            'email' => 'required',
            'password' => 'required|max:64',
            'akses_level' => 'required',
        ], [
            'nama' => 'Nama Harus diisi',
            'username' => 'Username Harus diisi',
            'email' => 'Email Harus diisi',
            'password' => 'Password Harus diisi',
            'akses_level' => 'Level Harus diisi',
        ]);

        User::create([
            'nama' => $request->nama,
            'username' => $request->username,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'akses_level' => $request->akses_level,
            'tanggal_post' => Carbon::now(),
            'tanggal' => Carbon::now(),

        ]);

        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id_user)
    {
        $data = User::find($id_user);

        return view('admin.edit-user', compact('data'));
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
    public function update(Request $request, $id_user)
    {
        $this->validate($request, [
            'nama' => 'required|max:50',
            'username' => 'required|max:32',
            'email' => 'required',
            'password' => 'max:64',
            'akses_level' => 'required',
        ], [
            'nama' => 'Nama Harus diisi',
            'username' => 'Username Harus diisi',
            'email' => 'Email Harus diisi',
            'password' => 'Password Harus diisi',
            'akses_level' => 'Level Harus diisi',
        ]);

        $password = User::where('id_user', $id_user)->get('password');

        if ($request->password == null) {
            $update = [
                "nama" => $request->nama,
                "username" => $request->username,
                "email" => $request->email,
                "password" => $password,
                "akses_level" => $request->akses_level,
            ];
        } else {
            $update = [
                "nama" => $request->nama,
                "username" => $request->username,
                "email" => $request->email,
                "password" => $request->password,
                "akses_level" => $request->akses_level,
            ];
        }

        // dd($update);
        User::where('id_user', $id_user)->update($update);

        return redirect('admin/user');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id_user)
    {
        User::destroy($id_user);

        return redirect('admin/user');
    }
}
