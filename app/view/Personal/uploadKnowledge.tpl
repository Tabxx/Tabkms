{% extends '../Public/base.tpl' %}

{% block css %}
<!-- Page JS Plugins CSS -->
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
<link rel="stylesheet" href="/public/assets/js/plugins/dropzonejs/dropzone.min.css">
<link rel="stylesheet" href="/public/assets/js/plugins/sweetalert2/sweetalert2.min.css">
{% endblock %}

{% block body %}
<link rel="stylesheet" id="css-main" href="/public/assets/css/oneui.css">
<div class="content">
    <div class="row">
        <div class="col-lg-12">
            <div class="js-wizard-simple block">
                <!-- Steps Progress -->
                <div class="block-content block-content-mini block-content-full border-b">
                    <div class="wizard-progress progress active remove-margin-b">
                        <div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar"
                            aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 33%;"></div>
                    </div>
                </div>
                <!-- END Steps Progress -->

                <!-- Step Tabs -->
                <ul class="nav nav-tabs nav-tabs-alt nav-justified">
                    <li class="active">
                        <a href="#simple-progress-step1" data-toggle="tab" aria-expanded="false">1. 填写基本信息</a>
                    </li>
                    <li class="">
                        <a href="#simple-progress-step2" data-toggle="tab" aria-expanded="false">2. 权限设置</a>
                    </li>
                    <li class="">
                        <a href="#simple-progress-step3" data-toggle="tab" aria-expanded="true">3. 完成</a>
                    </li>
                </ul>
                <!-- END Step Tabs -->
                <!-- Form -->
                <form class="form-horizontal" action="/addKnowledge" method="post">
                    <!-- Steps Content -->
                    <div class="block-content tab-content">
                        <!-- Step 1 -->
                        <div class="tab-pane fade fade-right push-30-t push-50 active in" id="simple-progress-step1">
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="biaoti">文档标题</label>
                                <div class="col-md-6">
                                    <input class="js-maxlength form-control" type="text" id="biaoti" name="title"
                                        maxlength="30" placeholder="请输入..." />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" for="zuozhe">作者</label>
                                <div class="col-md-6">
                                    <input class="js-maxlength form-control" type="text" id="zuozhe" value="{{ username }}"
                                        maxlength="20" placeholder="请输入..." />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" for="example-select2">所属分类</label>
                                <div class="col-md-6">
                                    <select class="js-select2 form-control" id="example-select2" name="classids"
                                        data-placeholder="请选择...">
                                        <option></option><!-- Required for data-placeholder attribute to work with Select2 plugin -->
                                        {% for item in classIfy %}
                                        <option value="{{ item.id }}">{{ item.name }}</option>
                                        {% endfor %}
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" for="example-select2-multiple">标签</label>
                                <div class="col-md-6">
                                    <select class="js-select2 form-control" id="example-select2-multiple" name="tags"
                                        data-placeholder="请添加..." multiple>
                                        <option></option><!-- Required for data-placeholder attribute to work with Select2 plugin -->
                                        {% for item in tags %}
                                        <option value="{{ item.id }}">{{ item.name }}</option>
                                        {% endfor %}
                                    </select>
                                </div>
                            </div>

                            <!--分割线-->
                            <div class="form-group">
                                <div class="col-xs-12 push-10" style="margin-top: -20px">
                                    <div class="block">
                                        <div class="block-header">
                                            <h3 class="block-title">详细描述</h3>
                                        </div>
                                        <div class="block-content">
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <!-- CKEditor Container -->
                                                    <textarea id="editor_id" name="content"></textarea>
                                                    <!--<textarea name="content"></textarea>-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-lg-12" style="margin-top: -60px">
                                <!-- DropzoneJS -->
                                <!-- For more info and examples you can check out http://www.dropzonejs.com/#usage -->
                                <div class="block-header">
                                    <h2 class="content-heading">上传文档附件</h2>
                                </div>
                                <div class="block">
                                    <div class="block-content block-content-full myFiles">
                                        <div class="dropzone" id="my-dropzone">
                                            <div class="am-text-success dz-message">
                                                将文件拖拽到此处<br>或点此打开文件管理器选择文件
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END DropzoneJS -->
                            </div>
                        </div>
                        <!-- END Step 1 -->

                        <!-- Step 2 -->
                        <div class="tab-pane fade fade-right push-30-t push-50" id="simple-progress-step2">
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="example-select2">下载权限</label>
                                <div class="col-md-6">
                                    <select class="js-select2 form-control" id="example-select2" name="power" style="width: 100%;"
                                        data-placeholder="请选择...">
                                        <option value="0">所有人</option><!-- Required for data-placeholder attribute to work with Select2 plugin -->
                                        {% for item in department %}
                                        <option value="{{ item.id }}">{{ item.name }}</option>
                                        {% endfor %}
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- END Step 2 -->

                        <!-- Step 3 -->
                        <div class="tab-pane fade fade-right push-30-t push-50" id="simple-progress-step3">
                            <h1 style="margin-left: 45%">确认上传？</h1>
                        </div>
                        <!-- END Step 3 -->
                    </div>
                    <!-- END Steps Content -->


                    <!-- Steps Navigation -->
                    <div class="block-content block-content-mini block-content-full border-t">
                        <div class="row">
                            <div class="col-xs-6">
                                <button class="wizard-prev btn btn-warning" type="button"><i class="fa fa-arrow-circle-o-left"></i>
                                    上一步</button>
                            </div>
                            <div class="col-xs-6 text-right">
                                <input type="hidden" name="id" value="{{ uid }}" />
                                <button class="wizard-next btn btn-success disabled" type="button" style="display: none;">下一步
                                    <i class="fa fa-arrow-circle-o-right"></i></button>
                                <button class="wizard-finish btn btn-primary submit-knowledge" type="submit"><i class="fa fa-check"></i>
                                    上传</button>
                            </div>
                        </div>
                    </div>
                    <!-- END Steps Navigation -->
                </form>
                <!-- END Form -->
            </div>
            <!-- END Simple Progress Wizard -->
        </div>
    </div>
