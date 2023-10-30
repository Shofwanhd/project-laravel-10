@extends('admin.layout.main')
@section('title')
    Pengguna Website
@endsection
@section('content')
    <div class="card-body">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-success mb-3" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-plus"></i> Tambah Baru
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <form method="POST" action="{{ route('user.store') }}">
                        @csrf
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Tambah Baru</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <div class="form-group row">
                                <label class="col-3">Nama Pengguna</label>
                                <div class="col-9">
                                    <input type="text" name="nama" class="form-control" placeholder="Nama user"
                                        value="" required="">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-3">Email</label>
                                <div class="col-9">
                                    <input type="email" name="email" class="form-control" placeholder="Email"
                                        value="" required="">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-3">Username</label>
                                <div class="col-9">
                                    <input type="text" name="username" class="form-control" placeholder="Username"
                                        value="" required="">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-3">Password</label>
                                <div class="col-9">
                                    <input type="text" name="password" class="form-control" placeholder="Password"
                                        value="" required="">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-3">Level</label>
                                <div class="col-9">
                                    <select name="akses_level" class="form-control">
                                        <option value="Admin">Admin</option>
                                        <option value="User">User</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i>
                                Close</button>
                            <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <table id="example1" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Level</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $data)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $data->nama }}</td>
                        <td>{{ $data->username }}</td>
                        <td>{{ $data->email }}</td>
                        <td>{{ $data->akses_level }}</td>
                        <td><a href="{{ route('user.show', $data) }}" class="btn btn-success btn-sm"><i
                                    class="fa fa-edit"></i></a>
                            <a href="{{ route('user.destroy', $data) }}" class="btn btn-dark btn-sm"
                                onclick="event.preventDefault(); document.getElementById('delete-form').submit();"><i
                                    class="fa fa-trash"></i></a>
                            <form id="delete-form" action="{{ route('user.destroy', $data) }}" method="POST"
                                style="display: none;">
                                @csrf
                                @method('DELETE')
                            </form>
                        </td>
                    </tr>
                @endforeach
                </tfoot>
        </table>
    </div>
@endsection
