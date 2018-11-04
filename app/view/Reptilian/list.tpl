{% extends '../Public/admin/base.tpl' %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>爬虫抓取</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <a href="/reptilian" class="layui-btn tab-btn">抓取数据</a>
        </div>
        <div class="layui-card-body">
            <table id="demo" class="layui-table" lay-filter="test"></table>
        </div>
    </div>
</div>

{% endblock %} {% block javascript %}
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    <!-- <a class="layui-btn layui-btn-xs" lay-event="edit">通过</a> -->
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    // 高亮导航栏
    urlItemed('/reptilian/lists');

    layui.use(['laypage', 'table', 'layer'], function() {
        var laypage = layui.laypage;
        var table = layui.table;
        var layer = layui.layer;

        table.render({
            elem: '#demo',
            height: 315,
            url: '/reptilian/page', //数据接口
            page: true, //开启分页
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
                        field: 'time',
                        widtth: '15%',
                        title: '发布时间',
                        sort: true
                    }, {
                        field: 'fun',
                        width: '28%',
                        title: '操作',
                        toolbar: '#barDemo'
                    }
                ]
            ],
            height: 500
        });

        table.on('tool(test)', function(obj) {
            let data = obj.data; //获得当前行数据
            let layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）

            if (layEvent === 'detail') { //查看
                layer.open({
                    type: 2,
                    title: `${data.title}`,
                    shadeClose: true,
                    shade: false,
                    maxmin: true, //开启最大化最小化按钮
                    area: ['893px', '600px'],
                    content: `/reptilian/detail?id=${data.id}`,
                    end: function() {
                        // var index = parent.layer.getFrameIndex(window.name);
                        // parent.location.reload();
                    }
                });
            } else if (layEvent === 'del') { //删除
                $.ajax({
                    url: '/reptilian/del',
                    type: 'get',
                    data: {
                        id: data.id
                    },
                    success(data) {
                        if (data.errorcode === 0 && data.result) {
                            layer.msg(data.msg, {
                                icon: 1,
                                time: 2000
                            }, function() {
                                location.reload();
                            });
                        } else {
                            layer.msg(data.msg, {
                                icon: 2,
                            })
                        }

                    }
                })
            } else if (layEvent === 'edit') { //编辑

            }
        });

        $('.tab-btn').click(event => {
            event.preventDefault();

            layer.open({
                type: 2,
                title: `抓取数据`,
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['893px', '600px'],
                content: `/reptilian/`,
                end: function() {
                    parent.location.reload();
                }
            });
        })

    });
</script>
{% endblock %}