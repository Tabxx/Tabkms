{% extends '../Public/admin/base.tpl' %}

{% block css %}
<link rel="stylesheet" href="/public/assets/js/plugins/bootstrap-datepicker/bootstrap-datepicker3.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/select2/select2.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/select2/select2-bootstrap.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/jquery-auto-complete/jquery.auto-complete.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/ion-rangeslider/css/ion.rangeSlider.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/ion-rangeslider/css/ion.rangeSlider.skinHTML5.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/dropzonejs/dropzone.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/jquery-tags-input/jquery.tagsinput.min.css">
<!-- Bootstrap and OneUI CSS framework -->
<link rel="stylesheet" href="/public/assets/css/bootstrap.min.css">
<link rel="stylesheet" id="css-main" href="/public/assets/css/oneui.css">
<link rel="stylesheet" href="/public/css/style.css">
<style type="text/css">
    .nav-tabs{
        border: none;
    }
    iframe{
        border: none;
        margin: -10px 0 0 -10px;
    }
</style>
{% endblock %}

{% block main %}

<div class="row">
    <div class="col-sm-3 col-md-3 col-lg-3">
        <div class="block">
            <div class="block-header bg-gray-lighter">
                <button class="btn btn-success push-5-r push-10" type="button"><i class="fa fa-plus"></i> 新建</button>
                <button class="btn btn-warning push-5-r push-10" type="button"><i class="fa fa-pencil"></i> 编辑</button>
            </div>
            <div class="block-content">
                <iframe src="http://192.168.1.104/abc/demo/tree/666.html" style="height: 440px;width: 90%;"></iframe>
            </div>
        </div>
    </div>
    <!-- END Icons Tree -->

    <!--分割线-->

    <div class="col-sm-9 col-md-9 col-lg-9">
        <!--分割线-->

        <div class="col-lg-12">
            <!-- Select2 (Default forms) -->
            <div class="block">
                <div class="block-content block-content-narrow" style="padding: 0 15px;overflow: hidden;">
                    <ul class="select">
                        <li class="select-list">
                            <dl id="select1">
                                <dt>方向:</dt>
                                <dd ><a href="#">全部</a></dd>
                                <dd class="select-all selected"><a href="#">前端技术</a></dd>
                                <dd><a href="#">后端技术</a></dd>
                                <dd><a href="#">移动模块</a></dd>
                            </dl>
                        </li>
                        <li class="select-list">
                            <dl id="select2">
                                <dt>前端技术:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                <dd><a href="#">HTML/CSS</a></dd>
                                <dd><a href="#">JavaScript</a></dd>
                                <dd><a href="#">HTML5</a></dd>
                                <dd><a href="#">CSS3</a></dd>
                                <dd><a href="#">jQuery</a></dd>
                                <dd><a href="#">Node.js</a></dd>
                                <dd><a href="#">Bootstrap</a></dd>
                                <a style="float: right;margin-right: 20px;"  id="more" href="#">更多</a>
                            </dl>
                        </li>
                        <li class="select-list" style="display: none;" id="tab-select4">
                            <dl id="select4">
                                <dd><a href="#"> Angular</a></dd>
                                <dd><a href="#"> React.js</a></dd>
                                <dd><a href="#"> Vue.js</a></dd>
                                <dd><a href="#"> WebApp</a></dd>
                            </dl>
                        </li>
                        <li class="select-list">
                            <dl id="select3">
                                <dt>类别:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                <dd><a href="#">视频</a></dd>
                                <dd><a href="#">音频</a></dd>
                                <dd><a href="#">TXT</a></dd>
                                <dd><a href="#">PPT</a></dd>
                                <dd><a href="#">音频</a></dd>
                                <dd><a href="#">EXCEL</a></dd>
                                <dd><a href="#">EXE</a></dd>
                                <a style="float: right;margin-right: 20px;" href="#">更多</a>
                            </dl>
                        </li>

                        <li class="select-list">
                            <dl id="select5">
                                <dt>时间:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                <dd><a href="#">一天内</a></dd>
                                <dd><a href="#">两天内</a></dd>
                                <dd><a href="#">三天内</a></dd>
                                <dd><a href="#">一周内</a></dd>
                                <dd><a href="#">两周内</a></dd>
                                <dd><a href="#">一个月内</a></dd>
                                <dd><a href="#">两个月内</a></dd>
                            </dl>
                        </li>
                        <li class="select-result">
                            <dl>
                                <dt>已选条件：</dt>
                                <dd class="select-no">暂时没有选择过滤条件</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- END Select2 (Default forms) -->
        </div>

        <!--分割线-->

        <div class="col-lg-12">
            <div class="block block-bordered" style="margin-top: -20px">
                <div class="block-header bg-gray-lighter">
                    <h3 class="block-title">排序： <a href="">发布时间<span class="fa fa-unsorted"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><a href="">浏览次数<span class="fa fa-unsorted"></span></a><a href="newdocument.html"><button class="btn btn-minw btn-success" type="button" style="float: right">新建</button></a></h3>
                </div>
                <div class="block-content">
                    <a href="documentinformation.html" style="margin-bottom: 6px;font-size: 18px">AJAX是什么?有什么用?</a>
                    <p>Ajax 即“Asynchronous Javascript And XML”（异步 JavaScript 和 XML），是指一种创建交互式网页应用的网页开发技术。Ajax是一种在无需重新加载整个网页的情况下，能够更新部分网页的技术。通过在后台与服务器进行少量数据交换，Ajax 可以使网页实现异步更新。这意味着可以在不重新加载整个网页的情况下，对网页的某部分进行更新。</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：刘涛&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-03-09&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：21</p>
                </div>
                <div class="block-content">
                    <a href="" style="margin-bottom: 6px;font-size: 18px">HTML里#代表什么意思</a>
                    <p>#main {color:#FFFF00}<br>这是HTML里面层叠样式表的一个定义句式。第一个#表示该HTML中只要ID为main的标签就套用其后的样式。第二个#表示这是一个16进制颜色代码。</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：王子明&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-03-08&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：32</p>
                </div>
                <div class="block-content">
                    <a href="" style="margin-bottom: 6px;font-size: 18px">CSS是什么?和HTML有什么区别?</a>
                    <p>CSS语言是"Cascading Style Sheets "的缩写,中文翻译为"层叠式样式表单",它是由W3C协会制定并发布的一个网页排版式标准,是对HTML语言功能的补充。主要的用途是对网页中字体、颜色、背景、图像及其他各种元素的控制,使网页能够完全按照设计者的要求来显示。CSS语言是一个用于网页排版的标记性语言。</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：王浩&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-03-04&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：12</p>
                </div>
                <div class="block-content">
                    <a href="" style="margin-bottom: 6px;font-size: 18px">JQuery中html+= ...是什么意思？</a>
                    <p>最近在看Jquery，遇到一个问题就是出现html+= ...；这个html+=不就是等价于html=html+... 么？ 具体见如下代码：...</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：赵景天&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-03-02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：9</p>
                </div>
                <div class="block-content">
                    <a href="" style="margin-bottom: 6px;font-size: 18px">html和asp有什么区别？</a>
                    <p>html是网页制作中最基本的语言格式，广泛应用于WWW上——但它不能制作动态网页；.asp 是动态网页上最常用的格式，由微软推出，拓展性较好、容易编写，可以让爱好者们发挥，使用ASP代码，也可嵌入HTML和脚本，但相比其他动态网页后辍（如.php,.jsp等）之下，它不及其他的安全，应用广泛。</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：张丽&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-03-01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：7</p>
                </div>
                <div class="block-content">
                    <a href="" style="margin-bottom: 6px;font-size: 18px">html格式怎么打开</a>
                    <p>HTML是超文本描述语言，也就是常见的静态网页的语言，一般用IE就可以打开。你说的打不开，其实是看不见里面的内容，这是因为简体的HTML文件在开头部分默认添加了一句language=GB2312，意思是说通知浏览器用编码GB2312也就是简体字来显示里面的内容，而繁体字用的是Big5码，所以你就看不见了。</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：李嘉南&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-02-28&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：36</p>
                </div>
                <div class="block-content">
                    <a href="" style="margin-bottom: 6px;font-size: 18px">HTML和DHTML有什么区别?</a>
                    <p>HTML是一种基本的WEB网页设计语言，XHTML是一个基于XML的置标语言，看起来与HTML有些相象，只有一些小的但重要的区别，XHTML就是一个扮演着类似HTML的角色的XML，所以，本质上说， XHTML是一个过渡技术，结合了XML(有几分)的强大功能及HTML(大多数)的简单特性。XHTML是一种为适应XML而重新改造的HTML。当 XML越来越成为一种趋势，就出现了这样一个问题:如...</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：张珂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-02-24&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：65</p>
                </div>
                <div class="block-content">
                    <a href="" style="margin-bottom: 6px;font-size: 18px">如何编辑HTML文档</a>
                    <p>可以使用DreamWeaver、FrontPage等软件编写HTML文档。这些软件帮助编写者构建了大部分的HTML文档。当需要有目的地学习HTML语言时，往往选择简单的文本工具，如Windows自带的记事本，或者功能更丰富的文本编辑软件如Ultra-Edit。 使用Windows记事本编辑并预览HTML文档的方法非常简单。首先新建文本文档，在其中填上HTML代码，保存并关闭。将其扩展名由.TXT改为...</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：马冬梅&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-02-21&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：4</p>
                </div>
                <div class="dataTables_paginate paging_full_numbers" id="DataTables_Table_2_paginate" style="margin-left: 30%">
                    <ul class="pagination">
                        <li class="paginate_button first disabled" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_first"><a href="#">First</a></li>
                        <li class="paginate_button previous disabled" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_previous"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li class="paginate_button active" aria-controls="DataTables_Table_2" tabindex="0"><a href="#">1</a></li>
                        <li class="paginate_button " aria-controls="DataTables_Table_2" tabindex="0"><a href="#">2</a></li>
                        <li class="paginate_button " aria-controls="DataTables_Table_2" tabindex="0"><a href="#">3</a></li>
                        <li class="paginate_button next" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        <li class="paginate_button last" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_last"><a href="#">Last</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

{% endblock %}