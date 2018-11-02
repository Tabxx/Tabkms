{% extends '../Public/admin/base.tpl' %}

{% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>文档审核</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <!--<div class="layui-card-header layuiadmin-card-header-auto">
            
        </div>-->
        <div class="layui-card-body">
            <table id="demo" class="layui-table" lay-filter="test"></table>
            <div id="page"></div>
        </div>
    </div>
</div>
{% endblock %}

{% block javascript %}
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">通过</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
    urlItemed('/examine');

    layui.use(['laypage', 'table'], function () {
        var laypage = layui.laypage;
        var table = layui.table;

        table.render({
            elem: '#demo',
            height: 315,
            url: '/examinePage' //数据接口
                ,
            page: true //开启分页
                ,
            cols: [
                [ //表头
                    {
                        field: 'input',
                        title: '',
                        width: '5%',
                        type: 'checkbox',
                        sort: true,
                        fixed: 'left'
                    }, {
                        field: 'title',
                        width: '30%',
                        title: '标题',
                    }, {
                        field: 'author',
                        width: '8%',
                        title: '作者',
                        sort: true
                    }, {
                        field: 'createdate',
                        widtth: '15%',
                        title: '发布时间',
                        sort: true
                    }, {
                        field: 'status',
                        widtth: '5%',
                        title: '状态',
                        sort: true
                    }, {
                        field: 'fun',
                        width: '28%',
                        title: '操作',
                        toolbar: '#barDemo'
                    }
                ]
            ],
            height: 473
        });

        table.on('tool(test)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象

            if (layEvent === 'detail') { //查看
                location.href = "/examine/detail?id=" + data.id;
            } else if (layEvent === 'del') { //删除

            } else if (layEvent === 'edit') { //编辑

            }
        });

    });
</script>
{% endblock %}