{% extends '../Public/admin/base.tpl' %} {% block css %} {% endblock %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识专辑管理</cite></a>
    </div>
</div>


<div class="layui-fluid layadmin-cmdlist-fluid">
    <div style="padding-bottom: 10px;">
        <button class="layui-btn layuiadmin-btn-forum-list add-album" data-type="batchdel">添加</button>
    </div>
    <div class="layui-row layui-col-space30">
        <div class="layui-col-md2 layui-col-sm4">
            <div class="cmdlist-container">
                <a href="javascript:;">
                    <script type="text/html" template="">
                        <img src="{{ layui.setter.base }}style/res/template/portrait.png">
                    </script> <img src="./dist/style/res/template/portrait.png">
                </a>
                <a href="javascript:;">
                    <div class="cmdlist-text">
                        <p class="info">2018春夏季新款港味短款白色T恤+网纱中长款chic半身裙套装两件套</p>
                        <div class="price">
                            <b>￥79</b>
                            <p>
                                ¥
                                <del>130</del>
                            </p>
                            <span class="flow">
                            <i class="layui-icon layui-icon-rate"></i>
                            433
                          </span>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <div class="layui-col-md12 layui-col-sm12">
            <div id="demo0">
                <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-7"><a href="javascript:;" class="layui-laypage-prev layui-disabled" data-page="0">上一页</a><span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span><a href="javascript:;" data-page="2">2</a><a href="javascript:;"
                        data-page="3">3</a><a href="javascript:;" data-page="4">4</a><a href="javascript:;" data-page="5">5</a><a href="javascript:;" class="layui-laypage-next" data-page="2">下一页</a></div>
            </div>
        </div>
    </div>
</div>

{% endblock %} {% block javascript %}

<script>
    urlItemed('/album');

    layui.use(['laypage', 'layer'], function() {
        var laypage = layui.laypage;
        var layer = layui.layer;



        $('.add-album').click(event => {
            event.preventDefault();
            location.href = '/album/add'
                // layer.open({
                //     type: 2,
                //     title: `新增知识专辑`,
                //     shadeClose: true,
                //     shade: false,
                //     maxmin: true, //开启最大化最小化按钮
                //     area: ['893px', '600px'],
                //     content: `/album/add`,
                //     end: function() {
                //         parent.location.reload();
                //     }
                // });
        })

    });
</script>
{% endblock %}