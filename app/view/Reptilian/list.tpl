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


<link rel="stylesheet" href="css/style.css">
<style type="text/css">
    .nav-tabs{
        border: none;
    }
</style>
{% endblock %}

{% block main %}

<div class="block">

    <!--分割线-->

    <div class="col-lg-12">
        <div class="block block-bordered">
            <div class="block-header bg-gray-lighter">
                <h3 class="block-title">排序： <a href="">全部<span class="fa fa-unsorted"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="">待审核<span class="fa fa-unsorted"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="">审核通过<span class="fa fa-unsorted"></span></a><button class="btn btn-info" data-toggle="modal" data-target="#modal-popout" type="button" style="float: right">批量导入</button></h3>
            </div>
            {% for item in lists %}
            <div id="a1" class="block-content">
                <label class="css-input css-checkbox css-checkbox-info" style="float: left">
                    <input type="checkbox"><span></span>&nbsp;&nbsp;&nbsp;&nbsp;
                </label>
                <div>
                    <a href="/reptilian/detail?id={{ item.id }}" style="margin-bottom: 6px;font-size: 18px">{{ item.title }}</a>
                    <p style="color: #999999">作者：{{ item.author }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ item.time }}</p>
                </div>
            </div>
            {% endfor %}

            <div class="dataTables_paginate paging_full_numbers" id="DataTables_Table_2_paginate" style="margin-left: 40%">
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
{% endblock %}

{% block javascript %}


<!-- Page JS Code -->
<script src="/public/assets/js/pages/base_forms_pickers_more.js"></script>
<script>
    jQuery(function () {
        // Init page helpers (BS Datepicker + BS Datetimepicker + BS Colorpicker + BS Maxlength + Select2 + Masked Input + Range Sliders + Tags Inputs plugins)
        App.initHelpers(['datepicker', 'datetimepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider', 'tags-inputs']);
    });
</script>
<script>
    document.getElementById("btn").onclick=function () {
        document.getElementById("a1").style.display="none";
        document.getElementById("a2").style.display="none";
        document.getElementById("a3").style.display="none";
    }
</script>
{% endblock %}