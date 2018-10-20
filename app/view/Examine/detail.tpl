{% extends '../Public/admin/base.tpl' %} {% block css %}
<link rel="stylesheet" href="/public/assets/js/plugins/select2/select2.min.css">
<!-- Bootstrap and OneUI CSS framework -->
<link rel="stylesheet" href="/public/assets/css/bootstrap.min.css">
<link rel="stylesheet" id="css-main" href="/public/assets/css/oneui.css">
<style>
    .block-content img {
        max-width: 100%;
    }
</style>
{% endblock %} {% block main %}

<div class="col-lg-12" style="margin-top: 30px">
    <div class="block block-bordered">
        <div class="block-header">
            <h3 class="block-title" style="text-align: center;color: #4CB2FF;font-size: 20px">{{ detail.title }}</h3>
        </div>
        <div class="block-content">
            <p style="text-align: center">作者：<span style="color: #4CB2FF">{{ detail.author }}</span>&nbsp;&nbsp;{{ detail.time }}&nbsp;&nbsp;点评 <span style="color: #56AF3E">(1)&nbsp;&nbsp;</span>推荐 <span style="color: #56AF3E">(3)&nbsp;&nbsp;</span>阅读信息 <span style="color: #56AF3E">(203)</span></p>
        </div>
    </div>
</div>

<!--分割线-->

<div class="col-lg-9">
    <div class="block block-bordered">
        <div class="block-header bg-gray-lighter">
            <h3 class="block-title">1.主体内容</h3>
        </div>
        <div class="block-content">
            {{ detail.content | safe }}
        </div>
    </div>
</div>
<!-- END Block Tabs Animated Slide Up -->

<!--分割线-->

<div class="col-lg-3">

    <div class="block">
        <div class="block-content block-content-full">
            <a href="javascript:;"><button class=" btn btn-info " type="button ">不通过</button></a>
            <button class="btn btn-info " data-toggle="modal " data-target="#modal-popout " type="button ">导入知识库</button>
        </div>
    </div>
    <!-- END Crystal on Background Color -->
</div>

{% endblock %} {% block modal %}
<!-- Pop Out Modal -->
<div class="modal fade " id="modal-popout " tabindex="-1 " role="dialog " aria-hidden="true ">
    <div class="modal-dialog modal-dialog-popout " id="app ">
        <div class="modal-content ">
            <div class="block block-themed block-transparent remove-margin-b ">
                <div class="block-header bg-primary-dark ">
                    <ul class="block-options ">
                        <li>
                            <button data-dismiss="modal " type="button "><i class="si si-close "></i></button>
                        </li>
                    </ul>
                    <h3 class="block-title ">选择分类</h3>
                </div>
                <div class="block-content " style="margin-bottom: 20px; ">
                    <select class="js-select2 form-control " id="example-select2 " name="example-select2 " style="width: 100%; " data-placeholder="请选择... ">
                        <option></option><!-- Required for data-placeholder attribute to work with Select2 plugin -->
                        {% for item in classify %}
                        <option value="{{ item.id }} "> {{item.name}} </option>
                        {% endfor %}
                    </select>
                </div>
            </div>
            <div class="modal-footer ">
                <button class="btn btn-sm btn-default " type="button " data-dismiss="modal ">取消</button>
                <button id="btn " class="btn btn-sm btn-primary " @click="postData() " type="button " data-dismiss="modal "><i class="fa fa-check "></i> 确认</button>
            </div>
        </div>
    </div>
</div>
<!-- END Pop Out Modal -->
{% endblock %} {% block javascript %}
<!-- Page JS Plugins -->
<script src="/public/assets/js/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js "></script>
<script src="/public/assets/js/plugins/select2/select2.full.min.js "></script>
<script src="/public/js/vue.js "></script>
<script src="https://cdn.bootcss.com/vue-resource/1.5.0/vue-resource.min.js "></script>
<script>
    urlItemed('/examine');

    jQuery(function() {
        // Init page helpers (BS Datepicker + BS Datetimepicker + BS Colorpicker + BS Maxlength + Select2 + Masked Input + Range Sliders + Tags Inputs plugins)
        App.initHelpers(['datetimepicker', 'select2']);
    });

    let app = new Vue({
        el: '#app',
        methods: {
            postData: () => {
                let _this = this;
                if ($('#example-select2').val() == '') {
                    alert('请选择分类后再提交！');
                    return;
                }
                let crsftoken = Cookies.get('csrfToken');
                $.ajax({
                    type: 'post',
                    url: '/examine/update',
                    data: {
                        kid: {
                            {
                                detail.id
                            }
                        },
                        classid: $('#example-select2').val(),
                        _csrf: crsftoken,
                    },
                    success: function(data) {
                        location.href = data.url;
                    }
                })
            }
        }
    })
</script>
{% endblock %}