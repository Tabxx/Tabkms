{% extends '../Public/admin/base.tpl' %}

{% block css %}
<style>
    .tab-btn{
        margin: 15px 0 0 0;
    }
</style>
{% endblock %}

{% block main %}

<div class="layui-row">
    <div class="layui-col-md12">
        <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">知识库管理</a>
            <a><cite>知识标签</cite></a>
        </span>
    </div>
</div>

<div class="layui-row">
    <div class="layui-col-md12 tab-btn">
        <a class="layui-btn" href="/tags/add">新增标签</a>
    </div>
</div>

<div class="layui-row">
    <div class="layui-col-md12">

        <table id="demo" class="layui-table" lay-filter="test"></table>

        <div id="page"></div>
    </div>
</div>
{% endblock %}

{% block javascript %}
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>

    urlItemed('/tags');

    layui.use(['laypage', 'table'], function(){
        var laypage = layui.laypage;
        var table = layui.table;

        table.render({
            elem: '#demo'
            ,height: 315
            ,url: '/pageTags' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {field: 'input', title: '', width: '10%', type: 'checkbox', sort: true, fixed: 'left'}
                ,{field: 'id',width: '30%', title: 'ID', }
                ,{field: 'name',width: '30%', title: '标签名称',  sort: true}
                ,{field: 'fun',width: '28%', title: '操作', toolbar: '#barDemo'}
            ]]
            ,height: 473
        });

    });
</script>


{% endblock %}