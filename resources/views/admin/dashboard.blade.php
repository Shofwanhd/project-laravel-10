@extends('admin.layout.main')
@section('title')
    Dashboard Aplikasi
@endsection
@section('content')
    <div class="alert alert-info">
        <h4>Hai <em class="text-warning">Saya Cakep</em></h4>
        <hr>
        <p>Selamat datang di website <strong>Java Web Media</strong>. Website ini adalah sample hasil belajar di Java Web
            Media <a href="https://javawebmedia.com">www.javawebmedia.com</a>. Semoga bermanfaat yah.</p>
    </div>
    {{-- Konten --}}
    <!-- Morris chart - Sales -->
    <div class="chart tab-pane active" id="revenue-chart" style="position: relative; height: 300px;">

        {{-- card content --}}
        <div class="row">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                    <span class="info-box-icon bg-info elevation-1"><i class="fas fa-newspaper"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Berita/Profil/Layanan</span>
                        <span class="info-box-number">
                            {{ $berita }} <small>Konten</small>
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-thumbs-up"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Clients</span>
                        <span class="info-box-number">{{ $client }}</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix hidden-md-up"></div>

            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-users"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Staff</span>
                        <span class="info-box-number">{{ $staff }}</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-lock"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Pengguna Website</span>
                        <span class="info-box-number">{{ $users }}</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
        </div>
        {{-- End card content --}}
        {{-- card content --}}
        <div class="row">
            <!-- /.col -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-download"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">File Download</span>
                        <span class="info-box-number">7</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                    <span class="info-box-icon bg-info elevation-1"><i class="fas fa-images"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Galeri &amp; Banner</span>
                        <span class="info-box-number">
                            {{ $galeri }} <small>Konten</small>
                        </span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-danger elevation-1"><i class="fab fa-youtube"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Video Youtube</span>
                        <span class="info-box-number">{{ $video }}</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix hidden-md-up"></div>

            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-tags"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Kategori Berita</span>
                        <span class="info-box-number">{{ $kategori }}</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>

        </div>
        {{-- End card content --}}
    </div>
@endsection
