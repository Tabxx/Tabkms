{% extends '../Public/admin/base.tpl' %} {% block css %}
<style>
    .album-img {
        width: 100%;
        height: 200px;
    }
    
    .album-title {
        font-size: 20px;
        margin: 0 0 15px 0;
        font-weight: 700;
    }
    
    .album-intro {
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 3;
        line-height: 26px;
        max-height: 72px;
        padding: 10px 0;
    }
    
    .ablum-detail {
        padding: 0 30px;
    }
    
    .chapter-detail {
        margin: 30px 0;
    }
    
    .charpter-tit {
        font-size: 16px;
        font-weight: bold !important;
        margin: 0 0 30px 0;
    }
</style>
{% endblock %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span> <a><cite>知识专辑管理</cite></a><span lay-separator="">/</span>
        <a><cite>详情</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="grid">知识专辑详情</a></legend>
            </fieldset>
        </div>
        <div class="layui-card-body">
            <div class="layui-row">
                <div class="layui-col-md4 layui-col-xs4">
                    <img class="album-img" src="{{ detail.image }}" alt="">
                </div>
                <div class="layui-col-md8 layui-col-xs8 ablum-detail">
                    <h3 class="album-title">{{ detail.name }}</h3>
                    <p class="album-intro">{{ detail.intro | replace(r/<[^<>]+>/g,"") | safe }}</p>
                    <p class="album-time">积分：{{ detail.integral }}</p>
                    <p class="album-time">{{ detail.starttime }}--{{ detail.endtime }}</p>
                </div>
            </div>
            <div class="layui-row chapter-detail">
                <div class="layui-col-md12 layui-col-xs12 charpter-tit">
                    <h3>章节详情</h3>
                </div>
                <div class="layui-col-md12 layui-col-xs12">
                    <ul class="layui-timeline">
                        {% for item in chapters %}
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis"></i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">第{{ loop.index }}章 {{ item.name }}</h3>
                                {% for know in knowledges[loop.index0] %}
                                <p>
                                    {{ know.title }}
                                </p>
                                {% endfor %}
                                <!-- <p><br>子曰：君子不用防，小人防不住。请务必通过官网正规渠道，获得 <a href="http://www.layui.com/admin/" target="_blank">layuiAdmin</a>！</p> -->
                            </div>
                        </li>
                        {% endfor %}
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %} {% block javascript %}
<script>
    urlItemed('/ablum');


    $('.close-save').click((e) => {
        e.preventDefault();
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    })
</script>
{% endblock %}