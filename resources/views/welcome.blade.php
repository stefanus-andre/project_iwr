<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Enzo admin is super flexible, powerful, clean & modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Enzo admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="../assets/images/favicon/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../assets/images/favicon/favicon.png" type="image/x-icon">
    <title>Internal Work Request - Gacoan</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <!-- CSS Files -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/font-awesome.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/icofont.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/vendors/themify.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/vendors/flag-icon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/vendors/feather-icon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/vendors/bootstrap.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/style.css')}}">
    <link id="color" rel="stylesheet" href="{{asset('/assets/css/color-1.css')}}" media="screen">
    <link rel="stylesheet" type="text/css" href="{{asset('/assets/css/responsive.css')}}">
</head>
<body>
    <!-- Loader starts -->
    <div class="loader-wrapper">
        <div class="loader"></div>
    </div>
    <!-- Loader ends -->

    <!-- Login page start -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-7">
                <img class="bg-img-cover bg-center" src="../assets/images/login/2.jpg" alt="loginpage">
            </div>
            <div class="col-xl-5 p-0">
                <div class="login-card">
                    <div>
                        <div>
                            <a class="logo" href="index.html">
                                <img class="img-fluid for-light" src="../assets/images/logo/login.png" alt="loginpage">
                            </a>
                        </div>
                        <div class="login-main">
                            <form class="theme-form" method="POST" action="{{route('auth.login')}}">
                                @csrf
                                <h4 class="text-center">Sign in to account</h4>
                                <p class="text-center">Enter your email & password to login</p>

                                <div class="form-group">
                                    <label class="col-form-label">Employee ID</label>
                                    <input class="form-control" type="text" name="username" required="">
                                </div>

                                <div class="form-group">
                                    <label class="col-form-label">Password</label>
                                    <div class="form-input position-relative">
										<input class="form-control" id="password" type="password" name="password" required="">
										<div class="show-hide" id="togglePassword">
											<span class="show"></span>
										</div>
									</div>
                                </div>
								<script>
									const togglePassword = document.getElementById('togglePassword');
									const passwordInput = document.getElementById('password');
									togglePassword.addEventListener('click', function () {
										// Toggle the type attribute
										const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
										passwordInput.setAttribute('type', type);
										// Toggle the eye icon
										this.querySelector('.show').textContent = type === 'password' ? '' : '';
									});
								</script>

                                <div class="form-group mb-0">
                                    <div class="checkbox p-0">
                                        <input id="checkbox1" type="checkbox">
                                        <label class="text-muted" for="checkbox1">Remember password</label>
                                    </div>
                                    <a class="link" href="forget-password.html">Forgot password?</a>
                                    <div class="text-end mt-3">
                                        <button class="btn btn-primary btn-block w-100" type="submit">Sign in</button>
                                    </div>
                                </div>
                                <div class="login-social-title">
                                    <h6>Or Sign in with</h6>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Latest jQuery -->
    <script src="{{asset('/assets/js/jquery-3.6.0.min.js')}}"></script>
    <!-- Bootstrap JS -->
    <script src="{{asset('/assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
    <!-- Feather icon JS -->
    <script src="{{asset('/assets/js/icons/feather-icon/feather.min.js')}}"></script>
    <script src="{{asset('/assets/js/icons/feather-icon/feather-icon.js')}}"></script>
    <!-- Config JS -->
    <script src="{{asset('/assets/js/config.js')}}"></script>
    <!-- Theme JS -->
    <script src="{{asset('/assets/js/script.js')}}"></script>
</body>
</html>
