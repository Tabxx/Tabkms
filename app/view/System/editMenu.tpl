{% extends '../Public/admin/base.tpl' %}

{% block main %}
<div class="layui-row">
    <div class="layui-col-md8 layui-col-md-offset1">

        <fieldset class="layui-elem-field layui-field-title site-title">
            <legend><a name="bgcolor">编辑菜单</a></legend>
        </fieldset>

        <form class="layui-form" >
            <div class="layui-form-item">
                <label class="layui-form-label">菜单名称</label>
                <div class="layui-input-block">
                    <input type="text" name="name" value="{{ info.name }}" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input" />
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">父菜单</label>
                <div class="layui-input-block">
                    <select name="pid" disabled>
                        <option value="{{ info.pid }}">顶级菜单</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">url</label>
                <div class="layui-input-block">
                    <input type="text" value="{{ info.url }}" name="url" required  lay-verify="required" placeholder="请输入URL" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <input type="hidden" name="id" value="{{ info.id }}"  required  lay-verify="required" autocomplete="off" class="layui-input" />
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>
{% endblock %}

{% block javascript %}
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            var index = layer.load(1, {
                shade: [0.1,'#fff'] //0.1透明度的白色背景
            });
            $.post('/homemenu/update', data.field, function(result){
                layer.close(index);

                if(result.code){

                    layer.msg(result.msg, {
                        icon: 1,
                        time: 3000
                    },function () {
                        location.href = result.url;
                    });
                } else {
                    layer.msg(result.msg);
                }
            })
            return false;
        });
    });
</script>
{% endblock %}