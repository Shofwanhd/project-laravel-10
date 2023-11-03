@extends('admin.layout.main')
@section('title')
    Tambah Berita
@endsection
@section('content')
    <!-- DEBUG-VIEW START 1 APPPATH/Views/admin/berita/tambah.php -->
    <form action="http://compro-ci4.javawebmedia.co.id/admin/berita/tambah" method="post" accept-charset="utf-8"
        enctype="multipart/form-data">
        <input type="hidden" name="csrf_test_name" value="e7e342ae70b567793d3e92f3860bd16b">
        <div class="form-group row">
            <label class="col-md-2">Judul Berita</label>
            <div class="col-md-10">
                <input type="text" name="judul_berita" class="form-control" value="" required="">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Upload Gambar Berita</label>
            <div class="col-md-10">
                <input type="file" name="gambar" class="form-control" value="">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Kategori, Jenis &amp; Status</label>
            <div class="col-md-2">
                <select name="id_kategori" class="form-control">
                    <option value="6">
                        Kursus Web </option>
                    <option value="5">
                        Web Programming </option>
                    <option value="4">
                        Updates </option>
                    <option value="3">
                        Java Web Media </option>
                    <option value="2">
                        Berita </option>
                    <option value="1">
                        Web Design </option>
                </select>
                <small class="text-secondary">Kategori</small>
            </div>
            <div class="col-md-2">
                <select name="jenis_berita" class="form-control">
                    <option value="Berita">Berita</option>
                    <option value="Layanan">Layanan</option>
                    <option value="Profil">Profil</option>
                </select>
                <small class="text-secondary">Jenis konten</small>
            </div>
            <div class="col-md-2">
                <select name="status_berita" class="form-control">
                    <option value="Publish">Publish</option>
                    <option value="Draft">Draft</option>
                </select>
                <small class="text-secondary">Status publikasi</small>
            </div>
            <div class="col-md-2">
                <input type="text" name="icon" class="form-control" value="">
                <small class="text-secondary">Icon <a href="https://fontawesome.com/icons"
                        target="_blank">Fontawsome</a></small>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Tanggal dan jam Publikasi</label>
            <div class="col-md-4">
                <input type="text" name="tanggal_publish" class="form-control tanggal hasDatepicker" value="31-10-2023"
                    id="dp1698690164784">
                <small class="text-secondary">Format <strong>dd-mm-yyyy</strong>. Misal: 31-10-2023</small>
            </div>
            <div class="col-md-2">
                <input type="text" name="jam" class="form-control jam" value="01:22:44">
                <small class="text-secondary">Format <strong>HH:MM:SS</strong>. Misal: 01:22:44</small>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Ringkasan</label>
            <div class="col-md-10">
                <textarea name="ringkasan" class="form-control"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Isi Berita</label>
            <div class="col-md-10">
                <textarea id="summernote" name="editordata"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Keyword Berita (untuk SEO Google)</label>
            <div class="col-md-10">
                <textarea name="keywords" class="form-control"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2"></label>
            <div class="col-md-10">
                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
            </div>
        </div>

    </form>
@endsection
