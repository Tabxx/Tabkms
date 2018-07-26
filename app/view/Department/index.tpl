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
            <a href="">用户管理</a>
            <a><cite>部门管理</cite></a>
        </span>
    </div>
</div>

<div class="layui-row">
    <div class="layui-col-md12 tab-btn">
        <a class="layui-btn" href="/department/add">新增部门</a>
    </div>
</div>

<div class="layui-row">
    <div class="layui-col-md12">

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
{% endblock %}

{% block javascript %}
<script>
    urlItemed('/department');
</script>
{% endblock %}