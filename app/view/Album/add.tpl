{% extends '../Public/admin/base.tpl' %} {% block css %}
<style>
    .show-img {
    width: 100px;
    height: 100px;
    display: none;
    margin: 15px 0 0 0;
  }

  .show-img img {
    width: 100%;
    max-height: 100px;
  }

  #app {
    display: none;
  }
</style>
{% endblock %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span> <a><cite>知识专辑管理</cite></a><span lay-separator="">/</span>
        <a><cite>新增</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="grid">新增知识专辑</a></legend>
            </fieldset>
        </div>
        <div class="layui-card-body">
            <div class="layui-row">
                <div class="layui-col-md11">
                    <form class="layui-form" action="">
                        <div class="layui-form-item">
                            <label class="layui-form-label">专辑名称</label>
                            <div class="layui-input-block">
                                <input type="text" name="name" lay-verify="title" autocomplete="off" placeholder="请输入名称"
                                    class="layui-input" />
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <label class="layui-form-label">起止时间</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="starttime" class="layui-input" id="starttime" />
                                </div>
                                <div class="layui-form-mid">-</div>
                                <div class="layui-input-inline">
                                    <input type="text" name="endtime" class="layui-input" id="endtime" />
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">积分</label>
                            <div class="layui-input-inline">
                                <input type="text" name="integral" lay-verify="title" autocomplete="off" placeholder="请输入积分"
                                    class="layui-input" />
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">图片</label>
                            <div class="layui-input-block">
                                <button type="button" class="layui-btn" id="upload-img">
                                    <i class="layui-icon">&#xe67c;</i>上传图片
                                </button>
                                <div class="show-img"><img alt="" /></div>
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">简介</label>
                            <div class="layui-input-block">
                                <textarea class="layui-textarea layui-hide" name="intro" lay-verify="content" id="LAY_demo_editor"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">章节</label>
                            <div class="layui-input-block">
                                <button class="layui-btn layui-btn-primary add-chapter">+</button>
                                <table class="layui-table" id="app">
                                    <colgroup>
                                        <col width="100" />
                                        <col width="250" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>章节</th>
                                            <th>章节名称</th>
                                            <th>知识内容</th>
                                            <th>知识id</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>

                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">测试</label>
                            <div class="layui-input-block">
                                <button class="layui-btn layui-btn-primary add-test">添加测试</button>
                                <table class="layui-table" id="test">
                                    <colgroup>
                                        <col width="50" />
                                        <col width="90" />
                                        <col width="160" />
                                        <col width="65" />
                                        <col width="65" />
                                        <col width="65" />
                                        <col width="65" />
                                        <col width="50" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>题号</th>
                                            <th>章节</th>
                                            <th>题目内容</th>
                                            <th>选项A</th>
                                            <th>选项B</th>
                                            <th>选项C</th>
                                            <th>选项D</th>
                                            <th>正确选项</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>

                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">权限设置</label>
                            <div class="layui-input-block" id="tag_ids2"></div>
                        </div>

                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">标签</label>
                            <div class="layui-input-block" id="tags"></div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit="" lay-filter="*">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %} {% block javascript %}
<script src="/public/js/vue.js"></script>
<script>
    urlItemed('/ablum');

    layui.extend({
        selectM: '/public/layui/layui_extends/selectM' // {/}的意思即代表采用自有路径，即不跟随 base 路径
    });

    layui.use(['laydate', 'layer', 'layedit', 'upload', 'form', 'selectM'], function () {
        var laydate = layui.laydate;
        var layer = layui.layer;
        var layedit = layui.layedit;
        var upload = layui.upload;
        var form = layui.form;
        var selectM = layui.selectM;

        form.render();

        //执行一个laydate实例
        laydate.render({
            elem: '#starttime' //指定元素
        });

        laydate.render({
            elem: '#endtime' //指定元素
        });

        var editor = layedit.build('LAY_demo_editor');
        layedit.sync(editor);
        //执行实例
        var uploadInst = upload.render({
            elem: '#upload-img', //绑定元素
            url: `/upload/image?_csrf={{ ctx.csrf | safe }}`, //上传接口
            done: function (res) {
                $('.show-img')
                    .show()
                    .children('img')
                    .attr('src', res.data.src);
            },
            error: function () {
                //请求异常回调
            }
        });

        $('.add-chapter').click(event => {
            event.preventDefault();

            layer.open({
                type: 2,
                title: `添加章节知识`,
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['893px', '600px'],
                content: `/album/list`,
                end: function () {
                    // parent.location.reload();
                }
            });
        });

        $('.add-test').click(e => {
            e.preventDefault();
            let index = $('#test tbody tr').length;
            let option =
                `<tr>
                  <td>${++index}</td>
                  <td><select>
                      <option>第一章</option>
                      <option>第二章</option>
                      <option>第三章</option>
                      <option>第四章</option>
                      <option>第五章</option>
                      <option>最终测试</option>
                  </select></td>      
                  <td><input type="text" class="layui-input" name="test"></td>                
                  <td><input type="text" class="layui-input" name="optionA"></td>                                
                  <td><input type="text" class="layui-input" name="optionB"></td>                                
                  <td><input type="text" class="layui-input" name="optionC"></td>                                
                  <td><input type="text" class="layui-input" name="optionD"></td>                                
                  <td><input type="text" class="layui-input" name="correct"></td>                                
              </tr>`;
            $('#test tbody').append(option);
            form.render();
        });

        var app = new Vue({
            el: '#app',
            data: {
                lists: []
            }
        });

        //多选标签-所有配置
        var tagIns2 = selectM({
            //元素容器【必填】
            elem: '#tag_ids2',
            name: 'users',
            data: '/getUserClass',
            //值的分隔符
            delimiter: ',',
            //候选项数据的键名
            field: {
                idName: 'uid',
                titleName: 'username'
            }
        });

        var tags = selectM({
            //元素容器【必填】
            elem: '#tags',
            name: 'tags',
            data: '/pageTags?page=1&limit=30&select=1',
            //值的分隔符
            delimiter: ',',
            //候选项数据的键名
            field: {
                idName: 'id',
                titleName: 'name'
            }
        });

        form.on('submit(*)', function (data) {
            // 简介内容
            data.field.intro = layedit.getContent(editor);
            data.field.image = $('.show-img img').attr('src');
            data.field.chapter = getChapter();
            data.field.test = getTest();
            data.field['_csrf'] = Cookies.get('csrfToken');

            $.ajax({
                url: '/album/add',
                data: data.field,
                type: 'POST',
                success(data) {
                    if (data.code == 0) {
                        layer.msg(data.msg, {
                            icon: 1,
                            time: 2000
                        }, function () {
                            location.href = '/album';
                        });
                    }
                }
            })
            return false;
        });

    });

    var getChapter = () => {
        let chapters = [];

        $('#app tbody tr').each((index, ele) => {
            let tds = $(ele).children('td');
            chapters.push({
                name: $(tds[1]).text(),
                kid: $(tds[3]).text(),
                sort: $(tds[0]).text()
            });
        })
        return chapters;
    }

    var getTest = () => {
        let test = [];

        $('#test tbody tr').each((index, ele) => {
            let tds = $(ele).children('td');
            test.push({
                content: $(tds[2]).children('input').val(),
                optionA: $(tds[3]).children('input').val(),
                optionB: $(tds[4]).children('input').val(),
                optionC: $(tds[5]).children('input').val(),
                optionD: $(tds[6]).children('input').val(),
                correct: $(tds[7]).children('input').val(),
                csort: $(tds[1]).children('select').val(),
            })
        });
        return test;
    }
</script>
{% endblock %}