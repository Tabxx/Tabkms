{% extends '../Public/base.tpl' %}

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
<link rel="stylesheet" href="/public/assets/js/plugins/summernote/summernote.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/simplemde/simplemde.min.css">
<link rel="stylesheet" id="css-main" href="/public/assets/css/oneui.css">
{% endblock %}

{% block body %}
<!-- Block Tabs Animated Slide Up -->
<div class="content">
<div class="block" style="margin-top: 20px">
    <ul class="nav nav-tabs" data-toggle="tabs">
        <li class="active">
            <a href="#btabs-animated-slideup-tuijian">最新话题</a>
        </li>
        <li class="">
            <a href="#btabs-animated-slideup-zuixin">最热话题</a>
        </li>
        <li class="">
            <a href="#btabs-animated-slideup-wode">我的话题</a>
        </li>
        <li class="pull-right" style="margin-top: 5px;margin-right: 10px;margin-left: 10px">
            <button class="btn btn-sm btn-warning" data-toggle="modal" data-target="#modal-popout" type="button" style="font-size: 15px">发言 <span class="fa fa-edit"></span></button>
        </li>
        <li class="pull-right" style="margin-top: 6px">
            <select class="js-select2 form-control" id="example-select2" name="example-select2" style="width: 100%;" data-placeholder="">
                <option value="1">按默认排序</option>
                <option value="2">按时间排序</option>
                <option value="3">按热度排序</option>
            </select>
        </li>
    </ul>
    <div class="block-content tab-content">
        <div class="tab-pane fade fade-up active in" id="btabs-animated-slideup-tuijian">
            <div class="block block-transparent pull-r-l">
                <div class="block-content">
                    <ul class="nav-users push">
                        <li>
                            <a href="/circle/detail">
                                <img class="img-avatar" src="/public/pic/icon/2.jpg" alt="">
                                HTML标签如何使用
                                <div class="font-w400 text-muted"><small>肖晶</small><small class="pull-right">发表于 2018.01.04</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/1.jpg" alt="">
                                JavaScript如何获取表单元素
                                <div class="font-w400 text-muted"><small>王敏</small><small class="pull-right">发表于 2018.01.04</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/4.jpg" alt="">
                                AJAX的实现方式
                                <div class="font-w400 text-muted"><small>李海</small><small class="pull-right">发表于 2018.01.03</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/5.jpg" alt="">
                                DOM操作
                                <div class="font-w400 text-muted"><small>刘丹丹</small><small class="pull-right">发表于 2018.01.02</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/6.jpg" alt="">
                                HTML5应用缓存
                                <div class="font-w400 text-muted"><small>于丽华</small><small class="pull-right">发表于 2018.01.02</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/3.jpg" alt="">
                                响应式布局的实现
                                <div class="font-w400 text-muted"><small>胡一菲</small><small class="pull-right">发表于 2018.01.02</small></div>
                            </a>
                        </li>
                    </ul>
                    <nav class="text-right">
                        <ul class="pagination pagination-sm">
                            <li class="active">
                                <a href="javascript:void(0)">1</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">2</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">3</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">4</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">5</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="tab-pane fade fade-up" id="btabs-animated-slideup-zuixin">
            <div class="block block-transparent pull-r-l">
                <div class="block-content">
                    <ul class="nav-users push">
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/11.jpg" alt="">
                                JQuery选择器的使用
                                <div class="font-w400 text-muted"><small>赵健</small><small class="pull-right">发表于 2018.01.06</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/12.jpg" alt="">
                                XML验证器
                                <div class="font-w400 text-muted"><small>谭晶晶</small><small class="pull-right">发表于 2018.01.06</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/13.jpg" alt="">
                                JQuery Get/Post
                                <div class="font-w400 text-muted"><small>杨一山</small><small class="pull-right">发表于 2018.01.06</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/14.jpg" alt="">
                                JSON简介
                                <div class="font-w400 text-muted"><small>葛建华</small><small class="pull-right">发表于 2018.01.06</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/15.jpg" alt="">
                                E4X HowTo
                                <div class="font-w400 text-muted"><small>王建平</small><small class="pull-right">发表于 2018.01.06</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/16.jpg" alt="">
                                WMLScript调用
                                <div class="font-w400 text-muted"><small>林佳</small><small class="pull-right">发表于 2018.01.06</small></div>
                            </a>
                        </li>
                    </ul>
                    <nav class="text-right">
                        <ul class="pagination pagination-sm">
                            <li class="active">
                                <a href="javascript:void(0)">1</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">2</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">3</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">4</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">5</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="tab-pane fade fade-up" id="btabs-animated-slideup-wode">
            <div class="block block-transparent pull-r-l">
                <div class="block-content">
                    <ul class="nav-users push">
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/main.jpg" alt="">
                                HTML标签如何使用
                                <div class="font-w400 text-muted"><small>Tab</small><small class="pull-right">发表于 2018.01.06</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/main.jpg" alt="">
                                JavaScript如何获取表单元素
                                <div class="font-w400 text-muted"><small>Tab</small><small class="pull-right">发表于 2018.01.05</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/main.jpg" alt="">
                                AJAX的实现方式
                                <div class="font-w400 text-muted"><small>Tab</small><small class="pull-right">发表于 2018.01.04</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/main.jpg" alt="">
                                DOM操作
                                <div class="font-w400 text-muted"><small>Tab</small><small class="pull-right">发表于 2018.01.03</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/main.jpg" alt="">
                                HTML5应用缓存
                                <div class="font-w400 text-muted"><small>Tab</small><small class="pull-right">发表于 2018.01.02</small></div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img class="img-avatar" src="/public/pic/icon/main.jpg" alt="">
                                响应式布局的实现
                                <div class="font-w400 text-muted"><small>Tab</small><small class="pull-right">发表于 2018.01.01</small></div>
                            </a>
                        </li>
                    </ul>
                    <nav class="text-right">
                        <ul class="pagination pagination-sm">
                            <li class="active">
                                <a href="javascript:void(0)">1</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">2</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">3</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">4</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">5</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END Block Tabs Animated Slide Up -->
</div>
{% endblock %}

{% block modal %}
<!-- Pop Out Modal -->
<div class="modal fade" id="modal-popout" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-popout">
        <div class="modal-content">
            <div class="block block-themed block-transparent remove-margin-b">
                <div class="block">
                    <div class="block-header">
                        <h3 class="block-title">发表话题</h3>
                    </div>
                    <div class="block-content block-content-full">
                        <label for="example-input-small">标题</label>
                        <input class="form-control input-sm" type="text" id="example-input-small" name="example-input-small" placeholder="请输入...">
                    </div>
                    <div class="block-content block-content-full">
                        <label for="example-input-small">内容</label>
                        <!-- Summernote Container -->
                        <div class="js-summernote"></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-default" type="button" data-dismiss="modal">取消</button>
                <button id="btn" class="btn btn-sm btn-primary" type="button" data-dismiss="modal"><i class="fa fa-check"></i> 提交</button>
            </div>
        </div>
    </div>
</div>
<!-- END Pop Out Modal -->
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
<script src="/public/assets/js/plugins/summernote/summernote.min.js"></script>
<script src="/public/assets/js/plugins/ckeditor/ckeditor.js"></script>
<script src="/public/assets/js/plugins/simplemde/simplemde.min.js"></script>

<!-- Page JS Code -->
<script>
    jQuery(function () {
        // Init page helpers (Summernote + CKEditor + SimpleMDE plugins)
        App.initHelpers(['summernote', 'ckeditor', 'simplemde']);
    });
</script>
{% endblock %}