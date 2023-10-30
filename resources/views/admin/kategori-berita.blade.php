@extends('admin.layout.main')
@section('title')
    Kategori Berita, Profil & Layanan 
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
                    <form method="POST" action="{{ route('kategori-berita.store') }}">
                        @csrf
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Tambah Baru</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group row">
                                <label class="col-3">Nama Kategori</label>
                                <div class="col-9">
                                    <input type="text" name="nama_kategori" class="form-control"
                                        placeholder="Nama kategori" value="" required="">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-3">Nomor urut Kategori</label>
                                <div class="col-9">
                                    <input type="number" name="urutan" class="form-control"
                                        placeholder="Nomor urut kategori" value="" required="">
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
                    <th>Slug</th>
                    <th>Urutan</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $data)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $data->nama_kategori }}</td>
                        <td>{{ $data->slug_kategori }}</td>
                        <td>{{ $data->urutan }}</td>
                        <td><a href="#" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                            <a href="#" class="btn btn-dark btn-sm"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Slug</th>
                    <th>Urutan</th>
                    <th></th>
                </tr>
            </tfoot>
        </table>
    </div>
@endsection
