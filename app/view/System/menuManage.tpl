{% extends '../Public/admin/base.tpl' %}

{% block main %}

<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>系统管理</cite></a><span lay-separator="">/</span>
        <a><cite>菜单管理</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <a class="layui-btn" href="/homemenu/add?type={{ type }}">新增菜单</a>
        </div>
        <div class="layui-card-body">
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
</div>

{% endblock %}

{% block javascript %}
<script>
    urlItemed(window.location.pathname + window.location.search);
</script>
{% endblock %}