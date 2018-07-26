<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>知识库管理系统(Manager)</title>

    <link rel="stylesheet" href="/public/layui/css/layui.css">
    {% block css %}
    {% endblock %}
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    {% block header %}
        {% include './header.tpl' %}
    {% endblock %}

    {% block slider %}
        {% include './slider.tpl' %}
    {% endblock %}

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            {% block main %}

            {% endblock %}
        </div>
    </div>




    {% block footer %}
        {% include './footer.tpl' %}
    {% endblock %}

</div>

{% block modal %}
{% endblock %}

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
<script src="/public/layui/layui.all.js"></script>

<script>

    // 高亮左侧菜单栏
    let urlItemed = (url) => {
        $(".layui-nav-tree a").each(function() {
           if($(this).attr('href') === url){
               $(this).parents(".layui-nav-item").addClass("layui-nav-itemed");
               $(this).parent("dd").addClass("layui-this");
           }
        });
    }
</script>
{%  block javascript %}

{% endblock %}
</body>
</html>