{% extends '../Public/admin/base.tpl' %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>内容管理</cite></a>
    </div>
</div>


<div class="layui-fluid">
    <div class="layui-row">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body">
                    <table id="content" class="layui-hide" lay-filter="test"></table>
                </div>
            </div>
        </div>
    </div>
</div>

{% endblock %} {% block javascript %}
<script type="text/html" id="operation">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看详情</a>
</script>
<script>
    urlItemed('/knowmana');
    var layer = layui.layer;

    layui.use(['laypage', 'table'], function() {
        var laypage = layui.laypage;
        var table = layui.table;

        table.render({
            elem: '#content',
            height: 315,
            url: '/classify/all', //数据接口
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
                        width: '40%',
                        title: '标题',
                    }, {
                        field: 'username',
                        width: '10%',
                        title: '作者',
                        sort: true
                    }, {
                        field: 'createdate',
                        widtth: '20%',
                        title: '发布时间',
                        sort: true
                    }, {
                        field: 'fun',
                        width: '20%',
                        title: '操作',
                        toolbar: '#operation'
                    }
                ]
            ],
            height: 500
        });

        table.on('tool(test)', function(obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            console.log(data);
            if (layEvent === 'detail') { //查看
                layer.open({
                    type: 2,
                    title: `${data.title}`,
                    shadeClose: true,
                    shade: false,
                    maxmin: true, //开启最大化最小化按钮
                    area: ['893px', '600px'],
                    content: `/admindetail?id=${data.id}`,
                    end: function() {
                        // var index = parent.layer.getFrameIndex(window.name);
                        // parent.location.reload();
                    }
                });
            } else if (layEvent === 'del') { //删除
                console.log("删除");
            } else if (layEvent === 'edit') { //编辑
                console.log("编辑");
            }
        });
    });



    // layui.config({
    //     base: "public/layui/lay/mymodules/"
    // }).use(['jquery', 'eleTree'], function() {
    //     var $ = layui.jquery;
    //     var eleTree = layui.eleTree;

    //     eleTree.render({
    //         elem: '.ele1',
    //         url: "/classify/tree?_csrf={{ ctx.csrf | safe }}",
    //         type: "get",
    //         // data: data,
    //         showCheckbox: true,
    //         contextmenuList: ["copy", "add", "edit", "remove"],
    //         drag: true,
    //         accordion: true
    //     });

    //     eleTree.on("add(data1)", function(data) {
    //         console.log(data);
    //         // 若后台修改，则重新获取后台数据，然后重载
    //         // eleTree.reload(".ele1", {where: {data: JSON.stringify(data.data)}})
    //     })
    //     eleTree.on("edit(data1)", function(data) {
    //         console.log(data);
    //     })
    //     eleTree.on("remove(data1)", function(data) {
    //         console.log(data);
    //     })
    //     eleTree.on("toggleSlide(data1)", function(data) {
    //         console.log(data);
    //     })
    //     eleTree.on("checkbox(data1)", function(data) {
    //         console.log(data);
    //     })

    //     $(".layui-btn").on("click", function() {
    //         console.log(eleTree.checkedData(".ele2"));
    //     })
    // });
</script>
{% endblock %}