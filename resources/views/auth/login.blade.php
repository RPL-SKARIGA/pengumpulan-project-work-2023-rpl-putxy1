<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>


    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- App favicon -->
    <title>Dapur Mama | Login</title>
    <link rel="shortcut icon" href="/dapuranita/logo1.png">



    <!-- App css -->
    <link href="/metrica/dist/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/metrica/dist/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="/metrica/dist/assets/css/app.min.css" rel="stylesheet" type="text/css" />

</head>

<body class="auth-page card-bg d-flex align-items-center">


    <!-- Log In page -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="card-body p-0">
                            <div class="text-center p-3">
                                <a href="index.html" class="logo logo-admin">
                                    <img src="/dapuranita/logo1.png" height="50" alt="logo" class="auth-logo">
                                </a>
                                <h4 class="mt-3 mb-1 fw-semibold font-18">Selamat Datang Di Dapur Mama</h4>

                            </div>
                        </div>
                        <!--end card-body-->
                        <div class="card-body pt-0">
                            @if (session('error'))
                                <div class="alert alert-danger" role="alert">
                                    {{ session('error') }}
                                </div>
                            @endif
                            <form method="POST" action="{{ route('login') }}">
                                @csrf
                                <div class="form-group mb-2">
                                    <label for="email" class="form-label">Email Akun</label>
                                    <input id="email" type="email"
                                        class="form-control @error('email') is-invalid @enderror" name="email"
                                        placeholder="Tulis Email" required autocomplete="email" autofocus>
                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                                <!--end form-group-->

                                <div class="form-group">
                                    <label class="form-label" for="userpassword">Password</label>
                                    <input id="password" type="password"
                                        class="form-control @error('password') is-invalid @enderror" name="password"
                                        placeholder="Tulis Password" required autocomplete="current-password">

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                                <!--end form-group-->
                                <!--end form-group-->

                                <div class="form-group mb-0 row">
                                    <div class="col-12">
                                        <div class="d-grid mt-3">
                                            <button class="btn btn-primary" type="submit">Log In <i
                                                    class="fas fa-sign-in-alt ms-1"></i></button>
                                        </div>
                                    </div>
                                    <!--end col-->
                                </div>
                                <!--end form-group-->
                            </form>
                            <!--end form-->
                            <div class="m-3 text-center text-muted">
                                <a class="nav-link" href="/">Kembali</a>
                                    
                                <p class="mb-0">Belum Memiliki Akun ? <a href="{{ route('register') }}"
                                        class="text-primary ms-2">Daftar Gratis</a></p>
                            </div>
                        </div>
                        <!--end card-body-->
                    </div>
                    <!--end card-->
                </div>
            </div>
        </div>

    <!--end col-->


    <script src="/metrica/dist/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/metrica/dist/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="/metrica/dist/assets/libs/feather-icons/feather.min.js"></script>
    <!-- App js -->
    <script src="/metrica/dist/assets/js/app.js"></script>

</body>

</html>
