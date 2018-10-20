<!DOCTYPE html>
<!--[if IE 9]>         <html class="ie9 no-focus" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-focus" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>知识库管理系统</title>
    <meta name="description" content="OneUI - Admin Dashboard Template &amp; UI Framework created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="/public/assets/css/bootstrap.min.css">
    <link rel="stylesheet" id="css-main" href="/public/assets/css/oneui.css"> {% block css %} {% endblock %}

    <!-- Page JS Plugins CSS -->
    <link rel="stylesheet" href="/public/assets/js/plugins/slick/slick.min.css">
    <link rel="stylesheet" href="/public/assets/js/plugins/slick/slick-theme.min.css">
    <link rel="stylesheet" href="/public/assets/js/plugins/sweetalert2/sweetalert2.min.css">

    <!-- Bootstrap and OneUI CSS framework -->
    <link rel="stylesheet" href="/public/layui/css/layui.css">

    <style>
        .my-nav a.nav-submenu:before {
            display: none;
        }
        
        .tab-search .input-group-addon {
            padding: 0;
        }
    </style>

</head>

<body>
    <div id="page-container" class="sidebar-l sidebar-o side-scroll header-navbar-fixed">

        <!-- Sidebar -->
        <nav id="sidebar">
            {% block slider %} {% include './slider.tpl' %} {% endblock %}
        </nav>
        <!-- ./Sidebar -->

        <!--header-->
        <header id="header-navbar" class="content-mini content-mini-full">
            {% block header %} {% include './header.tpl' %} {% endblock %}
        </header>
        <!--./header-->

        <!--main-->
        <main id="main-container" style="position: relative">
            <!--主体内容-->
            {% block body %} {% endblock %}
            <!--./主体内容-->
        </main>
        <!--./main-->

        <!-- Footer -->
        <footer id="page-footer">
            {% block footer %} {% include './footer.tpl' %} {% endblock %}
        </footer>
        <!-- ./Footer -->

        {% block modal %} {% endblock %}

    </div>

    <!-- OneUI Core JS: jQuery, Bootstrap, slimScroll, scrollLock, Appear, CountTo, Placeholder, Cookie and App.js -->
    <script src="/public/assets/js/core/jquery.min.js"></script>
    <script src="/public/assets/js/core/bootstrap.min.js"></script>

    <script src="/public/assets/js/core/jquery.slimscroll.min.js"></script>
    <script src="/public/assets/js/core/jquery.scrollLock.min.js"></script>
    <script src="/public/assets/js/core/jquery.appear.min.js"></script>
    <script src="/public/assets/js/core/jquery.countTo.min.js"></script>
    <script src="/public/assets/js/core/jquery.placeholder.min.js"></script>
    <script src="/public/assets/js/core/js.cookie.min.js"></script>
    <script src="/public/assets/js/app.js"></script>

    <!-- Page JS Plugins -->
    <script src="/public/assets/js/plugins/bootstrap-notify/bootstrap-notify.min.js"></script>
    <script src="/public/assets/js/plugins/sweetalert2/es6-promise.auto.min.js"></script>
    <script src="/public/assets/js/plugins/sweetalert2/sweetalert2.min.js"></script>

    <!-- Layui JS Code -->
    <script src="/public/layui/layui.all.js"></script>

    <script>
        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function() {
            var element = layui.element;

            //…
        });

        jQuery(function() {
            // Init page helpers (Slick Slider plugin)
            App.initHelpers(['slick', 'notify']);
        });

        sweetAlert();
    </script>
    {% block javascript %} {% endblock %}
</body>

</html>