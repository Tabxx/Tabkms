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
  }

  .second-class {
    display: none;
  }
</style>
{% endblock %} {% block main %}
<div class="layui-card layadmin-header">
  <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
    <a lay-href="">主页</a><span lay-separator="">/</span> <a><cite>知识专辑管理</cite></a><span lay-separator="">/</span> <a><cite>添加章节知识</cite></a>
  </div>
</div>

<div class="layui-fluid">
  <div class="layui-card">
    <div class="layui-card-header layuiadmin-card-header-auto">
      <fieldset class="layui-elem-field layui-field-title site-title">
        <legend><a name="grid">添加章节知识</a></legend>
      </fieldset>
    </div>
    <div class="layui-card-body">
      <div class="layui-row">
        <div class="layui-col-md6 layui-col-md-offset2">
          <form class="layui-form">
            <div class="layui-form-item">
              <label class="layui-form-label">章节名称</label>
              <div class="layui-input-block">
                <input type="text" class="layui-input" name="name">
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">分类选择</label>
              <div class="layui-input-inline">
                <select name="menu" lay-verify="required" lay-filter="classify">
                  <option value="" disabled>请选择</option>
                  {% for item in classify %}
                  <option value="{{item.id}}">{{ item.name }}</option>
                  {% endfor %}
                </select>
              </div>
              <div class="layui-input-inline">
                <select name="menu" lay-verify="required" id="menu" lay-filter="menu">
                  <option value="" disabled>请选择</option>

                </select>
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">知识</label>
              <div class="layui-input-block">
                <select name="knowledge" lay-verify="required" id="knowledge" lay-filter="knowledge">
                  <option value="" disabled>请选择</option>
                </select>
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">章节</label>
              <div class="layui-input-inline">
                <select name="zhangjie" lay-verify="required">
                  <option value="第一章">第一章</option>
                  <option value="第二章">第二章</option>
                  <option value="第三章">第三章</option>
                  <option value="第四章">第四章</option>
                  <option value="第五章">第五章</option>
                  <option value="第六章">第六章</option>
                </select>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="*">添加</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>

    <div class="layui-card-header layuiadmin-card-header-auto">
      <fieldset class="layui-elem-field layui-field-title site-title">
        <legend><a name="grid">章节详情</a></legend>
      </fieldset>
    </div>

    <div class="layui-card-body">
      <div class="layui-row">
        <div class="layui-col-md6 layui-col-md-offset2">
          <table class="layui-table" id="app">
            <colgroup>
              <col width="150">
              <col width="200">
            </colgroup>
            <thead>
              <tr>
                <th>章节</th>
                <th>章节名称</th>
                <th>知识内容</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="item in lists">
                <td>${ item.zj }</td>
                <td>${ item.name }</td>
                <td>${ item.knowledge }</td>
              </tr>
            </tbody>
          </table>
          <div class="layui-input-block">
            <button class="layui-btn close-save">确认</button>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
{% endblock %}
{% block javascript %}
<script src="/public/js/vue.js"></script>
<script>
  urlItemed('/ablum');
  var classify = [];

  layui.use(['layer', 'form'], function () {
    var layer = layui.layer,
      form = layui.form;
    var knowledge = [];

    $.ajax({
      url: '/album/list',
      data: {
        data: 1
      },
      success(res) {
        classify = res.data;
      }
    });

    form.on('select(classify)', function (data) {

      let child = classify.find((item) => {
        return item.id == data.value;
      }).child;

      $('#menu').html(`<option value="" disabled>请选择</option>`);

      for (let item in child) {
        let opt = `<option value="${child[item].id}">${child[item].name}</option>`;
        $('#menu').append(opt);
      }

      form.render();
    });

    form.on('select(menu)', function (data) {
      $.ajax({
        url: '/getclassknow',
        data: {
          cid: data.value
        },
        success(res) {
          let child = res.data;
          knowledge = res.data;
          $('#knowledge').html(`<option value="" disabled>请选择</option>`);
          for (let item in child) {
            let opt = `<option value="${child[item].id}">${child[item].title}</option>`;
            $('#knowledge').append(opt);
          }
          form.render();
        }
      })
    });

    form.on('submit(*)', function (data) {
      let field = data.field;
      let know = knowledge.find((item) => {
        return item.id == field.knowledge;
      });

      app.$data.lists.push({
        zj: field.zhangjie,
        knowledge: know.title,
        kid: field.knowledge,
        name: field.name
      })

      return false;
    });
  });

  var app = new Vue({
    el: '#app',
    delimiters: ['${', '}'],
    data: {
      lists: []
    }
  });

  $('.close-save').click((e) => {
    e.preventDefault();
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
    parent.$('#app tbody').empty().show();
    parent.$('#app').show();
    let list = app.$data.lists;

    for (let item in list) {
      console.log(list);
      parent.$('#app tbody').append(
        `<tr>
        <td>${list[item].zj}</td>
        <td>${list[item].name}</td>
        <td>${list[item].knowledge}</td>
        <td>${list[item].kid}</td>
        </tr>`
      );
    }


  })
</script>
{% endblock %}