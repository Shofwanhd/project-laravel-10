@extends('admin.layout.main')
@section('title')
    Edit Pengguna : {{ $data->nama }}
@endsection
@section('content')
    <div class="card-body" style="min-height: 500px;">

        <form action="{{ route('user.update', $data) }}" method="POST" accept-charset="utf-8">
            @csrf
            @method('PUT')
            <input type="hidden" name="csrf_test_name" value="23cc81dcd3e65424db96a7c2f6bc4e35">
            <div class="form-group row">
                <label class="col-3">Nama Pengguna</label>
                <div class="col-9">
                    <input type="text" name="nama" class="form-control" placeholder="Nama user"
                        value="{{ $data->nama }}" required="">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-3">Email</label>
                <div class="col-9">
                    <input type="email" name="email" class="form-control" placeholder="Email"
                        value="{{ $data->email }}" required="">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-3">Username</label>
                <div class="col-9">
                    <input type="text" name="username" class="form-control" placeholder="Username"
                        value="{{ $data->username }}" readonly="">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-3">Password</label>
                <div class="col-9">
                    <input type="text" name="password" class="form-control" placeholder="Password" value="">
                    <small class="text-danger">Minimal 6 karakter dan maksimal 32 karakter atau biarkan kosong</small>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-3">Level</label>
                <div class="col-9">
                    <select name="akses_level" class="form-control">
                        @if ($data->akses_level == 'Admin')
                            <option value="Admin" selected>Admin</option>
                            <option value="User">User</option>
                        @else
                            <option value="Admin">Admin</option>
                            <option value="User" selected>User</option>
                        @endif
                    </select>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-3"></label>
                <div class="col-9">
                    <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
                </div>
            </div>

        </form>
    </div>
@endsection
