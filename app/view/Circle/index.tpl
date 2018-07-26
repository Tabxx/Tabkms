{% extends '../Public/base.tpl' %}

{% block css %}
<link rel="stylesheet" href="/public/css/tagindx.css" />
{% endblock %}


{% block body %}
<div class="content">
<!--内容-->
<div class="content bg-image" style="background-image: url('/public/pic/background/1.jpg')">
    <div class="push-50-t push-15 clearfix">
        <div class="push-15-r pull-left animated fadeIn">
            <img class="img-avatar img-avatar-thumb" src="/public/pic/icon/main.jpg" alt="">
        </div>
        <h1 class="h2 text-white push-5-t animated zoomIn">Tab</h1>
        <h2 class="h5 text-white-op animated zoomIn">UI 设计师
            <a href="newcircle.html">
                <button class="btn btn-minw btn-success pull-right" type="button">创建知识圈</button>
            </a>
        </h2>
    </div>
</div>

<div class="content bg-white border-b">
    <div class="row items-push text-uppercase">
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
            <div class="font-w700 text-gray-darker animated fadeIn">积分</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="/score">980</a>
        </div>
        <div class="col-xs-4 col-sm-4">
            <div class="font-w700 text-gray-darker animated fadeIn">话题</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="javascript:void(0)">27</a>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
            <div class="font-w700 text-gray-darker animated fadeIn">圈子</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="javascript:void(0)">13</a>
        </div>
    </div>
</div>



<!-- Block Tabs Animated Slide Up -->
<div class="block" style="margin-top: 20px">
    <ul class="nav nav-tabs nav-justified" data-toggle="tabs">
        <li class="active">
            <a href="#btabs-animated-slideup-tuiquan">推荐圈子</a>
        </li>
        <li class="">
            <a href="#btabs-animated-slideup-huoquan">已加圈子</a>
        </li>
    </ul>
    <div class="block-content tab-content">
        <div class="tab-pane fade fade-up active in" id="btabs-animated-slideup-tuiquan">
            <div class="block-content">
                <ul class="nav-users push col-sm-12 col-md-12 col-lg-6" style="padding: 0;margin: 0">
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/1.jpg"> 前端技术交流圈
                            <div class="font-w400 text-muted">
                                <small class="si si-user" style="color: #646464"> 圈主：</small>
                                <small style="margin-right: 5%">张伟</small>
                                <small class="si si-users" style="color: #646464"> 成员：</small>
                                <small style="margin-right: 5%">102</small>
                                <small class="si si-bubbles" style="color: #646464"> 话题：</small>
                                <small style="margin-right: 5%">13</small>
                                <button class="btn btn-xs btn-success pull-right" type="button"
                                        onclick="join(this)">+ 加入</button>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/2.jpg"> JavaScript交流圈
                            <div class="font-w400 text-muted">
                                <small class="si si-user" style="color: #646464"> 圈主：</small>
                                <small style="margin-right: 5%">沈晓华</small>
                                <small class="si si-users" style="color: #646464"> 成员：</small>
                                <small style="margin-right: 5%">342</small>
                                <small class="si si-bubbles" style="color: #646464"> 话题：</small>
                                <small style="margin-right: 5%">39</small>
                                <button class="btn btn-xs btn-success pull-right" type="button"
                                        onclick="join(this)">+ 加入</button>
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="nav-users push col-sm-12 col-md-12 col-lg-6" style="padding: 0;margin: 0">
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/3.jpg"> HTML交流圈
                            <div class="font-w400 text-muted">
                                <small class="si si-user" style="color: #646464"> 圈主：</small>
                                <small style="margin-right: 5%">董建平</small>
                                <small class="si si-users" style="color: #646464"> 成员：</small>
                                <small style="margin-right: 5%">78</small>
                                <small class="si si-bubbles" style="color: #646464"> 话题：</small>
                                <small style="margin-right: 5%">9</small>
                                <button class="btn btn-xs btn-success pull-right" type="button"
                                        onclick="join(this)">+ 加入</button>
                                <!--<button class="btn btn-xs btn-warning pull-right" type="button"
                                    onclick="join(this)">已加入</button>-->
                            </div>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/4.jpg"> PHP交流圈
                            <div class="font-w400 text-muted">
                                <small class="si si-user" style="color: #646464"> 圈主：</small>
                                <small style="margin-right: 5%">冯媛</small>
                                <small class="si si-users" style="color: #646464"> 成员：</small>
                                <small style="margin-right: 5%">51</small>
                                <small class="si si-bubbles" style="color: #646464"> 话题：</small>
                                <small style="margin-right: 5%">7</small>
                                <button class="btn btn-xs btn-success pull-right" type="button"
                                        onclick="join(this)">+ 加入</button>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-pane fade fade-up" id="btabs-animated-slideup-huoquan">
            <div class="block-content">
                <ul class="nav-users push col-sm-12 col-md-12 col-lg-6" style="padding: 0;margin: 0">
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/5.jpg"> Apache交流圈
                            <div class="font-w400 text-muted">
                                <small class="si si-user" style="color: #646464"> 圈主：</small>
                                <small style="margin-right: 5%">马迪</small>
                                <small class="si si-users" style="color: #646464"> 成员：</small>
                                <small style="margin-right: 5%">102</small>
                                <small class="si si-bubbles" style="color: #646464"> 话题：</small>
                                <small style="margin-right: 5%">13</small>
                                <button class="btn btn-xs btn-warning pull-right" type="button">已加入</button>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/6.jpg"> AJAX交流圈
                            <div class="font-w400 text-muted">
                                <small class="si si-user" style="color: #646464"> 圈主：</small>
                                <small style="margin-right: 5%">张建华</small>
                                <small class="si si-users" style="color: #646464"> 成员：</small>
                                <small style="margin-right: 5%">342</small>
                                <small class="si si-bubbles" style="color: #646464"> 话题：</small>
                                <small style="margin-right: 5%">39</small>
                                <button class="btn btn-xs btn-warning pull-right" type="button">已加入</button>
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="nav-users push col-sm-12 col-md-12 col-lg-6" style="padding: 0;margin: 0">
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/7.jpg"> Java交流圈
                            <div class="font-w400 text-muted">
                                <small class="si si-user" style="color: #646464"> 圈主：</small>
                                <small style="margin-right: 5%">胡吉</small>
                                <small class="si si-users" style="color: #646464"> 成员：</small>
                                <small style="margin-right: 5%">78</small>
                                <small class="si si-bubbles" style="color: #646464"> 话题：</small>
                                <small style="margin-right: 5%">9</small>
                                <button class="btn btn-xs btn-warning pull-right" type="button">已加入</button>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a>
                            <img class="img-avatar" src="/public/pic/circle/8.jpg"> Android交流圈
                            <div class="font-w400 text-muted">
                                <small class="si si-user" style="color: #646464"> 圈主：</small>
                                <small style="margin-right: 5%">杨昊</small>
                                <small class="si si-users" style="color: #646464"> 成员：</small>
                                <small style="margin-right: 5%">51</small>
                                <small class="si si-bubbles" style="color: #646464"> 话题：</small>
                                <small style="margin-right: 5%">7</small>
                                <button class="btn btn-xs btn-warning pull-right" type="button">已加入</button>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- END Block Tabs Animated Slide Up -->



