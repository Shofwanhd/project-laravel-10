@extends('admin.layout.main')
@section('title')
    Berita, Profil dan Layanan ({{ $berita }})
@endsection
@section('content')
    <p>
        <a href="{{ route('berita.create') }}" class="btn btn-success">
            <i class="fa fa-plus"></i> Tambah Baru
        </a>
    </p>

    <div class="card-body">
        <table id="example1" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Gambar</th>
                    <th>Judul</th>
                    <th>Kategori-Jenis</th>
                    <th>Author-Status</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $data)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>Gambar</td>
                        <td><a style="text-overflow: ellipsis"
                                href="http://compro-ci4.javawebmedia.co.id/admin/berita/edit/26">
                                {{ $data->judul_berita }} </a>
                            <small>
                                <br><i class="fa fa-eye"></i> Hits: {{ $data->hits }} <br><i class="fa fa-home"></i> Icon:
                                <i class="{{ $data->icon }}"></i>
                                <br><i class="fa fa-calendar-check"></i> Publish: {{ $data->tanggal_publish }} <br><i
                                    class="fa fa-calendar"></i> Updated: {{ $data->tanggal }} </small>
                        </td>
                        <td>
                            <small>
                                <i class="fa fa-tags"></i> <a
                                    href="http://compro-ci4.javawebmedia.co.id/admin/berita/kategori/7">
                                    {{ $data->id_kategori }}
                                </a>
                                <br><i class="fa fa-home"></i> <a
                                    href="http://compro-ci4.javawebmedia.co.id/admin/berita/jenis_berita/Berita">
                                    {{ $data->jenis_berita }} </a>
                            </small>
                        </td>
                        <td>
                            <small>
                                <i class="fa fa-user"></i> <a
                                    href="http://compro-ci4.javawebmedia.co.id/admin/berita/author/1">
                                    {{ $data->id_user }} </a>
                                <br>
                                <i class="fa fa-check"></i> <a
                                    href="http://compro-ci4.javawebmedia.co.id/admin/berita/status_berita/Publish">
                                    {{ $data->status_berita }} </a>
                            </small>
                        </td>
                        <td>
                            <a href="http://compro-ci4.javawebmedia.co.id/berita/read/das" class="btn btn-info btn-sm"
                                target="_blank"><i class="fa fa-eye"></i> Baca</a>
                            <a href="http://compro-ci4.javawebmedia.co.id/admin/berita/edit/26"
                                class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                            <a href="http://compro-ci4.javawebmedia.co.id/admin/berita/delete/26"
                                class="btn btn-dark btn-sm" onclick="confirmation(event)"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>

        </table>
    </div>
@endsection
