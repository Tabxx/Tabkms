{% extends '../Public/admin/base.tpl' %}

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
<!-- Bootstrap and OneUI CSS framework -->
<link rel="stylesheet" href="/public/assets/css/bootstrap.min.css">
<link rel="stylesheet" id="css-main" href="/public/assets/css/oneui.css">
{% endblock %}

{% block main %}
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
            <a href="#simple-progress-step1" data-toggle="tab" aria-expanded="false">1. 列表信息</a>
        </li>
        <li class="">
            <a href="#simple-progress-step2" data-toggle="tab" aria-expanded="false">2. 章节设置</a>
        </li>
        <li class="">
            <a href="#simple-progress-step3" data-toggle="tab" aria-expanded="true">3. 员工选择</a>
        </li>
    </ul>
    <!-- END Step Tabs -->

    <!-- Form -->
    <form class="form-horizontal" action="base_forms_wizard.html" method="post">
        <!-- Steps Content -->
        <div class="block-content tab-content">
            <!-- Step 1 -->
            <div class="tab-pane fade fade-right push-30-t push-50 active in" id="simple-progress-step1">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-2 col-lg-2 control-label" for="example-maxlength1">知识名称</label>
                        <div class="col-md-8 col-lg-8">
                            <input class="js-maxlength form-control" type="text" id="example-maxlength1"
                                   name="title" maxlength="30" placeholder="请输入...">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 col-lg-2 control-label" for="example-maxlength1">积分</label>
                        <div class="col-md-8 col-lg-8">
                            <input class="js-maxlength form-control" type="text" id="example-maxlength1"
                                   name="score" maxlength="20" placeholder="请输入...">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 col-lg-2 control-label" for="example-daterange1">起止时间</label>
                        <div class="col-md-8 col-lg-8">
                            <div class="input-daterange input-group" data-date-format="mm/dd/yyyy">
                                <input class="form-control" type="text" id="example-daterange1"
                                       name="start_time" placeholder="开始时间">
                                <span class="input-group-addon"><i class="fa fa-chevron-right"></i></span>
                                <input class="form-control" type="text" id="example-daterange2"
                                       name="end_time" placeholder="结束时间">
                            </div>
                        </div>
                    </div>
                </form>
                <!--分割线-->
                <div class="form-group">
                    <label class="col-md-2 col-lg-2 control-label" for="example-daterange1">知识简介</label>
                    <div class="col-md-8 col-lg-8" style="margin-top: -20px;padding: 0">
                        <div class="block">
                            <div class="block-content">
                                <textarea class="form-control" id="val-suggestions" name="synopsis" rows="3" placeholder="知识简介"></textarea>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 col-lg-2 control-label" for="example-daterange1">知识详情</label>
                    <div class="col-md-8 col-lg-8" style="margin-top: -20px;padding: 0">
                        <div class="block">
                            <div class="block-content">
                                <div class="form-group">
                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                        <!-- CKEditor Container -->
                                        <textarea id="js-ckeditor" name="details"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-group" style="margin-top: -60px">
                        <!-- DropzoneJS -->
                        <label class="col-md-2 col-lg-2 control-label" for="example-daterange1">封面图片</label>
                        <div class="col-lg-8 col-md-8">
                            <div class="block">
                                <div class="block-content block-content-full myFiles">
                                    <div class="dropzone" id="my-dropzone">
                                        <div class="am-text-success dz-message">
                                            将文件拖拽到此处<br>或点此打开文件管理器选择文件
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END DropzoneJS -->
                    </div>
                </div>
            </div>
            <!-- END Step 1 -->

            <!-- Step 2 -->
            <div class="tab-pane fade fade-right push-30-t push-50" id="simple-progress-step2">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12" style="padding: 0;margin-top: -45px">
                        <div class="block">
                            <div class="block-header bg-gray-lighter">
                                            <span class="block-title"
                                                  style="line-height: 30px;font-size: 20px">章节设置</span>
                                <button id="addbtn" class="btn btn-minw btn-info pull-right" type="button">
                                    新增章节
                                </button>
                            </div>
                            <div class="block-content">
                                <table id="tab" class="layui-table">
                                    <colgroup>
                                        <col width="20%">
                                        <col width="40%">
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>章节</th>
                                        <th>章节名称</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END Step 2 -->

            <!-- Step 3 -->
            <div class="tab-pane fade fade-right push-30-t push-50" id="simple-progress-step3">
                <div class="bg-gray-light border-b">
                    <div class="content content-narrow">
                        <!-- Custom files functionality is initialized in js/pages/base_pages_files.js -->
                        <!-- Add the category value you want each link in .js-media-filter to filter out in its data-category attribute. Add the value 'all' to show all items -->
                        <ul class="js-media-filter nav nav-pills push">
                            <li class="active">
                                <a href="javascript:void(0)" data-category="all">
                                    <i class="fa fa-fw fa-folder-open-o push-5-r"></i> 全部
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" data-category="renshi">
                                    <i class="fa fa-fw fa-file-movie-o push-5-r"></i> 人事部
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" data-category="caiwu">
                                    <i class="fa fa-fw fa-file-photo-o push-5-r"></i> 财务部
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" data-category="jishu">
                                    <i class="fa fa-fw fa-file-audio-o push-5-r"></i> 技术部
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" data-category="shichang">
                                    <i class="fa fa-fw fa-file-text-o push-5-r"></i> 市场部
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" data-category="anquan">
                                    <i class="fa fa-fw fa-file-text-o push-5-r"></i> 安全部
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- END Navigation -->

                <!-- Files -->
                <div class="content content-narrow">
                    <!-- Add the category value for each item in its data-category attribute (for the filter functionality to work) -->
                    <div class="js-media-filter-items row">
                        <!--人员-->
                        <div class="col-sm-4 col-md-3 col-lg-2">
                            <div class="block block-rounded animated fadeIn" style="background: #F3F3F3"
                                 data-category="renshi">
                                <div class="block-header">
                                    <div class="row">
                                        <label class="css-input css-checkbox css-checkbox-sm css-checkbox-primary"
                                               style="margin-left: 15%">
                                            <input type="checkbox"><span></span>
                                        </label>
                                        <span class="pull-right"
                                              style="line-height: 30px;margin-right: 15%;font-size: 20px;font-weight: bolder;color: #7D7C7D">Tab</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--人员-->

                        <!--人员-->
                        <div class="col-sm-4 col-md-3 col-lg-2">
                            <div class="block block-rounded animated fadeIn" style="background: #F3F3F3"
                                 data-category="jishu">
                                <div class="block-header">
                                    <div class="row">
                                        <label class="css-input css-checkbox css-checkbox-sm css-checkbox-primary"
                                               style="margin-left: 15%">
                                            <input type="checkbox"><span></span>
                                        </label>
                                        <span class="pull-right"
                                              style="line-height: 30px;margin-right: 15%;font-size: 20px;font-weight: bolder;color: #7D7C7D">Jack</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--人员-->

                        <!--人员-->
                        <div class="col-sm-4 col-md-3 col-lg-2">
                            <div class="block block-rounded animated fadeIn" style="background: #F3F3F3"
                                 data-category="jishu">
                                <div class="block-header">
                                    <div class="row">
                                        <label class="css-input css-checkbox css-checkbox-sm css-checkbox-primary"
                                               style="margin-left: 15%">
                                            <input type="checkbox"><span></span>
                                        </label>
                                        <span class="pull-right"
                                              style="line-height: 30px;margin-right: 15%;font-size: 20px;font-weight: bolder;color: #7D7C7D">James</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--人员-->
                    </div>
                </div>
            </div>
            <!-- END Step 3 -->
        </div>
        <!-- END Steps Content -->

        <!-- Steps Navigation -->
        <div class="block-content block-content-mini block-content-full border-t">
            <div class="row">
                <div class="col-xs-6">
                    <button class="wizard-prev btn btn-warning" type="button"><i
                            class="fa fa-arrow-circle-o-left"></i> 上一步
                    </button>
                </div>
                <div class="col-xs-6 text-right">
                    <button class="wizard-next btn btn-success disabled" type="button"
                            style="display: none;">下一步 <i class="fa fa-arrow-circle-o-right"></i></button>
                    <button class="wizard-finish btn btn-primary" type="submit"
                            style="display: inline-block;"><i class="fa fa-check-circle-o"></i> 提交
                    </button>
                </div>
            </div>
        </div>
        <!-- END Steps Navigation -->
    </form>
    <!-- END Form -->
