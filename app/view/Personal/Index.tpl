{% extends '../Public/base.tpl' %}

{% block css %}
<style>
    .myKnowledges .time{
        font-size: 12px;
        color: #8990A2;
        margin-left: 15px
    }
    .knowledge-title{
        color: black;
        font-size: 18px;
        font-weight: bolder
    }
    .info,
    .knowledge-title{
        margin: 0 0 5px 15px;
    }
    .info img {
        height: 40px;
        width: 40px;
        margin-bottom: 5px;
    }
    .info span{
        margin-left: 15px;
        font-size: 14px;
        font-weight: bolder;
    }
    .handle {
        margin: 0 0 15px 15px;
    }
</style>
{% endblock %}

{% block body %}
<div class="content bg-image" style="background-image: url('/public/pic/background/3.jpg')">
    <div class="push-50-t push-15 clearfix">
        <div class="push-15-r pull-left animated fadeIn">
            <img class="img-avatar img-avatar-thumb" src="/public/pic/icon/main.jpg" alt="">
        </div>
        <h1 class="h2 text-white push-5-t animated zoomIn">{{ user.username }}</h1>
        <h2 class="h5 text-white-op animated zoomIn">
            {{ user.job }}
            <a href="/uploadKnowledge">
                <button class="btn btn-minw btn-rounded btn-success" type="button" style="float: right;">
                    <span class="fa fa-upload"></span>&nbsp;&nbsp;&nbsp;上传知识
                </button>
            </a>
        </h2>
    </div>
</div>

<!--分割线-->

<div class="content bg-white border-b">
    <div class="row items-push text-uppercase">
        <div class="col-xs-6 col-sm-3">
            <div class="font-w700 text-gray-darker animated fadeIn">学习时长</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="javascript:void(0)">124h</a>
        </div>
        <div class="col-xs-6 col-sm-3">
            <div class="font-w700 text-gray-darker animated fadeIn">签到天数</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="javascript:void(0)">28</a>
        </div>
        <div class="col-xs-6 col-sm-3">
            <div class="font-w700 text-gray-darker animated fadeIn">积分</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="javascript:void(0)">2360</a>
        </div>
        <div class="col-xs-6 col-sm-3">
            <div class="font-w700 text-gray-darker animated fadeIn">成绩评分</div>
            <div class="text-warning push-10-t animated flipInX">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <span class="text-muted">(4.5)</span>
            </div>
        </div>
    </div>
</div>

<!--分割线-->

