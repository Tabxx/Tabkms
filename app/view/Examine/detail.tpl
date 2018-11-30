{% extends '../Public/admin/base.tpl' %} {% block css %}
<style>
    .block-content img {
        max-width: 100%;
    }
</style>
{% endblock %} {% block main %}

<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>文档审核</cite></a><span lay-separator="">/</span>
        <a><cite>详情</cite></a>
    </div>
</div>

<div class="layui-fluid" id="LAY-app-message-detail">
    <div class="layui-card layuiAdmin-msg-detail">
        <div class="layui-card-header">
            <h1>{{ detail.title }}</h1>
            <p>
                <span>发布时间：{{ detail.createdate }}</span>
                <span>作者：{{ detail.author }}</span>
            </p>
        </div>
        <div class="layui-card-body layui-text">
            <div class="layadmin-text block-content">
                {{ detail.content | safe }}
            </div>
            <div style="padding-top: 30px;">
                <form class="layui-form">
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
                            <button class="layui-btn layui-btn-danger" @click.prevent="nothrough">不通过</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


{% endblock %} {% block javascript %}
<script src="/public/js/vue.js "></script>
<script src="https://cdn.bootcss.com/vue-resource/1.5.0/vue-resource.min.js "></script>
<script>
    urlItemed('/examine');

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
                        kid: `{{detail.id}}`,
                        classid: $('#example-select2').val(),
                        _csrf: crsftoken,
                    },
                    success: function (data) {
                        layer.msg(data.msg, {
                            icon: 1,
                            time: 1500
                        }, function () {
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                    }
                })
            },
            nothrough: () => {
                const crsftoken = Cookies.get('csrfToken');
                $.ajax({
                    type: 'post',
                    url: '/examine/nothrough',
                    data: {
                        kid: `{{detail.id}}`,
                        _csrf: crsftoken,
                    },
                    success(data) {
                        if (data.errorcode === 0 && data.result) {
                            layer.msg(data.msg, {
                                icon: 1,
                                time: 2000
                            }, function () {
                                var index = parent.layer.getFrameIndex(window.name);
                                parent.layer.close(index);
                                parent.location.reload();
                            });
                        } else {
                            layer.msg(data.msg, {
                                icon: 2,
                            })
                        }
                    },
                })
            }
        }
    });

    $('.not-through').click((event) => {
        event.preventDefault();
        console.log("aaaaa");
        return;

    })
</script>
{% endblock %}