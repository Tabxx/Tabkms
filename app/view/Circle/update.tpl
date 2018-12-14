{% extends '../Public/base.tpl' %}

{% block css %}
<link rel="stylesheet" href="/public/assets/js/plugins/summernote/summernote.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/simplemde/simplemde.min.css">
{% endblock %}

{% block body %}
<div class="content">
    <!--内容-->
    <div class="block">
        <div class="block-header bg-gray-lighter">
            <h3 class="block-title"><span class="si si-speech"></span> 话题名称</h3>
        </div>
        <div class="block-content">
            <div class="block">
                <div class="block-content">
                    <form class="form-horizontal" action="page_forms_editors.html" method="post" onsubmit="return false;">
                        <div class="form-group">
                            <div class="col-xs-12">
                                <!-- CKEditor Container -->
                                <textarea id="js-ckeditor" name="ckeditor">超级文本标记语言是标准通用标记语言下的一个应用，也是一种规范，一种标准，超文本标记语言它通过标记符号来标记要显示的网页中的各个部分。网页文件本身是一种文本文件，通过在文本文件中添加标记符，可以告诉浏览器如何显示其中的内容（如：文字如何处理，画面如何安排，图片如何显示等）。浏览器按顺序阅读网页文件，然后根据标记符解释和显示其标记的内容，对书写出错的标记将不指出其错误，且不停止其解释执行过程，编制者只能通过显示效果来分析出错原因和出错部位。但需要注意的是，对于不同的浏览器，对同一标记符可能会有不完全相同的解释，因而可能会有不同的显示效果。</textarea>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!--分割线-->

    <div class="block">
        <div class="block-header bg-gray-lighter">
            <h3 class="block-title"><span class="fa fa-refresh"></span> 更新说明</h3>
        </div>
        <div class="block-content">
            <div class="block">
                <div class="block-content block-content-full">
                    <!-- Summernote Container -->
                    <div class="js-summernote"></div>
                </div>
            </div>
            <div class="block-header" style="margin-top: -50px">
                <a href="/circle/detail"><button class="btn btn-minw btn-success pull-right" type="button" style="margin-left: 20px">确定更新</button></a>
                <a href="/circle/detail"><button class="btn btn-minw btn-info pull-right" type="button">返回</button></a>
            </div>
        </div>
    </div>

    <!--内容-->
</div>

<!-- Fade In Modal -->
<div class="modal fade" id="modal-fadein" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="block block-themed block-transparent remove-margin-b">
                <div class="block-header bg-primary-dark">
                    <ul class="block-options">
                        <li>
                            <button data-dismiss="modal" type="button"><i class="si si-close"></i></button>
                        </li>
                    </ul>
                    <h3 class="block-title">请对原文进行修改</h3>
                </div>
                <div class="block-content block-content-full">
                    <textarea id="wenben" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-default" type="button" data-dismiss="modal">取消</button>
                <button id="addrevise" class="btn btn-sm btn-primary" type="button" data-dismiss="modal"><i class="fa fa-check"></i>
                    添加修改</button>
            </div>
        </div>
    </div>
</div>
<!-- END Fade In Modal -->
<!--分割线-->

{% endblock %}

{% block javascript %}
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