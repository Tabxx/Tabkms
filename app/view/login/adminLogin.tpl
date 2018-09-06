<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>知识库管理系统(Manager)</title>
    <meta name="description" content="OneUI - Admin Dashboard Template &amp; UI Framework created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="/public/assets/css/bootstrap.min.css">

    <link rel="stylesheet" id="css-main" href="/public/assets/css/oneui.css">
    <link rel="stylesheet" href="/public/css/userlogin.css">
</head>
<body>
<div class="content overflow-hidden">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-4 col-lg-offset-4">
            <!-- Login Block -->
            <div class="block block-themed animated fadeIn">
                <div class="block-header bg-primary">
                    <ul class="block-options">
                        <li>
                            <a href="base_pages_reminder.html">忘记密码?</a>
                        </li>
                        <li>
                            <a href="base_pages_register.html" data-toggle="tooltip" data-placement="left" title="" data-original-title="新账号"><i class="si si-plus"></i></a>
                        </li>
                    </ul>
                    <h3 class="block-title">登录</h3>
                </div>
                <div class="block-content block-content-full block-content-narrow">
                    <!-- Login Title -->
                    <h1 class="h2 font-w600 push-30-t push-5">Tab</h1>
                    <p>欢迎使用Tab企业知识库管理系统</p>
                    <!-- END Login Title -->

                    <form class="js-validation-login form-horizontal push-30-t push-50" action="/adminLogin" method="post" novalidate="novalidate">
                        <div class="form-group">
                            <div class="col-xs-12">
                                <div class="form-material form-material-primary floating">
                                    <input value="{{ res.result.username }}" class="form-control" type="text" id="login-username" name="username">
                                    <label for="login-username">用户名</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <div class="form-material form-material-primary floating">
                                    <input value="" class="form-control" type="password" id="login-password" name="password">
                                    <label for="login-password">密码</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <label class="css-input switch switch-sm switch-primary">
                                    <input type="checkbox" id="login-remember-me" name="login-remember-me"><span></span> 记住我?
                                </label>
                                <div class="errMsg">{{ res.msg }}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12 col-sm-6 col-md-4">
                                <button class="btn btn-block btn-primary" type="submit"><i class="si si-login pull-right"></i> 登录</button>
                            </div>
                        </div>
                    </form>
                    <!-- END Login Form -->
                </div>
            </div>
            <!-- END Login Block -->
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
</body>
</html>