</div>
{% endblock %}

{% block javascript %}

<!-- Page Plugins -->
<script src="/public/assets/js/plugins/slick/slick.min.js"></script>
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
<script src="/public/assets/js/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="/public/assets/js/pages/base_forms_wizard.js"></script>
<script src="/public/assets/js/pages/base_pages_files.js"></script>
<script src="/public/assets/js/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="/public/assets/js/plugins/ckeditor/ckeditor.js"></script>
<script src="/public/kindeditor/kindeditor-all-min.js"></script>
<script src="/public/kindeditor/lang/zh-CN.js"></script>
<script src="/public/assets/js/plugins/sweetalert2/sweetalert2.min.js"></script>

<script>
    jQuery(function () {
        // Init page helpers (BS Datepicker + BS Datetimepicker + BS Colorpicker + BS Maxlength + Select2 + Masked Input + Range Sliders + Tags Inputs plugins)
        App.initHelpers(['datepicker', 'datetimepicker', 'colorpicker', 'maxlength', 'select2', 'ckeditor',
            'masked-inputs', 'rangeslider', 'tags-inputs'
        ]);
    });

    // 编辑器图片上传
    KindEditor.ready(function (K) {
        window.editor = K.create('#editor_id', {
            minHeight: '300px',
            width: '100%',
            uploadJson: '/uploadImg?_csrf={{ ctx.csrf | safe }}'
        });
    });

    // 文件上传
    $("#my-dropzone").dropzone({
        url: "/upload?_csrf={{ ctx.csrf | safe }}",
        addRemoveLinks: true,
        dictRemoveLinks: "x",
        dictCancelUpload: "x",
        maxFiles: 10,
        maxFilesize: 5,
        init: function () {
            this.on("success", function (dres, result) {
                let resValue = "<input type='hidden' name='enclosure[]' value='" + result.fileId +
                    "' />";
                let showFile = `<p>${ result.filename }</p>`;
                $('.myFiles').append(resValue);
                $('.myFiles').append(showFile);
            });
            this.on("removedfile", function (file) {
                console.log("File " + file.name + "removed");
            });
        },
    });
</script>
{% endblock %}