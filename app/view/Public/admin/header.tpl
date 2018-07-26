<div class="layui-header">
    <a href="index.html"><div class="layui-logo">Tab 知识库管理系统</div></a>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <img src="/public/pic/icon/main.jpg" class="layui-nav-img">
                {{ ctx.session.user.username }}
            </a>
            <dl class="layui-nav-child">
                <dd><a href="">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="">退出登录</a></li>
    </ul>
</div>