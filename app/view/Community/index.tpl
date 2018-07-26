{% extends '../Public/base.tpl' %}

{% block css %}
<link rel="stylesheet" href="/public/assets/js/plugins/simplemde/simplemde.min.css">
<style type="text/css">
    .bg-gray-lighter{background-color: #f5f5f5;}
    .editor-statusbar{
        display: none;
    }
    .bg-primary{
        color: #333;
    }
    .my-nav a.nav-submenu:before{
        display: none;
    }
    .tab-content a{
        color: #5c90d2;
    }
    .tab-content a:hover{
        color: #337ab7;
    }
    .question-title,
    .tab-content .si-question{
        font-size: 18px !important;
    }
</style>
{% endblock %}

{% block body %}
<div class="content">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12" style="padding:0;margin-bottom: 20px">
            <!-- Block Tabs Justified Default Style -->
            <div class="block" style="margin-bottom: -4px">
                <ul class="nav nav-tabs nav-tabs-alt nav-justified" data-toggle="tabs">
                    <li class="">
                        <a data-toggle="modal" data-target="#modal-slideup" href=""><i class="fa fa-question-circle-o" style="font-size: 20px"></i> 提问</a>
                    </li>
                    <li class="">
                        <a data-toggle="modal" data-target="#modal-fadein" href=""><i class="fa fa-share-square-o" style="font-size: 20px"></i> 分享</a>
                    </li>
                </ul>
            </div>
            <!-- END Block Tabs Justified Alternative Style -->
        </div>
    </div>

    <!--分割线-->

    <div class="row">
        <div class="col-sm-8 col-md-8 col-lg-8" style="padding: 0">
            <div class="block">
                <ul class="nav nav-tabs nav-justified" data-toggle="tabs">
                    <li class="active">
                        <a href="#btabs-alt-static-justified-zonghe">综合</a>
                    </li>
                    <li class="">
                        <a href="#btabs-alt-static-justified-jinghua">分享</a>
                    </li>
                    <li class="">
                        <a href="#btabs-alt-static-justified-weijie">未结</a>
                    </li>
                    <li class="">
                        <a href="#btabs-alt-static-justified-yijie">已结</a>
                    </li>
                </ul>
                <div class="block-content tab-content">
                    <div class="tab-pane active" id="btabs-alt-static-justified-zonghe">
                        {% for item in questions %}
                        <h4 class="font-w300 push-15">
                            <a class="si si-question"></a>
                            <a class="question-title" href="/questiondetail?id={{ item.id }}">{{ item.title }}</a>
                        </h4>
                        <p style="color: #A2A6AD">{{ item.username }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ item.createdate }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>{{ item.browse_Number }}<a style="float: right" class="si si-bubble">{{ item.answer.length }}</a></p>
                        {% endfor %}

                    </div>
                    <div class="tab-pane" id="btabs-alt-static-justified-weijie">
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">checkbox监听事件bug</a></h4>
                        <p style="color: #A2A6AD">jarrai&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>16<a style="float: right" class="si si-bubble">23</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">enter回车form表单提交</a></h4>
                        <p style="color: #A2A6AD">tian_宇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>34<a style="float: right" class="si si-bubble">31</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">form取值use请教</a></h4>
                        <p style="color: #A2A6AD">LessdoMore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>50<a style="float: right" class="si si-bubble">45</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">能不能出一套webpack打包layui的教程啊</a></h4>
                        <p style="color: #A2A6AD">共产主义接班人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>20<a style="float: right" class="si si-bubble">12</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">checkbox监听事件bug</a></h4>
                        <p style="color: #A2A6AD">jarrai&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>16<a style="float: right" class="si si-bubble">23</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">enter回车form表单提交</a></h4>
                        <p style="color: #A2A6AD">tian_宇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>34<a style="float: right" class="si si-bubble">31</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">form取值use请教</a></h4>
                        <p style="color: #A2A6AD">LessdoMore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>50<a style="float: right" class="si si-bubble">45</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">layui layedit怎么使用，提交获取不到内容，有谁用过了吗？</a></h4>
                        <p style="color: #A2A6AD">jdasan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>35<a style="float: right" class="si si-bubble">43</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">form取值use请教</a></h4>
                        <p style="color: #A2A6AD">LessdoMore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>50<a style="float: right" class="si si-bubble">45</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-question"></a> <a href="">能不能出一套webpack打包layui的教程啊</a></h4>
                        <p style="color: #A2A6AD">共产主义接班人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>20<a style="float: right" class="si si-bubble">12</a></p>
                    </div>
                    <div class="tab-pane" id="btabs-alt-static-justified-yijie">
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">enter回车form表单提交</a></h4>
                        <p style="color: #A2A6AD">tian_宇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>34<a style="float: right" class="si si-bubble">31</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">form取值use请教</a></h4>
                        <p style="color: #A2A6AD">LessdoMore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>50<a style="float: right" class="si si-bubble">45</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">select input表单元素同一行4个 如何自适应横向铺满</a></h4>
                        <p style="color: #A2A6AD">易碎&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>67<a style="float: right" class="si si-bubble">10</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">写mobile段，流加载需要写成滑动屏幕加载形式</a></h4>
                        <p style="color: #A2A6AD">品味生活&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>54<a style="float: right" class="si si-bubble">66</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">layui layedit怎么使用，提交获取不到内容，有谁用过了吗？</a></h4>
                        <p style="color: #A2A6AD">jdasan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>35<a style="float: right" class="si si-bubble">43</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">能不能出一套webpack打包layui的教程啊</a></h4>
                        <p style="color: #A2A6AD">共产主义接班人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>20<a style="float: right" class="si si-bubble">12</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">checkbox监听事件bug</a></h4>
                        <p style="color: #A2A6AD">jarrai&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>16<a style="float: right" class="si si-bubble">23</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">form取值use请教</a></h4>
                        <p style="color: #A2A6AD">LessdoMore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>50<a style="float: right" class="si si-bubble">45</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">select input表单元素同一行4个 如何自适应横向铺满</a></h4>
                        <p style="color: #A2A6AD">易碎&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>67<a style="float: right" class="si si-bubble">10</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-grid"></a> <a href="">enter回车form表单提交</a></h4>
                        <p style="color: #A2A6AD">tian_宇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>34<a style="float: right" class="si si-bubble">31</a></p>
                    </div>
                    <div class="tab-pane" id="btabs-alt-static-justified-jinghua">
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">form取值use</a></h4>
                        <p style="color: #A2A6AD">LessdoMore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>50<a style="float: right" class="si si-bubble">45</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">select input表单元素同一行4个自适应横向铺满</a></h4>
                        <p style="color: #A2A6AD">易碎&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>67<a style="float: right" class="si si-bubble">10</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">写mobile段，流加载需要写成滑动屏幕加载形式</a></h4>
                        <p style="color: #A2A6AD">品味生活&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>54<a style="float: right" class="si si-bubble">66</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">layui layedit怎么使用，提交获取不到内容，有谁用过了吗？</a></h4>
                        <p style="color: #A2A6AD">jdasan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>35<a style="float: right" class="si si-bubble">43</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">能不能出一套webpack打包layui的教程啊</a></h4>
                        <p style="color: #A2A6AD">共产主义接班人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>20<a style="float: right" class="si si-bubble">12</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">checkbox监听事件bug</a></h4>
                        <p style="color: #A2A6AD">jarrai&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>16<a style="float: right" class="si si-bubble">23</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">enter回车form表单提交</a></h4>
                        <p style="color: #A2A6AD">tian_宇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>34<a style="float: right" class="si si-bubble">31</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">form取值use请教</a></h4>
                        <p style="color: #A2A6AD">LessdoMore&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>50<a style="float: right" class="si si-bubble">45</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">select input表单元素同一行4个自适应横向铺满</a></h4>
                        <p style="color: #A2A6AD">易碎&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>67<a style="float: right" class="si si-bubble">10</a></p>
                        <h4 class="font-w300 push-15"><a class="si si-share"></a> <a href="">写mobile段，流加载需要写成滑动屏幕加载形式</a></h4>
                        <p style="color: #A2A6AD">品味生活&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1天前&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="si si-fire"></a>54<a style="float: right" class="si si-bubble">66</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-1 col-md-1 col-lg-1" style="padding: 0"></div>
        <div class="col-sm-3 col-md-3 col-lg-3" style="padding: 0">
            <div class="block">
                <ul class="nav nav-tabs" data-toggle="tabs">
                    <li class="active">
                        <a href="#btabs-static-ask">我的提问</a>
                    </li>
                    <li class="">
                        <a href="#btabs-static-answer">我的回答</a>
                    </li>
                </ul>
                <div class="block-content tab-content">
                    <div class="tab-pane active" id="btabs-static-ask">
                        {% for item in myques %}
                        <p class="tab-time" style="font-size: 12px;color: #B1AAAA">{{ item.createdate }}</p>
                        <p style="font-size: 16px;margin-top: -20px;"><a style="color: #999;" href="/questiondetail?id={{ item.id }}">{{ item.title }}</a></p>
                        {% endfor %}
                    </div>
                    <div class="tab-pane" id="btabs-static-answer">
                        <p style="font-size: 12px;color: #B1AAAA">2018.03.29</p>
                        <p style="font-size: 18px;margin-top: -20px"><span class="si si-check" style="color:#56B560;"></span> HTML如何换行？</p>
                        <p style="font-size: 12px;color: #B1AAAA">2018.03.27</p>
                        <p style="font-size: 18px;margin-top: -20px"><span class="si si-check" style="color:#56B560;"></span> HTML如何旋转图片？</p>
                        <p style="font-size: 12px;color: #B1AAAA">2018.03.26</p>
                        <p style="font-size: 18px;margin-top: -20px"><span class="si si-check" style="color:#56B560;"></span> HTML如何插入图片？</p>
                        <p style="font-size: 12px;color: #B1AAAA">2018.03.26</p>
                        <p style="font-size: 18px;margin-top: -20px"><span class="si si-check" style="color:#56B560;"></span> HTML如何禁止文本框输入？</p>
                    </div>
                </div>
            </div>
            <div class="block">
                <div class="block-header">
                    <h3 class="block-title">积分排行榜</h3>
                </div>
                <div class="block-content">
                    <table class="table table-striped table-borderless table-header-bg">
                        <thead>
                        <tr>
                            <th class="text-center" style="width: 50px;">排名</th>
                            <th>人员</th>
                            <th style="width: 15%;">学分</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center">1</td>
                            <td>马晓腾</td>
                            <td>
                                <span class="label label-info">45分</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td>欧阳谦</td>
                            <td>
                                <span class="label label-info">30分</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td>赵小敏</td>
                            <td>
                                <span class="label label-primary">29分</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td>王明原</td>
                            <td>
                                <span class="label label-warning">28分</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">5</td>
                            <td>张筱敏</td>
                            <td>
                                <span class="label label-primary">27分</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">6</td>
                            <td>丁文怡</td>
                            <td>
                                <span class="label label-success">23分</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">7</td>
                            <td>慕容雨</td>
                            <td>
                                <span class="label label-primary">18分</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Slide Up Modal -->
<div class="modal fade" id="modal-slideup" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-slideup">
        <div class="modal-content">
            <div class="block block-themed block-transparent remove-margin-b">
                <div class="block-header bg-primary-dark">
                    <ul class="block-options">
                        <li>
                            <button data-dismiss="modal" type="button"><i class="si si-close"></i></button>
                        </li>
                    </ul>
                    <h3 class="block-title">写下你的问题</h3>
                </div>
                <form class="form-horizontal tab-form" action="/putQuestion" method="post">
                <div class="block-content">

                        <div class="form-group">

                            <div class="col-md-12">
                                <input class="form-control" type="text" id="val-username" name="title" placeholder="问题标题">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                问题描述（可选）:
                                <!-- SimpleMDE Container -->
                                <textarea name="content" id="fieldTest" cols="30" rows="10"></textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-12">
                                <label class="css-input css-checkbox css-checkbox-primary" for="val-terms">
                                    <input type="checkbox" id="val-terms" name="val-terms" value="1"><span></span> 匿名提问
                                </label>
                            </div>
                        </div>

                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-default" type="button" data-dismiss="modal">取消</button>
                <button class="btn btn-sm btn-primary tab-question" type="submit"><i class="fa fa-check"></i> 提交</button>
            </div>
            </form>
        </div>
    </div>
</div>
<!-- END Slide Up Modal -->

{% endblock %}

{% block javascript %}
<!-- Page JS Plugins -->
<script src="/public/assets/js/plugins/summernote/summernote.min.js"></script>
<script src="/public/assets/js/plugins/ckeditor/ckeditor.js"></script>
<script src="/public/assets/js/plugins/simplemde/simplemde.min.js"></script>
<script>
    jQuery(function () {
        // Init page helpers (Summernote + CKEditor + SimpleMDE plugins)
        App.initHelpers(['summernote', 'ckeditor', 'simplemde']);
    });

    var simplemde = new SimpleMDE({
        element: document.getElementById("fieldTest"),
        autoDownloadFontAwesome: false,
        status: false
    });

    // $('.tab-question').click(function(){
    //     $.ajax({
    //         type: 'post',
    //         url: '/putQuestion',
    //         data: {
    //             title: $('#val-username').val(),
    //             content: simplemde.value(),
    //             _crsf: Cookies.get('csrfToken'),
    //         },
    //         success: function(data) {
    //             if(data.code){
    //                 location.href = data.url;
    //             } else {
    //                 alert(data.msg);
    //             }
    //         }
    //     });
    // });

</script>
{% endblock %}