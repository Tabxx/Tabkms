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
                <div class="layui-form layui-card-header layuiadmin-card-header-auto" lay-filter="app-content-list">
                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">文章ID</label>
                            <div class="layui-input-inline">
                                <input type="text" name="id" placeholder="请输入" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">作者</label>
                            <div class="layui-input-inline">
                                <input type="text" name="author" placeholder="请输入" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">标题</label>
                            <div class="layui-input-inline">
                                <input type="text" name="title" placeholder="请输入" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">文章分类</label>
                            <div class="layui-input-inline">
                                <select name="classid">
                                    <option value="">请选择标签</option>
                                    {% for item in classify %}
                                    <option value="{{ item.id }}">{{ item.name }}</option>
                                    {% endfor %}
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <button class="layui-btn layuiadmin-btn-list" lay-submit lay-filter="LAY-app-contlist-search">
                                <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="layui-card-body">
                    <table id="content" class="layui-hide" lay-filter="test" lay-data="{id: 'idTest'}"></table>
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

    layui.use(['laypage', 'table'], function () {
        var laypage = layui.laypage;
        var table = layui.table;
        var form = layui.form;

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
                        field: 'id',
                        title: 'ID',
                        width: '5%',
                        sort: true,
                    }, {
                        field: 'title',
                        width: '30%',
                        title: '标题',
                    }, {
                        field: 'username',
                        width: '10%',
                        title: '作者',
                        sort: true
                    }, {
                        field: 'class',
                        width: '10%',
                        title: '分类',
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

        table.on('tool(test)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            if (layEvent === 'detail') { //查看
                layer.open({
                    type: 2,
                    title: `${data.title}`,
                    shadeClose: true,
                    shade: false,
                    maxmin: true, //开启最大化最小化按钮
                    area: ['893px', '600px'],
                    content: `/admindetail?id=${data.id}`,
                    end: function () {
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

        //监听搜索
        form.on('submit(LAY-app-contlist-search)', function (data) {
            var field = data.field;
            let where = field;

            //执行重载
            table.reload('content', {
                where: field
            });
        });
    });
</script>
{% endblock %}