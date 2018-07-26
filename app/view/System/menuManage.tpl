{% extends '../Public/admin/base.tpl' %}

{% block css %}
<style>
.tab-btn{
    margin: 15px 0;
}
</style>

{% endblock %}

{% block main %}

<div class="layui-row">
    <div class="layui-col-md12">
        <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">系统管理</a>
            <a><cite>菜单管理</cite></a>
        </span>
    </div>
</div>

<div class="layui-row">
    <div class="layui-col-md12 tab-btn">
        <a class="layui-btn" href="/homemenu/add?type={{ type }}">新增菜单</a>
    </div>
</div>

<div class="layui-row">
    <div class="layui-col-md12">

        <table class="layui-table" lay-even lay-skin="nob">
            <thead>
                <tr>
                    <th></th>
                    <th>ID</th>
                    <th>菜单名称</th>
                    <th>父级菜单ID</th>
                    <th>URL</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                {% for item in menus %}
                <tr>
                    <td><input type="radio" /></td>
                    <td>{{ item.id }}</td>
                    <td>{{ item.name }}</td>
                    <td>{{ item.pid }}</td>
                    <td>{{ item.url }}</td>
                    <td>
                        <a href="/homemenu/edit?id={{ item.id }}">编辑</a>
                        <a href="">删除</a>
                    </td>
                </tr>
                {% endfor %}
            </tbody>
        </table>
    </div>
</div>
{% endblock %}

{% block javascript %}
<script>
    urlItemed(window.location.pathname + window.location.search);
</script>
{% endblock %}