<!-- Block Tabs Animated Slide Up -->
<div class="block" style="margin-top: 20px">
    <ul class="nav nav-tabs nav-justified" data-toggle="tabs">
        <li class="active">
            <a href="#btabs-animated-slideup-tuijian">关注话题</a>
        </li>
        <li class="">
            <a href="#btabs-animated-slideup-zuixin">推荐话题</a>
        </li>
    </ul>
    <div class="block-content tab-content">
        <div class="tab-pane fade fade-up active in" id="btabs-animated-slideup-tuijian">
            <div class="block block-transparent pull-r-l">
                <div class="block-content">
                    <ul class="nav-users push">
                        <li>
                            <a href="topicdetails.html">
                                <img class="img-avatar" src="/public/pic/icon/2.jpg" alt=""> HTML标签如何使用
                                <div class="font-w400 text-muted">
                                    <small>肖晶</small>
                                    <small class="pull-right">发表于 2018.01.04</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/1.jpg" alt=""> JavaScript如何获取表单元素
                                <div class="font-w400 text-muted">
                                    <small>王敏</small>
                                    <small class="pull-right">发表于 2018.01.04</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/4.jpg" alt=""> AJAX的实现方式
                                <div class="font-w400 text-muted">
                                    <small>李海</small>
                                    <small class="pull-right">发表于 2018.01.03</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/5.jpg" alt=""> DOM操作
                                <div class="font-w400 text-muted">
                                    <small>刘丹丹</small>
                                    <small class="pull-right">发表于 2018.01.02</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/6.jpg" alt=""> HTML5应用缓存
                                <div class="font-w400 text-muted">
                                    <small>于丽华</small>
                                    <small class="pull-right">发表于 2018.01.02</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/3.jpg" alt=""> 响应式布局的实现
                                <div class="font-w400 text-muted">
                                    <small>胡一菲</small>
                                    <small class="pull-right">发表于 2018.01.02</small>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tab-pane fade fade-up" id="btabs-animated-slideup-zuixin">
            <div class="block block-transparent pull-r-l">
                <div class="block-content">
                    <ul class="nav-users push">
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/6.jpg" alt=""> JQuery选择器的使用
                                <div class="font-w400 text-muted">
                                    <small>赵健</small>
                                    <small class="pull-right">发表于 2018.01.06</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/5.jpg" alt=""> XML验证器
                                <div class="font-w400 text-muted">
                                    <small>谭晶晶</small>
                                    <small class="pull-right">发表于 2018.01.06</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/4.jpg" alt=""> JQuery Get/Post
                                <div class="font-w400 text-muted">
                                    <small>杨一山</small>
                                    <small class="pull-right">发表于 2018.01.06</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/3.jpg" alt=""> JSON简介
                                <div class="font-w400 text-muted">
                                    <small>葛建华</small>
                                    <small class="pull-right">发表于 2018.01.06</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/2.jpg" alt=""> E4X HowTo
                                <div class="font-w400 text-muted">
                                    <small>王建平</small>
                                    <small class="pull-right">发表于 2018.01.06</small>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/1.jpg" alt=""> WMLScript调用
                                <div class="font-w400 text-muted">
                                    <small>林佳</small>
                                    <small class="pull-right">发表于 2018.01.06</small>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END Block Tabs Animated Slide Up -->
