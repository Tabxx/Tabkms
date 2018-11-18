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
    
    .second-class {
        display: none;
    }
</style>
{% endblock %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识专辑管理</cite></a><span lay-separator="">/</span>
        <a><cite>添加章节知识</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="grid">添加章节知识</a></legend>
            </fieldset>
        </div>
        <div class="layui-card-body">
            <div class="layui-row">
                <div class="layui-col-md6 layui-col-md-offset2">
                    <form class="layui-form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">下拉选择框</label>
                            <div class="layui-input-inline">
                                <select name="interest" lay-filter="classify">
                                    <option selected disabled>全部</option>
                                    {% for item in classify %}
                                    <option value="{{ item.id }}">{{ item.name }}</option>
                                    {% endfor %}
                                </select>
                            </div>
                            <div class="layui-input-inline second-class">
                                <select name="interest" lay-filter="second">
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="*">立即提交</button>
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


    layui.use(['layer', 'form'], function() {
        var layer = layui.layer;
        var form = layui.form;
        form.render();

        //监听提交
        form.on('submit(classify)', function(data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });

        form.on('select(classify)', function(data) {
            let selectval = data.value;
            let classify = `{{ classify[{{selectval}}] }}`;

            console.log(classify);

        });
    });
</script>
{% endblock %}