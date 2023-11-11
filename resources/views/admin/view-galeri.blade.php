@extends('admin.layout.main')
@section('title')
    Tambah Berita
@endsection
@section('content')
    <p>
        <a href="" class="btn btn-success">
            <i class="fa fa-plus"></i> Tambah Baru
        </a>
    </p>
    <table class="table table-bordered" id="example1">
        <thead>
            <tr>
                <th width="5%">No</th>
                <th width="8%">Gambar</th>
                <th width="45%">Judul</th>
                <th width="15%">Kategori &amp; Jenis</th>
                <th width="15%">Author</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            @foreach ($galeri as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        @if ($item->gambar == '')
                            {{ '-' }}
                        @else
                            <img src="{{ asset('assets/upload/image/thumbs/' . $item->gambar) }}" class="img img-thumbnail">
                        @endif
                    </td>
                    <td>{{ $item->judul_galeri }}
                        <small>
                            <br><i class="fa fa-link"></i> Link: {{ $item->website }}
                            <br><i class="fa fa-tasks"></i> Teks Banner: {{ $item->status_text }}
                            <br><i class="fa fa-image"></i> {{ asset('assets/upload/image/' . $item->gambar) }}
                        </small>
                    </td>
                    <td><small><i class="fa fa-tags"></i>
                            {{-- {{ $item->nama_kategori_galeri }} --}}
                            <br><i class="fa fa-home"></i>
                            {{-- {{ $item->jenis_galeri }} --}}
                        </small></td>
                    <td>
                        {{-- {{ $item->nama }} --}}
                    </td>
                    <td>

                        <a href="" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                        <a href="" class="btn btn-dark btn-sm" onclick="confirmation(event)"><i
                                class="fa fa-trash"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
