@extends('layouts.app')

@section('content')
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/assets/admin/plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="/assets/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- jQuery -->
    <script src="/assets/admin/plugins/jquery/jquery.min.js"></script>
    <!-- Theme style -->
    <link rel="stylesheet" href="/assets/admin/dist/css/adminlte.min.css">
    <!-- SWEETALERT -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>

    <body class="hold-transition login-page" style="background-color: #2596be;">
        <div class="login-box" style="min-width: 35% !important; ">

            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body" style="border-radius: 10px;">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="login-logo">
                            <div class="row">
                                <div class="col-md-3">

                                </div>
                                <div class="col-md-9 text-left">

                                </div>
                            </div>
                        </div>
                        <hr>
                        <p class="login-box-msg">Masukkan email dan password</p>

                        <div class="input-group mb-3">
                            <input id="username" type="text" class="form-control @error('email') is-invalid @enderror"
                                name="username" value="{{ old('email') }}" required autocomplete="email" autofocus>

                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input id="password" type="password"
                                class="form-control @error('password') is-invalid @enderror" name="password" required
                                autocomplete="current-password">

                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <div class="icheck-primary">
                                    <input type="checkbox" id="remember">
                                    <label for="remember">
                                        Remember Me
                                    </label>
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                            </div>
                            <!-- /.col -->
                        </div>

                        <hr>
                        <p class="mb-1 text-center">
                    </form>
                </div>
                <!-- /.login-card-body -->
            </div>
        </div>
        <!-- /.login-box -->
    @endsection
