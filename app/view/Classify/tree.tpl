{% extends '../Public/admin/base.tpl' %} {% block css %}
<style type="text/css">
    .hide {
        display: none
    }
</style>
{% endblock %} {% block main %}

<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>分类管理</cite></a>
    </div>
</div>


<div class="layui-fluid">
    <div class="layui-row">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header layuiadmin-card-header-auto">
                    <a class="layui-btn add-menu">添加顶级栏目</a>
                </div>
                <div class="layui-card-body">
                    <table class="layui-table layui-form" id="test-tree-table"></table>
                </div>
            </div>
        </div>
    </div>
</div>


{% endblock %} {% block javascript %}
<script>
    let layer = layui.layer;
    let csrftoken = Cookies.get('csrfToken');
    urlItemed('/classify/list');


    // layui模块配置
    layui.config({
        base: '/public/layuitree/',
    });

    layui.use(['treetable', 'form'], function() {
        var o = layui.$,
            treetable = layui.treetable;
        var form = layui.form;
        let data = [];

        o.ajax({
            url: '/classify/tree',
            success(data) {

                if (data.code === 0 && data.result) {
                    data = data.result;

                    treetable.render({
                        elem: '#test-tree-table',
                        // data: data,
                        field: 'title',
                        is_checkbox: true,
                        data: data,
                        /*icon_val: {
                        	open: "&#xe619;",
                        	close: "&#xe61a;"
                        },
                        space: 4,*/
                        cols: [{
                            field: 'title',
                            title: '标题',
                            width: '30%',
                        }, {
                            field: 'id',
                            title: 'ID',
                            width: '20%'
                        }, {
                            title: '状态',
                            width: '20%',
                            template: function(item) {
                                return `<input type="checkbox" lay-skin="switch" lay-filter="status" checked="${item.status ? true : false}" lay-text="开启|关闭">`;
                            }
                        }, {
                            field: 'pid',
                            title: '父ID',
                            width: '10%',
                        }, {
                            field: 'actions',
                            title: '操作',
                            width: '40%',
                            template: function(item) {
                                var tem = [];
                                if (item.pid == 0) {
                                    tem.push('<a class="add-child" lay-filter="add">添加子级</a>');
                                }
                                if (item.pid > 0) {
                                    tem.push('<a class="add-child" lay-filter="add">添加子级</a>');
                                }
                                tem.push('<a lay-filter="edit">编辑</a>');
                                tem.push('<a lay-filter="del">删除</a>');

                                return tem.join(' <font>|</font> ')
                            },
                        }, ]
                    });

                    treetable.on('treetable(add)', function(data) {
                        addClass(data.item.id)
                    })

                    treetable.on('treetable(edit)', function(data) {
                        addClass(0, 'edit', data.item.name, data.item.id);
                    })

                    treetable.on('treetable(del)', function(data) {
                        request(0, 'del', '', data.item.id);
                    })

                    o('.up-all').click(function() {
                        treetable.all('up');
                    })

                    o('.down-all').click(function() {
                        treetable.all('down');
                    })

                    o('.get-checked').click(function() {
                        console.dir(treetable.all('checked'));
                    })

                    form.on('switch(status)', function(data) {
                        layer.msg('监听状态操作');
                        console.dir(data);
                    })
                }
            }
        });

        $(".add-menu").click((event) => {
            event.preventDefault();
            addClass();
        });
        var index = null;

        function addClass(pid = 0, type = 'add', name = '', id) {
            index = layer.prompt({
                title: '输入菜单名称',
                formType: 0,
                value: name
            }, function(pass, index) {
                request(pid, type, pass.trim(), id);
            });
        }

        function request(pid = 0, type = 'add', name = '', id) {
            $.ajax({
                url: '/classify/add',
                type: 'POST',
                data: {
                    classname: name,
                    _csrf: csrftoken,
                    pid,
                    type,
                    id: id ? id : ''
                },
                success(res) {

                    if (res.code === 0) {
                        layer.msg(res.msg, {
                            icon: 1,
                            time: 1500
                        }, function() {
                            layer.close(index);
                            parent.location.reload();
                        });
                    } else {
                        layer.msg('添加失败', {
                            icon: 2,
                            time: 1500
                        }, function() {
                            layer.close(index);
                        });
                    }

                }
            })
        }

    })
</script>
{% endblock %}