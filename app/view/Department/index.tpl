{% extends '../Public/admin/base.tpl' %}

{% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>用户管理</cite></a><span lay-separator="">/</span>
        <a><cite>部门管理</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <a class="layui-btn" href="/department/add">新增部门</a>
        </div>
        <div class="layui-card-body">
            <!--<table id="demo" class="layui-table" lay-filter="test"></table>-->
            <table class="layui-table" lay-even lay-skin="nob">
                <thead>
                    <tr>
                        <th></th>
                        <th>ID</th>
                        <th>部门名称</th>
                        <th>所属公司</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    {% for item in depart %}
                    <tr>
                        <td><input type="radio" /></td>
                        <td>{{ item.id }}</td>
                        <td>{{ item.name }}</td>
                        <td>{{ item.company }}</td>
                        <td>
                            <a href="/department/edit?id={{ item.id }}">编辑</a>
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
    urlItemed('/department');
</script>
{% endblock %}