</div>

{% endblock %}


{% block modal %}
<!--添加资料-->
<!-- Slide Up Modal -->
<div class="modal" id="ziliao" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="block block-themed block-transparent remove-margin-b">
                <div class="block-header bg-primary-dark">
                    <ul class="block-options">
                        <li>
                            <button data-dismiss="modal" type="button"><i class="si si-close"></i></button>
                        </li>
                    </ul>
                    <h3 class="block-title">添加资料</h3>
                </div>
                <div class="block-content">
                    <form class="form-horizontal" action="page_forms_editors.html" method="post"
                          onsubmit="return false;">
                        <div class="row">
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <div class="sidebar-content"
                                         style="background: #404A58;border: 1px solid #E9E9E9;margin-top: 9px">
                                        <!-- Side Content -->
                                        <div class="side-content">
                                            <ul class="nav-main">

                                                {% for item in classify %}
                                                <li>
                                                    {% if item.child.length %}
                                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i
                                                            class="si si-book-open"></i><span class="sidebar-mini-hide">{{ item.name }}</span></a>
                                                    <ul>
                                                        {% for c in item.child %}
                                                        <li>
                                                            <a class="showlist" data-id="{{ c.id }}" href="javascript:;">{{ c.name }}</a>
                                                        </li>
                                                        {% endfor %}
                                                    </ul>
                                                    {% endif %}
                                                </li>
                                                {% endfor %}
                                            </ul>
                                        </div>
                                        <!-- END Side Content -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-6 col-lg-6" id="app">
                                <!--HTML演示-->
                                <table id="source2" class="layui-table">
                                    <colgroup>
                                        <col width="15%">
                                        <col width="60%">
                                        <col width="25%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>选择</th>
                                            <th>知识点名称</th>
                                            <th>更新日期</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="item in lists">
                                            <td>
                                                <input type="checkbox" name="kid" v-bind:value="item.id"  v-model="checkedNames" style="margin-left: 25%">
                                            </td>
                                            <td class="know-title">$${ item.title }</td>
                                            <td class="tab-time">$${ item.createdate.split(' ')[0] }</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-default" type="button" data-dismiss="modal">取消</button>
                <button id="addsource" class="btn btn-sm btn-primary" type="button" data-dismiss="modal">
                    <i class="fa fa-check"></i> 添加
                </button>
            </div>
        </div>
    </div>