</div>
{% endblock %}

{% block modal %}
<button style="display: none;" class="btn btn-info tab-auto-click" data-toggle="modal" data-target="#modal-fadein" type="button">Launch Modal</button>
<!-- Fade In Modal -->
<div class="modal fade" id="modal-fadein" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="block block-themed block-transparent remove-margin-b">
                <div class="block-header bg-primary-dark">
                    <ul class="block-options">
                        <li>
                            <button data-dismiss="modal" type="button">
                                <i class="si si-close"></i>
                            </button>
                        </li>
                    </ul>
                    <h3 class="block-title">选择标签</h3>
                </div>
                <div class="block-content">
                    <div class="mainPart">
                        <div class="leftBtn" onclick="moveLeft(this)">
                            <</div>
                        <div class="rightBtn" onclick="moveRight(this)">></div>
                        <div class="options">
                        </div>
                        <div style="clear: both;"></div>
                        <div class="mainMiddle" id="mainMiddle">
                            <div class="m_point lei1">
                                <div class="m_title">前端技术</div>
                                <div class="skillbar clearfix PG" id="PG" data-type="major" data-percent="PG">
                                    <div class="skillbar-title">
                                        <span>HTML5</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix PS" id="PS" data-type="major" data-percent="PS">
                                    <div class="skillbar-title">
                                        <span>CSS3</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix SZ" id="SZ" data-type="major" data-percent="SZ">
                                    <div class="skillbar-title">
                                        <span>JavaScript</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix CP" id="CP" data-type="major" data-percent="CP">
                                    <div class="skillbar-title">
                                        <span>jQuery</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix SM" id="SM" data-type="major" data-percent="SM">
                                    <div class="skillbar-title">
                                        <span>Bootstrap</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                            </div>
                            <div class="m_point lei2">
                                <div class="m_title">后端技术</div>
                                <div class="skillbar clearfix ZG" id="ZG" data-type="nationality" data-percent="ZG">
                                    <div class="skillbar-title">
                                        <span>Java</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix DG " id="DG" data-type="nationality" data-percent="DG">
                                    <div class="skillbar-title">
                                        <span>PHP</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix QT" id="QT" data-type="nationality" data-percent="QT">
                                    <div class="skillbar-title">
                                        <span>Python</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                            </div>
                            <div class="m_point lei3">
                                <div class="m_title">数据库</div>
                                <div class="skillbar clearfix ZZ" id="ZZ" data-type="csi" data-percent="ZZ">
                                    <div class="skillbar-title">
                                        <span>Mysql</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix JZ" id="JZ" data-type="csi" data-percent="JZ">
                                    <div class="skillbar-title">
                                        <span>mongodb</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                            </div>
                            <div class="m_point lei4">
                                <div class="m_title">人工智能</div>
                                <div class="skillbar clearfix BK" data-type="he" id="BK" data-percent="BK">
                                    <div class="skillbar-title">
                                        <span>机器学习</span>
                                    </div>
                                    <div class="skillbar-bar barbg "></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix SS" data-type="he" id="SS" data-percent="SS">
                                    <div class="skillbar-title">
                                        <span>深度学习</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                                <div class="skillbar clearfix BS" data-type="he" id="BS" data-percent="BS">
                                    <div class="skillbar-title">
                                        <span>Python</span>
                                    </div>
                                    <div class="skillbar-bar barbg"></div>
                                    <div class="skill-bar-percent"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-default" type="button" data-dismiss="modal">取消</button>
                <button class="btn btn-sm btn-primary" type="button" data-dismiss="modal"><i class="fa fa-check"></i> 确定</button>
            </div>
        </div>
    </div>
</div>
<!-- END Fade In Modal -->
{% endblock %}

{% block javascript %}
<script>
    var n = 0;

    function join(j) {
        n %= 2;
        if (n == 1) {
            j.setAttribute("class", "btn btn-xs btn-success pull-right");
            j.innerHTML = "+ 加入";
            var layer = layui.layer;
            layer.msg('已退出知识圈！');
        } else {
            j.setAttribute("class", "btn btn-xs btn-warning pull-right");
            j.innerHTML = "已加入";
            var layer = layui.layer;
            layer.msg('成功加入知识圈！');
            setTimeout('window.location.href="/circleinformation"', 1500);
        }
        n++;
    }

    $('.tab-auto-click').trigger("click");
</script>
<script src="/public/js/index.js"></script>
{% endblock %}