{% extends '../Public/admin/base.tpl' %} {% block css %} <style>
    .album-image {
        width: 100%;
        height: 150px;
    }

    .cmdlist-text .info {
        height: auto;
        font-size: 16px;
    }

    .price {
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        line-height: 26px;
        height: 52px;
    }
</style>{% endblock %} {% block main %}
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
        {% for item in albums %}
        <div class="layui-col-md3 layui-col-sm3">
            <div class="cmdlist-container detail" data-id="{{ item.id }}">
                <a href="javascript:;">
                    <img src="{{ item.image }}" class="album-image">
                </a>
                <a href="javascript:;">
                    <div class="cmdlist-text">
                        <p class="info"><b>{{ item.name }}</b></p>
                        <div class="price">
                            {{ item.intro }}
                        </div>
                    </div>
                </a>
            </div>
        </div>
        {% endfor %}

        <!-- <div id="parentIframe"></div>
        <div class="layui-col-md12 layui-col-sm12">
            <div id="demo0">
                <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-7"><a href="javascript:;"
                        class="layui-laypage-prev layui-disabled" data-page="0">上一页</a><span class="layui-laypage-curr"><em
                            class="layui-laypage-em"></em><em>1</em></span><a href="javascript:;" data-page="2">2</a><a
                        href="javascript:;" data-page="3">3</a><a href="javascript:;" data-page="4">4</a><a href="javascript:;"
                        data-page="5">5</a><a href="javascript:;" class="layui-laypage-next" data-page="2">下一页</a></div>
            </div>
        </div> -->
    </div>
</div>

{% endblock %} {% block javascript %}

<script>
    urlItemed('/album');

    layui.use(['laypage', 'layer'], function () {
        var laypage = layui.laypage;
        var layer = layui.layer;



        $('.add-album').click(event => {
            event.preventDefault();
            location.href = '/album/add'
        });

        $('.detail').click(function (event) {
            let aid = $(this).attr('data-id');

            layer.open({
                type: 2,
                title: `知识专辑详情`,
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['893px', '600px'],
                content: `/album/admindetail?id=${aid}`,
                end: function () {
                    // parent.location.reload();
                }
            });
        })

    });
</script>
{% endblock %}