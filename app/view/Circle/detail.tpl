{% extends '../Public/base.tpl' %}

{% block body %}
<!--内容-->
<div class="block">
    <div class="bg-image" style="background-image: url('/public/pic/background/2.jpg');">
        <div class="block-content bg-primary-dark-op text-center overflow-hidden">
            <div class="push-30-t push animated fadeInDown">
                <img class="img-avatar img-avatar96 img-avatar-thumb" src="/public/pic/icon/2.jpg" alt="">
            </div>
            <div class="push-30 animated fadeInUp">
                <h2 class="h4 font-w600 text-white push-5">肖晶</h2>
            </div>
        </div>
    </div>
    <div class="block-content" style="height: 55px">
        <span style="font-weight: bolder;color: #51A6F3;margin-right: 5%;cursor: pointer">肖晶</span><span style="color: #979797;margin-right: 5%;cursor: pointer">发表于：2018.01.04</span><span style="color: #979797;margin-right: 5%;cursor: pointer">最后回复：4天前</span><span style="color: #979797;margin-right: 5%;cursor: pointer">阅读：8</span>
    </div>
</div>

<!--分割线-->

<div class="block">
    <div class="block-header bg-gray-lighter">
        <h3 class="block-title" style="font-size: 20px;">HTML标签如何使用</h3>
    </div>
    <div class="block-content">
        <p style="text-indent: 2em;font-size: 16px;">超级文本标记语言是标准通用标记语言下的一个应用，也是一种规范，一种标准，超文本标记语言它通过标记符号来标记要显示的网页中的各个部分。网页文件本身是一种文本文件，通过在文本文件中添加标记符，可以告诉浏览器如何显示其中的内容（如：文字如何处理，画面如何安排，图片如何显示等）。浏览器按顺序阅读网页文件，然后根据标记符解释和显示其标记的内容，对书写出错的标记将不指出其错误，且不停止其解释执行过程，编制者只能通过显示效果来分析出错原因和出错部位。但需要注意的是，对于不同的浏览器，对同一标记符可能会有不完全相同的解释，因而可能会有不同的显示效果。</p>
        <p style="text-indent: 2em;font-size: 16px;">
            <b>1、HTML的概述：</b>
        </p>
        <p style="text-indent: 2em;font-size: 16px;">

            html全称为HyperText Mackeup Language，译为<span style="color: #0000FF;font-weight: bold;">超文本标记语言</span>，不是一种编程语言，是一种描述性的标记语言，用于描述超文本中内容的显示方式。比如字体什么颜色，大小等。<br />
            <span class="tab-span-2em"></span>超文本：音频，视频，图片称为超文本。<br />
            <span class="tab-span-2em"></span>标记 ：<英文单词或者字母>称为标记，一个HTML页面都是由各种标记组成。<br />
            <span class="tab-span-2em"></span><b>作用：</b>HTML是负责描述文档语义的语言。<br />
            <span class="tab-span-2em"></span>注意：HTML语言不是一个编程语言(有编译过程)，而是一个标记语言(<span style="color: #0000FF;font-weight: bold;">没有编译过程</span>)，HTML页面直接由浏览器解析执行。<br/>

            <span class="tab-span-2em"></span><b>HTML是负责描述文档语义的语言</b><br>

            <span class="tab-span-2em"></span>html中，除了语义，其他什么都没有。

            html是一个纯本文文件（就是用txt文件改名而成），用一些标签来描述文字的语义，这些标签在浏览器里面是看不到的，所以称为“超文本”，所以就是“超文本标记语言”了。
            所以，接下来，我们肯定要学习一堆html中的标签对儿，这些标签对儿能够给文本不同的语义。
        </p>
        <p style="text-indent: 2em;font-size: 16px;">
            <b>2、HTML的历史：</b><br>
            <img class="img-responsive" src="/public/assets/img/other/html.png">
            我们专门来对XHTML做一个介绍。<br />

            <b>XHTML介绍：</b><br />
            <span class="tab-span-2em"></span>XHTML：Extensible Hypertext Markup Language，可扩展超文本标注语言。<br />
            <span class="tab-span-2em"></span>XHTML的主要目的是为了取代HTML，也可以理解为HTML的升级版。<br />
            <span class="tab-span-2em"></span>HTML的标记书写很不规范，会造成其它的设备(ipad、手机、电视等)无法正常显示。<br />
            <span class="tab-span-2em"></span>XHTML与HTML4.0的标记基本上一样。<br />
            <span class="tab-span-2em"></span>XHTML是严格的、纯净的HTML。<br />

            <span class="tab-span-2em"></span>我们稍后将对XHTML的编写规范进行介绍。<br />
        </p>
    </div>
</div>

<!--分割线-->

