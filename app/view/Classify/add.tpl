{% block css %}
<link rel="stylesheet" href="/public/layui/css/layui.css">
<link rel="stylesheet" href="/public/layui/css/modules/layer/default/layer.css" media="all">
<link rel="stylesheet" href="/public/dist/style/admin.css" media="all">
<link rel="stylesheet" href="/public/css/adminstyle.css"> {% endblock %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>分类管理</cite></a><span lay-separator="">/</span>
        <a><cite>新增顶级菜单</cite></a>
    </div>
</div>


<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="bgcolor">添加顶级分类</a></legend>
            </fieldset>
        </div>
        <div class="layui-card-body">
            <div class="layui-row">
                <div class="layui-col-md6">
                    <form class="layui-form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">部门名称</label>
                            <div class="layui-input-inline">
                                <input type="text" name="name" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input" />
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">所属公司</label>
                            <div class="layui-input-inline">
                                <select name="cid" lay-verify="required">
                                        {% for item in companys %}
                                        <option value="{{ item.id }}">{{ item.name }}</option>
                                        {% endfor %}
                                    </select>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
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
    urlItemed('/classify');
</script>
{% endblock %}