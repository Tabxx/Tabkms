<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>KMS</title>
    <meta name="description" content="OneUI - Admin Dashboard Template &amp; UI Framework created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="/public/assets/img/favicons/favicon.png">
    <link rel="icon" type="image/png" href="/public/assets/img/favicons/favicon-16x16.png" sizes="16x16">
    <link rel="icon" type="image/png" href="/public/assets/img/favicons/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="/public/assets/img/favicons/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="/public/assets/img/favicons/favicon-160x160.png" sizes="160x160">
    <link rel="icon" type="image/png" href="/public/assets/img/favicons/favicon-192x192.png" sizes="192x192">
    <link rel="apple-touch-icon" sizes="57x57" href="/public/assets/img/favicons/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/public/assets/img/favicons/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/public/assets/img/favicons/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/public/assets/img/favicons/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/public/assets/img/favicons/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/public/assets/img/favicons/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/public/assets/img/favicons/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/public/assets/img/favicons/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/public/assets/img/favicons/apple-touch-icon-180x180.png">
    <link rel="stylesheet" href="/public/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/public/assets/css/oneui.css">

    <link rel="stylesheet" id="css-main" href="/public/css/userlogin.css">
</head>
<body>
<div class="bg-white">
    <div class="content content-boxed overflow-hidden">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4">
                <div class="push-30-t push-50 animated fadeIn">
                    <!-- Login Title -->
                    <div class="text-center">
                        <i class="fa fa-2x fa-circle-o-notch text-primary"></i>
                        <p class="text-muted push-15-t">欢迎使用Tab企业知识库管理系统</p>
                    </div>
                    <!-- END Login Title -->

                    <form action="/login" method="post" class="js-validation-login form-horizontal push-30-t" novalidate="novalidate">
                        <div class="form-group">
                            <div class="col-xs-12">
                                <div class="form-material form-material-primary floating">
                                    <input class="form-control" value="{{ result.username }}" type="text" id="login-username" name="username">
                                    <label for="login-username">用户名</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <div class="form-material form-material-primary floating">
                                    <input class="form-control" value="{{ result.password }}" type="password" id="login-password" name="password">
                                    <label for="login-password">密码</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-8">
                                <div class="errMsg">{{ msg }}</div>
                            </div>
                        </div>
                        <div class="form-group push-30-t">
                            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                                <button id="login" class="btn btn-sm btn-block btn-primary">登录</button>
                            </div>
                        </div>
                    </form>
                    <!-- END Login Form -->
                </div>
            </div>
        </div>
    </div>
</div>






<script src="/public/assets/js/core/jquery.min.js"></script>
<script src="/public/assets/js/core/bootstrap.min.js"></script>
<script src="/public/assets/js/core/jquery.slimscroll.min.js"></script>
<script src="/public/assets/js/core/jquery.scrollLock.min.js"></script>
<script src="/public/assets/js/core/jquery.appear.min.js"></script>
<script src="/public/assets/js/core/jquery.countTo.min.js"></script>
<script src="/public/assets/js/core/jquery.placeholder.min.js"></script>
<script src="/public/assets/js/core/js.cookie.min.js"></script>
<script src="/public/assets/js/app.js"></script>
<script src="/public/assets/js/pages/base_comp_animations.js"></script>
<script>

</script>
</body>
</html>