</div>
<!-- END Slide Up Modal -->

<!--添加测试-->
<!-- Large Modal -->
<div class="modal" id="ceshi" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="block block-themed block-transparent remove-margin-b">
                <div class="block-header bg-primary-dark">
                    <ul class="block-options">
                        <li>
                            <button data-dismiss="modal" type="button"><i class="si si-close"></i></button>
                        </li>
                    </ul>
                    <h3 class="block-title">添加测试</h3>
                </div>
                <div class="block-content">
                    <form class="form-horizontal" action="page_forms_editors.html" method="post"
                          onsubmit="return false;">
                        <div class="block-header bg-gray-lighter">
                            <span class="block-title" style="line-height: 30px;font-size: 20px">添加试题</span>
                            <button id="plusbtn" class="btn btn-sm btn-info pull-right" type="button">新增试题</button>
                        </div>
                        <table id="test" class="layui-table">
                            <colgroup>
                                <col width="7%">
                                <col width="42%">
                                <col width="10%">
                                <col width="10%">
                                <col width="10%">
                                <col width="10%">
                                <col width="11%">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>题号</th>
                                <th>题目内容</th>
                                <th>选项A</th>
                                <th>选项B</th>
                                <th>选项C</th>
                                <th>选项D</th>
                                <th>正确选项</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-default" type="button" data-dismiss="modal">取消</button>
                <button class="btn btn-sm btn-primary" type="button" data-dismiss="modal">
                    <i class="fa fa-check"></i> 添加
                </button>
            </div>
        </div>
    </div>
