{% extends '../Public/base.tpl' %} {% block css %}
<style>
    .album-intro {
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        text-indent: 2em;
        color: #898D91;
    }
    
    .album-row {
        margin: 0 0 10px 0;
    }
    
    .album-title {
        font-size: 20px;
        font-weight: bolder;
    }
    
    .album-img {
        width: 100%;
        height: 200px
    }
    
    .album-row-label {
        color: #646464;
    }
    
    .album-row-text {
        color: #898D91
    }
</style>
{% endblock %} {% block body %}
<!--内容-->
<div class="content">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12" style="padding: 0">
            <div class="block">
                <div class="block-content">
                    <div class="block block-themed">
                        <div class="block-content">
                            <ul class="list pull-t">
                                <!-- 课程 -->
                                <li>
                                    <div class="list-timeline-content">
                                        <div class="row">
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <img src="{{ album.image }}" class="album-img">
                                            </div>
                                            <div class="col-sm-9 col-md-9 col-lg-9">
                                                <div class="album-row"><span class="album-title">{{ album.name }}</span></div>
                                                <div class="album-row">
                                                    <span class="album-row-label">知识简介：</span>
                                                    <span class="album-intro">{{ album.intro | replace(r/<[^<>]+>/g,"") | safe }}</span>
                                                </div>
                                                {% if progress.status == 0 %}
                                                <div class="album-row"><span class="album-row-label">积分：</span><span class="album-row-text">{{ album.integral }}</span></div>
                                                {% endif %}
                                                <div class="album-row"><span class="album-row-label">有效时间：</span><span class="album-row-text">{{ album.starttime }}——{{ album.endtime }}</span></div>
                                                {% if progress.status == 0 %}
                                                <a href="" class="startStudy">
                                                    <div class="album-row"><button class="btn btn-sm btn-success" type="button">开始学习</button></div>
                                                </a>
                                                {% else %}
                                                <div class="progress active" style="margin-bottom: 10px">
                                                    <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="{{ progress.progress }}" aria-valuemin="0" aria-valuemax="100" style="width:{{ progress.progress }}%">{{ progress.progress }}%</div>
                                                </div>
                                                <div><span style="color: #646464;">学习至：</span><span style="color: #898D91">{{ progress.chapter }}</span></div>
                                                {% endif %}
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- 课程 -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--分割线-->

    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12" style="padding: 0">
            <!-- Block Tabs Animated Fade -->
            <div class="block">
                <ul class="nav nav-tabs" data-toggle="tabs">
                    <li class="active">
                        <a href="#btabs-animated-fade-jianjie">知识简介</a>
                    </li>
                    <li class="">
                        <a href="#btabs-animated-fade-dagang">大纲</a>
                    </li>
                    <li class="">
                        <a href="#btabs-animated-fade-pingjia">用户评价</a>
                    </li>
                </ul>
                <div class="block-content tab-content">
                    <div class="tab-pane fade active in" id="btabs-animated-fade-jianjie">
                        {{ album.intro | safe}}
                    </div>
                    <div class="tab-pane fade" id="btabs-animated-fade-dagang">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-12">
                                <!-- Icon Based -->
                                <div class="block block-themed">
                                    <div class="block-content">
                                        <ul class="list list-timeline pull-t">
                                            <!-- 课程 -->
                                            {% for chapter in chapters %}
                                            <li>
                                                <div class="list-timeline-time" style="font-size: 20px">课时{{ loop.index }}</div>
                                                {% if loop.index % 2 === 0 %}
                                                <i class="si si-book-open list-timeline-icon bg-default"></i> {% else %}
                                                <i class="si si-book-open list-timeline-icon bg-success"></i> {% endif %}
                                                <div class="list-timeline-content">
                                                    <div style="margin-bottom: 10px">
                                                        <span style="font-size: 18px;font-weight: bolder">
                                                            {{ chapter.name }}
                                                            <a href="/knowdetail?id={{ chapter.knowledge }}&aid={{ album.id }}&cid={{ chapter.id }}" class="playvideo fa fa-caret-square-o-right pull-right" style="font-size: 15px;cursor:pointer"> 进入学习</a>
                                                        </span>
                                                    </div>
                                                </div>
                                            </li>
                                            {% endfor %}
                                            <!-- 课程 -->
                                        </ul>
                                    </div>
                                </div>
                                <!-- END Icon Based -->
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="btabs-animated-fade-pingjia">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-12">
                                <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">浅眠</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-11&nbsp;&nbsp;12:43</h4>
                                <p>说的挺详细的，赞一个<span style="float: right"><span class="si si-like">3</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">6</span></span>
                                </p>
                                <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">黑色小强</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-09&nbsp;&nbsp;11:02</h4>
                                <p>楼主能说一些实际开发的经验吗？<span style="float: right"><span class="si si-like">12</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">9</span></span>
                                </p>
                                <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">鱼腥腥</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-08&nbsp;&nbsp;01:11</h4>
                                <p>顶一个！<span style="float: right"><span class="si si-like">9</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">4</span></span>
                                </p>
                                <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">我不是蝗虫</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-07&nbsp;&nbsp;17:33</h4>
                                <p>赶紧抱大腿。。。<span style="float: right"><span class="si si-like">8</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">7</span></span>
                                </p>
                                <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">shi'ne</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-07&nbsp;&nbsp;13:46</h4>
                                <p>楼主我有问题可以私聊你吗？<span style="float: right"><span class="si si-like">23</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">11</span></span>
                                </p>
                                <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">嘴强王者</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-06&nbsp;&nbsp;09:02</h4>
                                <p>position真的好用！！！<span style="float: right"><span class="si si-like">5</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">2</span></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END Block Tabs Animated Fade -->
        </div>
    </div>

</div>

{% endblock %} {% block javascript %}
<script>
    $('.startStudy').click(function(event) {
        event.preventDefault();

        $.ajax({
            url: '/learning/startstudy',
            data: {
                uid: `{{ ctx.session.user.uid }}`,
                aid: `{{ album.id }}`,
                id: `{{ progress.id }}`
            },
            success: function(result) {
                if (result.code == 0) {
                    window.location.reload();
                }
            }
        })
    })
</script>
{% endblock %}