<div class="block" style="margin-top: 20px;">
    <ul class="nav nav-tabs" data-toggle="tabs">
        <li class="active">
            <a href="#btabs-animated-fade-kecheng"><span class="si si-book-open"></span> 我的知识</a>
        </li>
        <li class="">
            <a href="#btabs-animated-fade-dongtai"><span class="si si-clock"></span> 动态</a>
        </li>
        <li class="">
            <a href="#btabs-animated-fade-tiwen"><span class="si si-question"></span> 提问</a>
        </li>
        <li class="">
            <a href="#btabs-animated-fade-huida"><span class="si si-note"></span> 回答</a>
        </li>
        <li class="">
            <a href="#btabs-animated-fade-shoucang"><span class="si si-heart"></span> 收藏</a>
        </li>
        <li class="">
            <a href="#btabs-animated-fade-guanzhu"><span class="si si-plus"></span> 关注</a>
        </li>
    </ul>
    <div class="block-content tab-content">
        <div class="tab-pane fade active in" id="btabs-animated-fade-kecheng">
            {% for item in knowledges %}
            <div class="myKnowledges">
                <div class="time">{{ item.createdate }}</div>
                <div class="knowledge-title">
                    <a href="/knowdetail?id={{ item.id }}">{{ item.title }}</a>
                </div>
                <div class="block info">
                    <img src="/public/pic/icon/main.jpg">
                    <span>{{ user.username }}</span>
                </div>
                <div class="handle">
                    <span class="si si-speech" style="margin-right: 40px;cursor: pointer"> 添加评论</span>
                    <span class="fa fa-heart-o" style="margin-right: 40px;cursor: pointer"> 收藏</span>
                    <span class="si si-share-alt" style="cursor: pointer"> 分享</span>
                </div>
            </div>
            {% endfor %}
        </div>
        <div class="tab-pane fade" id="btabs-animated-fade-dongtai">
            <div class="row">
                <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">关注了圈子<span class="pull-right" style="margin-right: 15px;color: #8790A4;">14分钟前</span></div>
                <ul class="nav-users push col-sm-12 col-md-12 col-lg-12" style="padding: 0;margin-bottom: 25px">
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/1.jpg">
                            前端技术交流圈
                            <div class="font-w400 text-muted"><small class="si si-user" style="color: #646464"> 圈主：</small><small style="margin-right: 5%">张伟</small><small class="si si-users" style="color: #646464"> 成员：</small><small style="margin-right: 5%">102</small><small class="si si-bubbles" style="color: #646464"> 话题：</small><small style="margin-right: 5%">13</small><button class="btn btn-xs btn-warning pull-right" type="button" onclick="join(this)">已加入</button></div>
                        </a>
                    </li>
                </ul>
                <!--分割线-->
                <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">收藏了话题<span class="pull-right" style="margin-right: 15px;color: #8790A4;">20分钟前</span></div>
                <div style="margin-left: 15px;margin-bottom: 5px;color: black;font-size: 18px;font-weight: bolder">HTML标签如何使用</div>
                <div class="block" style="margin-left: 15px;margin-bottom: 5px">
                    <img src="pic/icon/2.jpg" style="height: 40px;width: 40px">
                    <span style="margin-left: 15px;font-size: 14px;font-weight: bolder">肖晶</span>
                </div>
                <div style="margin-left: 15px;margin-bottom: 5px;font-size: 15px;color: black">但需要注意的是，对于不同的浏览器，对同一标记符可能会有不完全相同的解释，因而可能会有不同的显示效果。</div>
                <div style="margin-left: 15px;margin-bottom: 25px"><span class="si si-speech" style="margin-right: 40px;cursor: pointer"> 添加评论</span><span class="fa fa-heart" style="margin-right: 40px;cursor: pointer"> 已收藏</span><span class="si si-share-alt" style="cursor: pointer"> 分享</span></div>
                <!--分割线-->
                <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">添加了问题<span class="pull-right" style="margin-right: 15px;color: #8790A4;">26分钟前</span></div>
                <div style="margin-left: 15px;margin-bottom: 25px;color: black;font-size: 18px;font-weight: bolder">HTML中的src是什么？</div>
                <!--分割线-->
                <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">回答了问题<span class="pull-right" style="margin-right: 15px;color: #8790A4;">36分钟前</span></div>
                <div style="margin-left: 15px;margin-bottom: 5px;color: black;font-size: 18px;font-weight: bolder">HTML中的src是什么？</div>
                <div class="block" style="margin-left: 15px;margin-bottom: 5px">
                    <img src="pic/icon/4.jpg" style="height: 40px;width: 40px">
                    <span style="margin-left: 15px;font-size: 14px;font-weight: bolder">王建平</span>
                </div>
                <div style="margin-left: 15px;margin-bottom: 5px;font-size: 15px;color: black">HTML中src是source的缩写，这里是源文件的意思。“source”本身是“源”的意思。是用来向HTML文件导入文件的。</div>
                <div style="margin-left: 15px;margin-bottom: 25px"><span class="si si-speech" style="margin-right: 40px;cursor: pointer"> 添加评论</span><span class="fa fa-heart-o" style="margin-right: 40px;cursor: pointer"> 收藏</span><span class="si si-share-alt" style="cursor: pointer"> 分享</span></div>
                <!--分割线-->
                <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">关注了话题<span class="pull-right" style="margin-right: 15px;color: #8790A4;">1小时前</span></div>
                <div class="block" style="margin-left: 15px;margin-bottom: 25px">
                    <img src="pic/circle/9.jpg" style="height: 60px;width: 60px">
                    <span style="margin-left: 15px;font-size: 18px;font-weight: bolder">人工智能</span>
                </div>
                <!--分割线-->
                <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">关注了话题<span class="pull-right" style="margin-right: 15px;color: #8790A4;">2小时前</span></div>
                <div class="block" style="margin-left: 15px">
                    <img src="pic/circle/10.jpg" style="height: 60px;width: 60px">
                    <span style="margin-left: 15px;font-size: 18px;font-weight: bolder">机器学习</span>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="btabs-animated-fade-tiwen">
            <div class="row">
                <div style="margin-left: 15px;margin-bottom: 5px;color: black;font-size: 18px;font-weight: bolder">HTML中的src是什么？</div>
                <div style="margin-left: 15px"><span style="margin-right: 20px;color: #8790A4">2018.03.26</span><span style="margin-right: 20px;color: #8790A4">1个回答</span><span style="color: #8790A4">1个回复</span></div>
            </div>
        </div>
        <div class="tab-pane fade" id="btabs-animated-fade-huida">
            <div style="margin-left: 15px;margin-bottom: 5px;color: black;font-size: 18px;font-weight: bolder">HTML中的src是什么？</div>
            <div class="block" style="margin-left: 15px;margin-bottom: 5px">
                <img src="pic/icon/4.jpg" style="height: 40px;width: 40px">
                <span style="margin-left: 15px;font-size: 14px;font-weight: bolder">王建平</span>
            </div>
            <div style="margin-left: 15px;margin-bottom: 5px;font-size: 15px;color: black">HTML中src是source的缩写，这里是源文件的意思。“source”本身是“源”的意思。是用来向HTML文件导入文件的。</div>
            <div style="margin-left: 15px;margin-bottom: 15px"><span class="si si-speech" style="margin-right: 40px;cursor: pointer"> 添加评论</span><span class="fa fa-heart-o" style="margin-right: 40px;cursor: pointer"> 收藏</span><span class="si si-share-alt" style="cursor: pointer"> 分享</span></div>
        </div>
        <div class="tab-pane fade" id="btabs-animated-fade-shoucang">
            <div style="margin-left: 15px;margin-bottom: 5px;color: black;font-size: 18px;font-weight: bolder">JS是做什么的？</div>
            <div class="block" style="margin-left: 15px;margin-bottom: 5px">
                <img src="pic/icon/5.jpg" style="height: 40px;width: 40px">
                <span style="margin-left: 15px;font-size: 14px;font-weight: bolder">刘涛</span>
            </div>
            <div style="margin-left: 15px;margin-bottom: 5px;font-size: 15px;color: black">JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，广泛用于客户端的脚本语言，最早是在HTML（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。</div>
            <div style="margin-left: 15px;margin-bottom: 15px"><span class="si si-speech" style="margin-right: 40px;cursor: pointer"> 添加评论</span><span class="fa fa-heart" style="margin-right: 40px;cursor: pointer"> 已收藏</span><span class="si si-share-alt" style="cursor: pointer"> 分享</span></div>
        </div>
        <div class="tab-pane fade" id="btabs-animated-fade-guanzhu">
            <ul class="nav-users push col-sm-12 col-md-12 col-lg-12" style="padding: 0;margin: 0">
                <li>
                    <a>
                        <img class="img-avatar" src="pic/circle/7.jpg">
                        Java交流圈
                        <div class="font-w400 text-muted"><small class="si si-user" style="color: #646464"> 圈主：</small><small style="margin-right: 5%">胡吉</small><small class="si si-users" style="color: #646464"> 成员：</small><small style="margin-right: 5%">78</small><small class="si si-bubbles" style="color: #646464"> 话题：</small><small style="margin-right: 5%">9</small><button class="btn btn-xs btn-warning pull-right" type="button">已加入</button></div>
                    </a>
                </li>
                <li>
                    <a>
                        <img class="img-avatar" src="pic/circle/8.jpg">
                        Android交流圈
                        <div class="font-w400 text-muted"><small class="si si-user" style="color: #646464"> 圈主：</small><small style="margin-right: 5%">杨昊</small><small class="si si-users" style="color: #646464"> 成员：</small><small style="margin-right: 5%">51</small><small class="si si-bubbles" style="color: #646464"> 话题：</small><small style="margin-right: 5%">7</small><button class="btn btn-xs btn-warning pull-right" type="button">已加入</button></div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
{% endblock %}