</div>
<!-- END Large Modal -->
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
<script src="/public/assets/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="/public/assets/js/plugins/ckeditor/ckeditor.js"></script>
<script src="/public/layui/layui.all.js"></script>
<script src="/public/assets/js/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="/public/assets/js/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="/public/assets/js/pages/base_forms_wizard.js"></script>
<script src="/public/assets/js/pages/base_pages_files.js"></script>
<script src="/public/js/vue.js"></script>
<script>

    jQuery(function () {
        // Init page helpers (BS Datepicker + BS Datetimepicker + BS Colorpicker + BS Maxlength + Select2 + Masked Input + Range Sliders + Tags Inputs plugins)
        App.initHelpers(['ckeditor', 'appear', 'appear-countTo', 'datepicker', 'datetimepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider', 'tags-inputs']);
    });

    $("#my-dropzone").dropzone({
        url: "/upload?_csrf={{ ctx.csrf | safe }}",
        addRemoveLinks: true,
        dictRemoveLinks: "x",
        dictCancelUpload: "x",
        maxFiles: 10,
        maxFilesize: 5,
        init: function() {
            this.on("success", function(dres, result) {
                let resValue = "<input type='hidden' name='pic' value='"+ result.fileId +"' />";
                let showFile = `<p>${ result.filename }</p>`;
                $('.myFiles').append(resValue);
                $('.myFiles').append(showFile);
            });
            this.on("removedfile", function(file) {
                console.log("File " + file.name + "removed");
            });
        },
    });

    var app = new Vue({
        el: '#app',
        data: {
            lists: null,
            checkedNames: [],
        },
        delimiters: ['$${', '}'],
    });

    $('.showlist').click(function(){
        app.lists = null;
        $.ajax({
            url: '/getKnowlist',
            type: 'GET',
            data: {
                type: $(this).attr('data-id')
            },
            success:function(result){
                if(result.code){
                    app.lists = result.lists;
                }
            },
        })
    });

    var object;
    var m = 1, n = 1, un=1;
    var s1 = new Array(4);
    var s2 = new Array(4);
    function add() {
        var rs = document.getElementById("tab").rows;
        var insertR = document.getElementById("tab").insertRow(rs.length);
        insertR.insertCell(0).innerHTML = '第' + n + '章';
        insertR.insertCell(1).innerHTML = '<input class="form-control" type="text" name="register1-username" placeholder="输入章节名称...">';
        insertR.insertCell(2).innerHTML = '<span class="col-sm-6 col-md-6 col-lg-6"><button class="btn btn-sm btn-info addsubline" type="button" style="margin-left: 20%" onclick="addsubline(this)">添加课时</button></span><span class="col-sm-6 col-md-6 col-lg-6"><a data-toggle="modal" data-target="#ceshi" href=""><button class="btn btn-sm btn-warning" type="button" style="margin-left: 20%" onclick="getobj(this)">添加测试</button></a></span>';
        n ++;
        un = 1;
    }

    function plus() {
        var rs = document.getElementById("test").rows;
        var insertR = document.getElementById("test").insertRow(rs.length);
        insertR.insertCell(0).innerHTML = m;
        insertR.insertCell(1).innerHTML = '<input class="form-control" type="text" name="register1-username" placeholder="题目内容...">';
        insertR.insertCell(2).innerHTML = '<input class="form-control" type="text" name="register1-username" placeholder="选项内容...">';
        insertR.insertCell(3).innerHTML = '<input class="form-control" type="text" name="register1-username" placeholder="选项内容...">';
        insertR.insertCell(4).innerHTML = '<input class="form-control" type="text" name="register1-username" placeholder="选项内容...">';
        insertR.insertCell(5).innerHTML = '<input class="form-control" type="text" name="register1-username" placeholder="选项内容...">';
        insertR.insertCell(6).innerHTML = '<input class="form-control" type="text" name="register1-username" placeholder="正确选项...">';
        m++;
    }
    function getobj(obj) {
        object = obj;
    }
    function addsubline(obj){
        var i = obj.parentNode.parentNode.parentNode.parentNode.rowIndex;
        var insertR = document.getElementById("tab").insertRow(i);
        insertR.insertCell(0).innerHTML = '第'+un+'课时';
        insertR.insertCell(1).innerHTML = '';
        insertR.insertCell(2).innerHTML = '<span class="col-sm-6 col-md-6 col-lg-6"><a data-toggle="modal" data-target="#ziliao" href=""><button class="btn btn-sm btn-success" type="button" style="margin-left: 20%" onclick="getobj(this)">添加资料</button></a></span>';
        un++;
    }
    document.getElementById("addbtn").onclick = add;
    document.getElementById("plusbtn").onclick = plus;

    // document.getElementById("addsource").onclick = function () {
    //     var a, b, c, d, e;
    //     var i;
    //     var str1 = "", str2 = "";
    //     for (a = 0; a < 4; a++){
    //         s1[a] = 0;
    //         s2[a] = 0;
    //     }
    //     i = object.parentNode.parentNode.parentNode.parentNode.rowIndex;
    //     for (b = 1; b < 5; b++) {
    //         if (document.getElementById('source2').rows[b].cells[0].getElementsByTagName('input')[0].checked == true) {
    //             s1[b-1] = 1;
    //         }
    //     }
    //     for (d = 1; d < 5; d++){
    //         if (s1[d-1] == 1) {
    //             str1 += "& ";
    //             str1 += document.getElementById('source2').rows[d].cells[1].innerText;
    //         }
    //     }
    //     for (c = 1; c < 5; c++) {
    //         if (document.getElementById('source3').rows[c].cells[0].getElementsByTagName('input')[0].checked == true) {
    //             s2[c-1] = 1;
    //         }
    //     }
    //     for (e = 1; e < 5; e++){
    //         if(s2[e-1] == 1){
    //             str2 += "& ";
    //             str2 += document.getElementById('source3').rows[e].cells[1].innerText;
    //         }
    //     }
    //     document.getElementById ("tab").rows[i].cells[1].innerHTML = str1 + str2;
    // }
    let index = 0;
    $("#addsource").click(function(){
        let str = "";
        $("#source2 input:checkbox:checked").each(function(){
            str +=  $(this).parent().next().text() + "  &  ";
        });

    })
</script>
{% endblock %}