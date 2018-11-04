{% extends '../Public/admin/base.tpl' %} {% block css %}
<style>
    .block-content img {
        max-width: 100%;
        margin: 0 auto;
    }
</style>
{% endblock %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>内容管理</cite></a><span lay-separator="">/</span>
        <a><cite>详情</cite></a>
    </div>
</div>

<div class="layui-fluid" id="LAY-app-message-detail">
    <div class="layui-card layuiAdmin-msg-detail">
        <div class="layui-card-header">
            <h1>{{ detail.title }}</h1>
            <p> <span>发布时间：{{ detail.createdate }}</span> <span>作者：{{ detail.author }}</span></p>
        </div>
        <div class="layui-card-body layui-text">
            <div class="layadmin-text block-content">
                {{ detail.content | safe }}
            </div>
            <div style="padding-top: 30px;">

            </div>
        </div>
    </div>
</div>

{% endblock %}