<div class="block block-rounded">
    <div class="block-header bg-gray-lighter">
        <span class="fa fa-thumbs-o-up" style="cursor: pointer;margin-right: 5%"> 5</span>
        <span class="fa fa-thumbs-o-down" style="cursor: pointer;margin-right: 5%"> 2</span>
        <span class="fa fa-star-o" style="cursor: pointer"> 4</span>
        <a href="updatetopic.html"><button class="btn btn-sm btn-success pull-right" type="button" style="margin-left: 20px"><span class="fa fa-refresh"></span> 更新</button></a>
        <a href="topiccorrect.html"><button class="btn btn-sm btn-danger pull-right" type="button" style="margin-left: 20px"><span class="fa fa-pencil-square-o"></span> 纠错</button></a>
        <button id="guanzhu" class="btn btn-sm btn-primary pull-right" type="button">+ 关注</button>
    </div>
    <ul class="nav nav-tabs" data-toggle="tabs">
        <li class="active">
            <a href="#btabs-animated-fade-gengxin">更新记录</a>
        </li>
        <li class="">
            <a href="#btabs-animated-fade-jiucuo">纠错</a>
        </li>
        <li class="">
            <a href="#btabs-animated-fade-huifu">回复</a>
        </li>
    </ul>
    <div class="block-content tab-content">
        <div class="tab-pane fade active in" id="btabs-animated-fade-gengxin">
            <ul class="nav-users push">
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/11.jpg">
                        马丹婷
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>更新了内容</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/12.jpg">
                        王鹏
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>更新了内容</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/13.jpg">
                        冯珂
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>更新了内容</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/14.jpg">
                        顾建国
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>更新了内容</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/15.jpg">
                        张子栋
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>更新了内容</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/16.jpg">
                        何军
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>更新了内容</small></div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tab-pane fade" id="btabs-animated-fade-jiucuo">
            <ul class="nav-users push">
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/13.jpg">
                        冯珂
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>纠正了错误</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/14.jpg">
                        顾建国
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>纠正了错误</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/11.jpg">
                        马丹婷
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>纠正了错误</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/12.jpg">
                        王鹏
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>纠正了错误</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/15.jpg">
                        张子栋
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>纠正了错误</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/16.jpg">
                        何军
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>纠正了错误</small></div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tab-pane fade" id="btabs-animated-fade-huifu">
            <ul class="nav-users push">
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/15.jpg">
                        张子栋
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>回复了话题</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/16.jpg">
                        何军
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>回复了话题</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/11.jpg">
                        马丹婷
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>回复了话题</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/12.jpg">
                        王鹏
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>回复了话题</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/13.jpg">
                        冯珂
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 11:24</small><small>回复了话题</small></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-avatar" src="/public/pic/icon/14.jpg">
                        顾建国
                        <div class="font-w400 text-muted"><small style="margin-right: 15px">2018.01.06 10:56</small><small>回复了话题</small></div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<!--分割线-->

<div class="block">
    <div class="block-header bg-gray-lighter">
        <h3 class="block-title"><span class="si si-speech"></span> 发表回复</h3>
    </div>
    <div class="block-content">
        <div class="block">
            <div class="block-content">
                <form class="form-horizontal" action="page_forms_editors.html" method="post" onsubmit="return false;">
                    <div class="form-group">
                        <div class="col-xs-12">
                            <!-- CKEditor Container -->
                            <textarea id="js-ckeditor" name="ckeditor"></textarea>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="block">
            <div class="block-content block-content-full">
                <!-- DropzoneJS Container -->
                <form class="dropzone dz-clickable" action="base_forms_pickers_more.html"><div class="dz-default dz-message"><span>点击或拖拽文档到此处上传</span></div></form>
            </div>
        </div>
        <div class="block">
                                <span style="margin-left: 18px">
                                    <label class="css-input css-checkbox css-checkbox-primary">
                                        <input type="checkbox"><span></span> 匿名回复
                                    </label>
                                </span>
            <span>
                                    <button class="btn btn-minw btn-primary pull-right" type="button" style="margin-right: 18px">回复</button>
                                </span>
        </div>
    </div>
</div>

<!--分割线-->

{% endblock %}

{% block javascript %}
<!-- Page JS Plugins -->
<script src="/public/assets/js/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="/public/assets/js/plugins/bootstrap-datetimepicker/moment.min.js"></script>
<script src="/public/assets/js/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="/public/assets/js/plugins/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/public/assets/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="/public/assets/js/plugins/select2/select2.full.min.js"></script>
<script src="/public/assets/js/plugins/masked-inputs/jquery.maskedinput.min.js"></script>
<script src="/public/assets/js/plugins/jquery-auto-complete/jquery.auto-complete.min.js"></script>
<script src="/public/assets/js/plugins/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
<script src="/public/assets/js/plugins/dropzonejs/dropzone.min.js"></script>
<script src="/public/assets/js/plugins/jquery-tags-input/jquery.tagsinput.min.js"></script>

<!-- Page JS Code -->
<script src="/public/assets/js/pages/base_forms_pickers_more.js"></script>
<script>
    jQuery(function () {
        // Init page helpers (BS Datepicker + BS Datetimepicker + BS Colorpicker + BS Maxlength + Select2 + Masked Input + Range Sliders + Tags Inputs plugins)
        App.initHelpers(['datepicker', 'datetimepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider', 'tags-inputs']);
    });
</script>
<!-- Page JS Plugins -->
<script src="/public/assets/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="/public/assets/js/plugins/select2/select2.full.min.js"></script>
<script src="/public/assets/js/plugins/dropzonejs/dropzone.min.js"></script>
<script src="/public/assets/js/plugins/jquery-tags-input/jquery.tagsinput.min.js"></script>
<script src="/public/assets/js/plugins/ckeditor/ckeditor.js"></script>

<!-- Page JS Code -->
<script>
    jQuery(function () {
        // Init page helpers (BS Maxlength + Select2 + Tags Inputs + CKEditor + Appear + CountTo plugins)
        App.initHelpers(['maxlength', 'select2', 'tags-inputs', 'ckeditor', 'appear', 'appear-countTo']);
    });
</script>
<script>
    var n=1;
    document.getElementById("guanzhu").onclick=function () {
        n%=2;
        if(n==1){
            document.getElementById("guanzhu").setAttribute("class","btn btn-sm btn-warning pull-right");
            document.getElementById("guanzhu").innerHTML="已关注";
        }else{
            document.getElementById("guanzhu").setAttribute("class","btn btn-sm btn-primary pull-right");
            document.getElementById("guanzhu").innerHTML="+ 关注";
        }
        n++;
    }
</script>
{% endblock %}