{% extends '../Public/admin/base.tpl' %} {% block css %}
<style>
    .show-img {
        width: 100px;
        height: 100px;
        display: none;
        margin: 15px 0 0 0;
    }
    
    .show-img img {
        width: 100%;
    }
</style>
{% endblock %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识专辑管理</cite></a><span lay-separator="">/</span>
        <a><cite>新增</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="grid">新增知识专辑</a></legend>
            </fieldset>
        </div>
        <div class="layui-card-body">
            <div class="layui-row">
                <div class="layui-col-md6 layui-col-md-offset2">
                    <form class="layui-form" action="">
                        <div class="layui-form-item">
                            <label class="layui-form-label">专辑名称</label>
                            <div class="layui-input-block">
                                <input type="text" name="name" lay-verify="title" autocomplete="off" placeholder="请输入名称" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <label class="layui-form-label">起止时间</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="starttime" class="layui-input" id="starttime">
                                </div>
                                <div class="layui-form-mid">-</div>
                                <div class="layui-input-inline">
                                    <input type="text" name="endtime" class="layui-input" id="endtime">
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">图片</label>
                            <div class="layui-input-block">
                                <button type="button" class="layui-btn" id="upload-img">
                                            <i class="layui-icon">&#xe67c;</i>上传图片
                                          </button>
                                <div class="show-img">
                                    <img alt="">
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">简介</label>
                            <div class="layui-input-block">
                                <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">章节</label>
                            <div class="layui-input-block">
                                <button class="layui-btn layui-btn-primary add-chapter">+</button>

                            </div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %} {% block javascript %}

<script>
    urlItemed('/ablum');


    layui.use(['laydate', 'layer', 'layedit', 'upload'], function() {
        var laydate = layui.laydate;
        var layer = layui.layer;
        var layedit = layui.layedit;
        var upload = layui.upload;

        //执行一个laydate实例
        laydate.render({
            elem: '#starttime', //指定元素
        });

        laydate.render({
            elem: '#endtime', //指定元素
        });

        layedit.build('LAY_demo_editor');

        //执行实例
        var uploadInst = upload.render({
            elem: '#upload-img' //绑定元素
                ,
            url: `/upload/image?_csrf={{ ctx.csrf | safe }}` //上传接口
                ,
            done: function(res) {
                $('.show-img').show().children('img').attr('src', res.data.src);
            },
            error: function() {
                //请求异常回调
            }
        });

        $('.add-chapter').click(event => {
            event.preventDefault();

            layer.open({
                type: 2,
                title: `添加章节知识`,
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['893px', '600px'],
                content: `/album/list`,
                end: function() {
                    parent.location.reload();
                }
            });
        })
    });
</script>
{% endblock %}