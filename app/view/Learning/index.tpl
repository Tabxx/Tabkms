{% extends '../Public/base.tpl' %} {% block css %}
<style>
    .album-item {
        margin-top: 12px;
    }
    
    .album-item .album-img {
        width: 100%;
        height: 215px;
    }
    
    .album-title {
        font-size: 20px;
        margin-bottom: 5px
    }
    
    .album-label {
        font-size: 12px;
        color: #646464;
        font-weight: bolder;
    }
    
    .album-intro {
        font-size: 12px;
        color: #898D91;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        flex: 1;
        width: 0;
    }
    
    .item-row {
        display: flex;
    }
</style>
{% endblock %} {% block body %}
<!--内容-->
<div class="content">

    <div class="row">
        <div class="col-md-12 col-lg-12" style="padding: 0">
            <!-- Block Tabs Animated Fade -->
            <div class="block">
                <ul class="nav nav-tabs nav-tabs-alt nav-justified" data-toggle="tabs">
                    <li class="active">
                        <a href="#btabs-animated-fade-zaixue">最近在学</a>
                    </li>
                    <li class="">
                        <a href="#btabs-animated-fade-quanbu">全部知识</a>
                    </li>
                    <li class="">
                        <a href="#btabs-animated-fade-bixue">必学知识</a>
                    </li>
                    <li class="">
                        <a href="#btabs-animated-fade-yixue">推荐知识</a>
                    </li>
                </ul>
                <div class="block-content tab-content">
                    <div class="tab-pane fade active in" id="btabs-animated-fade-zaixue">

                        <div class="row">
                            <div class="col-lg-12" style="padding: 0">
                                <!-- Icon Based -->
                                <div class="block block-themed">
                                    <div class="block-content">
                                        <ul class="list list-timeline pull-t">
                                            <!-- 课程 -->
                                            <li>
                                                <div class="list-timeline-time">2018.04.02</div>
                                                <i class="fa fa-book list-timeline-icon bg-default"></i>
                                                <div class="list-timeline-content">
                                                    <img src="/public/pic/course/21.png" class="pull-left" style="height: 100px;margin-right: 20px">
                                                    <div style="margin-bottom: 10px"><span style="font-size: 20px;font-weight: bolder">CSS定位：position</span><span style="color: #898D91"> 更新完毕</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #DE4430;margin-right: 20px">已学26%</span><span style="color: #898D91;margin-right: 20px">用时5小时10分</span><span style="color: #898D91">学习至3-2 CSS position属性的具体应用</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #898D91;margin-right: 50px">笔记：12</span><span style="color: #898D91;margin-right: 50px">代码：9</span><span style="color: #898D91">问答：23</span>
                                                        <a href="startlearning.html"><button class="btn btn-sm btn-success pull-right" type="button">继续学习</button></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list-timeline-time">2018.04.01</div>
                                                <i class="fa fa-book list-timeline-icon bg-success"></i>
                                                <div class="list-timeline-content">
                                                    <img src="/public/pic/course/6.png" class="pull-left" style="height: 100px;margin-right: 20px">
                                                    <div style="margin-bottom: 10px"><span style="font-size: 20px;font-weight: bolder">ES6 快速入门</span><span style="color: #898D91"> 更新完毕</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #DE4430;margin-right: 20px">已学34%</span><span style="color: #898D91;margin-right: 20px">用时8小时43分</span><span style="color: #898D91">学习至5-4 ES6使用详解</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #898D91;margin-right: 50px">笔记：2</span><span style="color: #898D91;margin-right: 50px">代码：1</span><span style="color: #898D91">问答：1</span><button class="btn btn-sm btn-success pull-right"
                                                            type="button">继续学习</button></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list-timeline-time">2018.03.31</div>
                                                <i class="fa fa-book list-timeline-icon bg-default"></i>
                                                <div class="list-timeline-content">
                                                    <img src="/public/pic/course/8.png" class="pull-left" style="height: 100px;margin-right: 20px">
                                                    <div style="margin-bottom: 10px"><span style="font-size: 20px;font-weight: bolder">Ajax 跨域完全讲解</span><span style="color: #898D91"> 更新完毕</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #DE4430;margin-right: 20px">已学13%</span><span style="color: #898D91;margin-right: 20px">用时3小时45分</span><span style="color: #898D91">学习至3-3 Ajax实现方式概述</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #898D91;margin-right: 50px">笔记：12</span><span style="color: #898D91;margin-right: 50px">代码：5</span><span style="color: #898D91">问答：15</span><button class="btn btn-sm btn-success pull-right"
                                                            type="button">继续学习</button></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list-timeline-time">2018.03.30</div>
                                                <i class="fa fa-book list-timeline-icon bg-success"></i>
                                                <div class="list-timeline-content">
                                                    <img src="/public/pic/course/9.png" class="pull-left" style="height: 100px;margin-right: 20px">
                                                    <div style="margin-bottom: 10px"><span style="font-size: 20px;font-weight: bolder">Weex 入门</span><span style="color: #898D91"> 更新完毕</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #DE4430;margin-right: 20px">已学95%</span><span style="color: #898D91;margin-right: 20px">用时30小时03分</span><span style="color: #898D91">学习至9-2 Weex应用指南</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #898D91;margin-right: 50px">笔记：31</span><span style="color: #898D91;margin-right: 50px">代码：19</span><span style="color: #898D91">问答：41</span><button class="btn btn-sm btn-success pull-right"
                                                            type="button">继续学习</button></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="list-timeline-time">2018.03.29</div>
                                                <i class="fa fa-book list-timeline-icon bg-default"></i>
                                                <div class="list-timeline-content">
                                                    <img src="/public/pic/course/10.png" class="pull-left" style="height: 100px;margin-right: 20px">
                                                    <div style="margin-bottom: 10px"><span style="font-size: 20px;font-weight: bolder">React 响应用户的输入</span><span style="color: #898D91"> 更新完毕</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #DE4430;margin-right: 20px">已学84%</span><span style="color: #898D91;margin-right: 20px">用时23小时13分</span><span style="color: #898D91">学习至8-3 React项目实践</span></div>
                                                    <div style="margin-bottom: 10px"><span style="color: #898D91;margin-right: 50px">笔记：19</span><span style="color: #898D91;margin-right: 50px">代码：11</span><span style="color: #898D91">问答：24</span><button class="btn btn-sm btn-success pull-right"
                                                            type="button">继续学习</button></div>
                                                </div>
                                            </li>
                                            <!-- 课程 -->
                                        </ul>
                                    </div>
                                </div>
                                <!-- END Icon Based -->
                            </div>
                        </div>
                    </div>

                    <!-- 全部专辑 -->
                    <div class="tab-pane fade" id="btabs-animated-fade-quanbu">
                        <div class="row">
                            {% for item in album %}
                            <div class="col-sm-4 col-md-4 col-lg-3">
                                <div class="block block-themed album-item">
                                    <div>
                                        <a href="/learning/detail?id={{item.id}}"><img src="{{ item.image }}" class="album-img"></a>
                                    </div>
                                    <div class="block-content">
                                        <h3 class="album-title">{{ item.name }}</h3>
                                        <div class="item-row">
                                            <span class="album-label">课程简介：</span>
                                            <span class="album-intro">{{ item.intro | replace(r/<[^<>]+>/g,"") | safe }}</span>
                                        </div>
                                        <div>
                                            <span class="album-label">有效时间：</span>
                                            <span class="album-intro">{{ item.starttime }}——{{ item.endtime }}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {% endfor %}
                        </div>
                    </div>
                    <!-- ./全部专辑 -->

                    <!-- 必学知识 -->
                    <div class="tab-pane fade" id="btabs-animated-fade-bixue">
                        <div class="row">
                            {% for item in mustAlbum %}
                            <div class="col-sm-4 col-md-4 col-lg-3">
                                <div class="block block-themed album-item">
                                    <div>
                                        <a href="/learning/detail?id={{item.id}}"><img src="{{ item.image }}" class="album-img"></a>
                                    </div>
                                    <div class="block-content">
                                        <h3 class="album-title">{{ item.name }}</h3>
                                        <div class="item-row"><span class="album-label">课程简介：</span><span class="album-intro">{{ item.intro | replace(r/<[^<>]+>/g,"") | safe }}</span></div>
                                        <div class="item-row"><span class="album-label">有效时间：</span><span class="album-intro">{{ item.starttime }}——{{ item.endtime }}</span></div>
                                    </div>
                                </div>
                            </div>
                            {% endfor %}

                        </div>
                    </div>
                    <!-- ./必学知识 -->

                    <div class="tab-pane fade" id="btabs-animated-fade-yixue">
                        <div class="row">
                            <div class="col-lg-12" style="padding: 0">
                                <div class="row">

                                    <div class="col-sm-4 col-md-4 col-lg-4">
                                        <!-- Crystal on Background Color -->
                                        <a href="courseinformation2.html">
                                            <div class="block" style="cursor: pointer">
                                                <div class="bg-image" style="background-image: url('/public/pic/course/15.png');background-size: 100% 100%;height: 200px">
                                                    <div class="block-content block-content-full ribbon ribbon-modern ribbon-success">
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                        <!-- END Crystal on Background Color -->
                                        <div class="block-content" style="height: 110px">
                                            <h3 style="font-size: 20px;margin-bottom: 5px;margin-top: -20px">JavaScrtpt 实现二叉树算法</h3>
                                            <div><span style="font-size: 12px;color: #646464;font-weight: bolder">课程简介：</span><span style="font-size: 12px;color: #898D91">本案例展示了使用JavaScript来实现二叉树算法。</span></div>
                                            <div><span style="font-size: 12px;color: #646464;font-weight: bolder">有效时间：</span><span style="font-size: 12px;color: #898D91">2017.05.21——2018.05.22</span></div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-4 col-lg-4">
                                        <!-- Crystal on Background Color -->
                                        <div class="block" style="cursor: pointer">
                                            <div class="bg-image" style="background-image: url('/public/pic/course/19.png');background-size: 100% 100%;height: 200px">
                                                <div class="block-content block-content-full ribbon ribbon-modern ribbon-success">

                                                </div>
                                            </div>
                                        </div>
                                        <!-- END Crystal on Background Color -->
                                        <div class="block-content" style="height: 110px">
                                            <h3 style="font-size: 20px;margin-bottom: 5px;margin-top: -20px">前端性能优化</h3>
                                            <div><span style="font-size: 12px;color: #646464;font-weight: bolder">课程简介：</span><span style="font-size: 12px;color: #898D91">学习前端性能优化，突破工作瓶颈。</span></div>
                                            <div><span style="font-size: 12px;color: #646464;font-weight: bolder">有效时间：</span><span style="font-size: 12px;color: #898D91">2017.02.17——2018.02.18</span></div>
                                        </div>
                                    </div>

                                    <div class="col-sm-4 col-md-4 col-lg-4">
                                        <!-- Crystal on Background Color -->
                                        <div class="block" style="cursor: pointer">
                                            <div class="bg-image" style="background-image: url('/public/pic/course/18.png');background-size: 100% 100%;height: 200px">
                                                <div class="block-content block-content-full ribbon ribbon-modern ribbon-success">

                                                </div>
                                            </div>
                                        </div>
                                        <!-- END Crystal on Background Color -->
                                        <div class="block-content" style="height: 110px">
                                            <h3 style="font-size: 20px;margin-bottom: 5px;margin-top: -20px">Handlebars模板引擎</h3>
                                            <div><span style="font-size: 12px;color: #646464;font-weight: bolder">课程简介：</span><span style="font-size: 12px;color: #898D91">使用Handlebars.js模板渲染页面。</span></div>
                                            <div><span style="font-size: 12px;color: #646464;font-weight: bolder">有效时间：</span><span style="font-size: 12px;color: #898D91">2017.01.13——2018.01.14</span></div>
                                        </div>
                                    </div>
                                </div>
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
</script>
{% endblock %}