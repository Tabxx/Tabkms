{% extends '../Public/base.tpl' %}

{% block css %}
<style>
    .bg-image {
        overflow: hidden;
        background-image: url('/public/pic/background/4.jpg');
        height: 200px;
    }
    .layui-nav-child a{
        padding: 6px 20px !important;
    }
    #classBox{
        cursor: pointer;
    }
    .firstClass img{
        width:100%;
    }
    .class-Title{
        text-align: center;
        color: #FFBA10;
        font-size: 16px;
        font-weight: bolder;
        margin-bottom: 10px
    }
    #secondClass{
        display: none;
    }
    .classLinks{
        font-size: 16px;
        font-weight: bolder;
        text-align: center;
        margin-bottom: 2px;
    }
</style>
{% endblock %}

{% block body %}
    <!--内容-->
    <div class="content">
        <div class="block">
            <!-- 知识分类导航 -->
            <div class="row">
                <div class="col-md-12">
                    <ul class="layui-nav" lay-filter="">

                        {% for item in classify %}
                        <li class="layui-nav-item">
                            <a href="">{{ item.name }}</a>
                            {% if item.child != null %}
                            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                                {% for chil in item.child %}
                                <dd><a href="{{ chil.url }}">{{ chil.name }}</a></dd>
                                {% endfor %}
                            </dl>
                            {% endif %}
                        </li>
                        {% endfor %}
                    </ul>
                </div>
            </div>
            <!-- ./知识分类导航 -->

            <!-- 搜索 -->
            <div class="row">
                <div class="col-md-12">
                    <div class="bg-image">
                        <div class="push-50-t push-15 clearfix">
                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-2">
                                    <form action="/search" method="get">
                                        <div class="input-group">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                                            </span>
                                            <input class="form-control" type="text" id="example-input3-group2" name="keyword" placeholder="搜索...">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="submit">搜索一下</button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./搜索 -->


            <div class="row">
                <div class="col-md-12">
                    <!-- Slider with autoplay -->
                    <div class="js-slider" data-slider-dots="true" data-slider-autoplay="true" data-slider-autoplay-speed="3000" >
                        <div>
                            <div class="row">
                                {% for item in classify %}
                                <span id="classBox" class="col-lg-3 col-md-3 col-sm-6" onmouseover="show(this)" onmouseout="hide(this)">
                                    <div class="firstClass">
                                        <img src="/public/pic/element/1.png">
                                        <div class="class-Title">{{ item.name }}</div>
                                    </div>
                                    <div id="secondClass" class="block block-themed">
                                        <div class="block-header bg-warning">
                                            <h3 class="block-title" style="text-align: center"><a href="/classLists?type={{ item.id }}">{{ item.name }}</a></h3>
                                        </div>
                                        <div class="block-content">
                                            {% for chil in item.child %}
                                            <div class="classLinks"><a href="/classLists?type={{ chil.id }}">{{ chil.name }}</a></div>
                                            {% endfor %}
                                        </div>
                                    </div>
                                </span>
                                {% endfor %}
                            </div>
                        </div>
                    <!-- END Slider with autoplay -->
                    </div>
                </div>
            </div>

            <div class="row">
                <dic class="col-md-12">
                    <!-- Top Products -->
                    <div class="block block-opt-refresh-icon4">
                        <div class="block-header bg-gray-lighter">
                            <ul class="block-options">
                                <li>
                                    <button type="button" data-toggle="block-option" data-action="refresh_toggle" data-action-mode="demo"><i class="si si-refresh"></i></button>
                                </li>
                            </ul>
                            <h3 class="block-title"><span class="si si-fire"></span> 搜索热度排行</h3>
                        </div>
                        <div class="block-content">
                            <table class="table table-borderless table-striped table-vcenter">
                                <thead>
                                <tr>
                                    <th style="width: 10%"></th>
                                    <th style="width: 30%">关键词</th>
                                    <th class="text-center" style="width: 30%">搜索次数</th>
                                    <th class="text-center" style="width: 30%">热度</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>AJAX如何使用</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>3725</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>CSS的position属性</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>3674</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>JavaScript获取DOM元素</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>3602</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>JQuery制作动画效果</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>3468</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>JavaScript动态生成网页界面</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>3209</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>伪元素的使用</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>3144</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>.NET开发实例</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>2948</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>JavaScript修改CSS属性</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>2831</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>实现页面自适应的方法</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>2797</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%"></td>
                                    <td style="width: 30%"><a href="" style="color: #2796E6;font-size: 18px"><strong>动态规划算法的核心思想</strong></a></td>
                                    <td class="text-center" style="width: 30%"><span>2557</span></td>
                                    <td class="text-center" style="width: 30%">
                                        <div class="text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END Top Products -->
                </dic>
            </div>
        </div>
    </div>

{% endblock %}

{% block javascript %}
<script src="/public/assets/js/plugins/slick/slick.min.js"></script>
<script>
    jQuery(function () {
        App.initHelpers('slick');
    });
    function show (e) {
        $(e).children('#secondClass').show();
        $(e).children('.firstClass').hide();
    }
    function hide (e) {
        $(e).children('#secondClass').hide();
        $(e).children('.firstClass').show();
    }
</script>
{% endblock %}
