{% extends '../Public/base.tpl' %}

{% block body %}
<!--内容-->
<div class="block">
    <div class="content">
        <!--内容-->
        <div id="box1" class="block">
            <div class="block-header bg-gray-lighter">
                <h3 class="block-title">HTML和XHTML的区别<button id="bt1" class="btn btn-sm btn-danger pull-right" type="button"
                        style="margin-left: 20px" onclick="revise()" data-toggle="modal" data-target="">添加修改</button><a
                        class="si si-arrow-right pull-right" style="font-size: 20px;cursor: pointer;margin-left: 20px"
                        onclick="move1()"></a><a class="si si-arrow-left pull-right" style="font-size: 20px;cursor: pointer"></a></h3>
            </div>
            <div class="block-content">
                <p>HTML是一种基本的WEB网页设计语言，XHTML是一个基于XML的置标语言，看起来与HTML有些相象，只有一些小的但重要的区别，XHTML就是一个扮演着类似HTML的角色的XML，所以，本质上说，XHTML是一个过渡技术，结合了XML(有几分)的强大功能及HTML(大多数)的简单特性。
                    HTML 和 XHTML 的区别简单来说，XHTML 可以认为是 XML 版本的 HTML，为符合 XML 要求，XHTML 语法上要求更严谨些。</p>
            </div>
        </div>
        <div id="box2" class="block" style="display: none">
            <div class="block-header bg-gray-lighter">
                <h3 class="block-title">HTML中的href和src的区别<button id="bt2" class="btn btn-sm btn-danger pull-right" type="button"
                        style="margin-left: 20px" onclick="revise()" data-toggle="modal" data-target="">添加修改</button><a
                        class="si si-arrow-right pull-right" style="font-size: 20px;cursor: pointer;margin-left: 20px"
                        onclick="move3()"></a><a class="si si-arrow-left pull-right" style="font-size: 20px;cursor: pointer"
                        onclick="move2()"></a></h3>
            </div>
            <div class="block-content">
                <p>src用于替换当前元素，href用于在当前文档和引用资源之间确立联系。src是source的缩写，指向外部资源的位置，指向的内容将会嵌入到文档中当前标签所在位置；在请求src资源时会将其指向的资源下载并应用到文档内，例如js脚本，img图片和frame等元素。href是Hypertext
                    Reference的缩写，指向网络资源所在位置，建立和当前元素（锚点）或当前文档（链接）之间的链接，如果我们在文档中添加href，那么浏览器会识别该文档为css文件，就会并行下载资源并且不会停止对当前文档的处理。这也是为什么建议使用link方式来加载css，而不是使用@import方式。</p>
            </div>
        </div>
        <div id="box3" class="block" style="display: none">
            <div class="block-header bg-gray-lighter">
                <h3 class="block-title">PHP和HTML代码和用途的区别<button id="bt3" class="btn btn-sm btn-danger pull-right" type="button"
                        style="margin-left: 20px" onclick="revise()" data-toggle="modal" data-target="">添加修改</button><a
                        class="si si-arrow-right pull-right" style="font-size: 20px;cursor: pointer;margin-left: 20px"></a><a
                        class="si si-arrow-left pull-right" style="font-size: 20px;cursor: pointer" onclick="move4()"></a></h3>
            </div>
            <div class="block-content">
                <p>现代的HTML只负责超文本的‘结构’——数据结构在文档上的具体形态。比如段落、标题、正文、列表项、区块、文档头、元数据等等。由CSS负责显示“样式”：比如字体、颜色、位置、大小等等。PHP在后台把其他形式的数据(比如SQL形式的、文本形式)转换成HTML。写PHP等同于用一门编程语言写这一转换HTML的过程的程序，而写HTML只相当写一个文档的结构，相当于word排版。</p>
            </div>
        </div>

        <!--分割线-->

        <table id="output" class="layui-table">
            <colgroup>
                <col width="50%">
                <col width="50%">
            </colgroup>
            <thead>
                <tr>
                    <th>原文内容</th>
                    <th>修改内容</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                </tr>
            </tbody>
        </table>

        <!--分割线-->

        <div class="block">
            <div class="block-header bg-gray-lighter">
                <a href="/circle/detail"><button class="btn btn-minw btn-success pull-right" type="button" style="margin-left: 20px">确定</button></a>
                <a href="/circle/detail"><button class="btn btn-minw btn-warning pull-right" type="button">返回</button></a>
            </div>
        </div>
        <!--内容-->
    </div>
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
        App.initHelpers(['datepicker', 'datetimepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs',
            'rangeslider', 'tags-inputs'
        ]);
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
    var s;

    function revise() {
        if (window.getSelection) {
            //现代浏览器
            userSelection = window.getSelection();
        } else if (document.selection) {
            //IE浏览器 考虑到Opera，应该放在后面
            userSelection = document.selection.createRange();
        }
        if (!(text = userSelection.text)) {
            text = userSelection;
        }
        if (text == "") {
            document.getElementById("bt1").setAttribute("data-target", "");
            document.getElementById("bt2").setAttribute("data-target", "");
            document.getElementById("bt3").setAttribute("data-target", "");
            var layer = layui.layer;
            layer.msg("请选中需要添加修改的文本！");
        } else {
            s = text.toString();
            document.getElementById("wenben").value = s;
            document.getElementById("bt1").setAttribute("data-target", "#modal-fadein");
            document.getElementById("bt2").setAttribute("data-target", "#modal-fadein");
            document.getElementById("bt3").setAttribute("data-target", "#modal-fadein");
        }
    }
    var box1 = document.getElementById("box1");
    var box2 = document.getElementById("box2");
    var box3 = document.getElementById("box3");

    function move1() {
        box1.style.display = "none";
        box2.style.display = "block";
        box3.style.display = "none";
    }

    function move2() {
        box1.style.display = "block";
        box2.style.display = "none";
        box3.style.display = "none";
    }

    function move3() {
        box1.style.display = "none";
        box2.style.display = "none";
        box3.style.display = "block";
    }

    function move4() {
        box1.style.display = "none";
        box2.style.display = "block";
        box3.style.display = "none";
    }
    document.getElementById("addrevise").onclick = function () {
        var rs = document.getElementById("output").rows;
        var insertR = document.getElementById("output").insertRow(rs.length);
        insertR.insertCell(0).innerHTML = '<del>' + s + '</del>';
        insertR.insertCell(1).innerHTML = '<span style="color: #D24B45;">' + document.getElementById("wenben").value +
            '</span>';
    }
</script>
{% endblock %}