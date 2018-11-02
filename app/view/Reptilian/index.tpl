{% extends '../Public/admin/base.tpl' %}

{% block css %}
{% endblock %}

{% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>爬虫抓取</cite></a><span lay-separator="">/</span>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="grid">爬虫抓取</a></legend>
            </fieldset>
        </div>
        <div class="layui-card-body">
            <div class="layui-row">

                <div class="layui-col-md6 layui-col-md-offset3">
                    <form class="layui-form" action="/reptilian" method="post">
                        <div class="layui-form-item">
                            <label class="layui-form-label">爬取网址</label>
                            <div class="layui-input-block">
                                <input type="text" name="url" required lay-verify="required" placeholder="请输入网址"
                                    autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">规则</label>
                            <div class="layui-input-inline">
                                <input type="text" name="rule1" required lay-verify="required" placeholder="请输入规则"
                                    autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">元素</label>
                            <div class="layui-input-inline">
                                <input type="text" name="element" required lay-verify="required" placeholder="请输入元素"
                                    autocomplete="off" class="layui-input">
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
{% endblock %}


{% block javascript %}

<script>
    urlItemed('/reptilian');
</script>
{% endblock %}