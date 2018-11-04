{% extends '../Public/admin/base.tpl' %} {% block css %}
<style>
    .block-content img {
        max-width: 100%;
        margin: 0 auto;
    }
</style>
{% endblock %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>爬虫抓取</cite></a><span lay-separator="">/</span>
        <a><cite>详情</cite></a>
    </div>
</div>

<div class="layui-fluid" id="LAY-app-message-detail">
    <div class="layui-card layuiAdmin-msg-detail">
        <div class="layui-card-header">
            <h1>{{ detail.title }}</h1>
            <p> <span>{{ detail.time }}</span> <span>{{ detail.author }}</span></p>
        </div>
        <div class="layui-card-body layui-text">
            <div class="layadmin-text block-content">
                {{ detail.comment | safe }}
            </div>
            <div style="padding-top: 30px;">
                <form class="layui-form" action="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">选择分类</label>
                        <div class="layui-input-block">
                            <select name="city" lay-verify="required" id="example-select2">
                                <option value=""></option>
                                {% for item in classify %}
                                <option value="{{ item.id }}"> {{item.name}} </option>
                                {% endfor %}
                            </select>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-block" id="app">
                            <button class="layui-btn" lay-submit lay-filter="formDemo" @click.prevent="postData">导入知识库</button>
                            <button class="layui-btn layui-btn-danger no-through">删除</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--分割线-->

<!-- <div class="col-lg-3">
    <div class="block">
        <div class="block-content block-content-full">
            <button class="btn btn-info no-through" type="button">删除</button>
            <button class="btn btn-info" data-toggle="modal" data-target="#modal-popout" type="button">导入知识库</button>
        </div>
    </div>
</div> -->

{% endblock %} {% block javascript %}
<script src="/public/js/vue.js"></script>
<script>
    var layer = null;
    layui.use(['layer'], function() {
        layer = layui.layer;
        var form = layui.form;
    });

    // 返回上一级
    $(".closemodal").click(event => {
        event.preventDefault();
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    });

    $('.import-data').click(event => {
        event.preventDefault();
        let temp = ``;
        layer.open({
            type: 1,
            skin: 'layui-layer-rim', //加上边框
            area: ['420px', '240px'], //宽高
            content: $('#barDemo')
        });
    })

    let app = new Vue({
        el: '#app',
        methods: {
            postData: (event) => {
                event.preventDefault();
                let _this = this;
                if (_this.classId == '') {
                    alert('请选择分类后再提交！');
                    return;
                }
                let crsftoken = Cookies.get('csrfToken');
                $.ajax({
                    type: 'post',
                    url: '/reptilian/add',
                    data: {
                        kid: `{{ detail.id }}`,
                        classid: $('#example-select2').val(),
                        _csrf: crsftoken,
                    },
                    success: function(data) {
                        layer.msg(data.msg, {
                            icon: 1,
                            time: 1500
                        }, function() {
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                    }
                })
            }
        }
    });


    $('.no-through').click((event) => {
        event.preventDefault();

        $.ajax({
            url: '/reptilian/del',
            type: 'get',
            data: {
                id: `{{detail.id}}`
            },
            success(data) {
                if (data.errorcode === 0 && data.result) {
                    layer.msg(data.msg, {
                        icon: 1,
                        time: 2000
                    }, function() {
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.layer.close(index);
                        parent.location.reload();
                    });
                } else {
                    layer.msg(data.msg, {
                        icon: 2,
                    })
                }

            }
        })
    });
</script>
{% endblock %}