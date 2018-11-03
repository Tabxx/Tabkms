{% extends '../Public/admin/base.tpl' %} {% block main %}
<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb" style="visibility: visible;">
        <a lay-href="">主页</a><span lay-separator="">/</span>
        <a><cite>知识库管理</cite></a><span lay-separator="">/</span>
        <a><cite>内容管理</cite></a>
    </div>
</div>


<div class="layui-fluid">
    <div class="layui-row">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body">
                    <table id="demo" class="layui-hide"></table>
                </div>
            </div>
        </div>
    </div>
</div>



<!--<div class="row">
   <div class="col-sm-3 col-md-3 col-lg-3">
        <div class="block">
            <div class="block-content">
                <div class="eleTree ele1" lay-filter="data1"></div>
            </div>
        </div>
    </div>

    <div class="col-sm-9 col-md-9 col-lg-9">


        <div class="col-lg-12">
            <div class="block">
                <div class="block-content block-content-narrow" style="padding: 0 15px;overflow: hidden;">
                    <ul class="select">
                        <li class="select-list">
                            <dl id="select1">
                                <dt>方向:</dt>
                                <dd ><a href="#">全部</a></dd>
                                <dd class="select-all selected"><a href="#">前端技术</a></dd>
                                <dd><a href="#">后端技术</a></dd>
                                <dd><a href="#">移动模块</a></dd>
                            </dl>
                        </li>
                        <li class="select-list">
                            <dl id="select2">
                                <dt>前端技术:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                <dd><a href="#">HTML/CSS</a></dd>
                                <dd><a href="#">JavaScript</a></dd>
                                <dd><a href="#">HTML5</a></dd>
                                <dd><a href="#">CSS3</a></dd>
                                <dd><a href="#">jQuery</a></dd>
                                <dd><a href="#">Node.js</a></dd>
                                <dd><a href="#">Bootstrap</a></dd>
                                <a style="float: right;margin-right: 20px;"  id="more" href="#">更多</a>
                            </dl>
                        </li>
                        <li class="select-list" style="display: none;" id="tab-select4">
                            <dl id="select4">
                                <dd><a href="#"> Angular</a></dd>
                                <dd><a href="#"> React.js</a></dd>
                                <dd><a href="#"> Vue.js</a></dd>
                                <dd><a href="#"> WebApp</a></dd>
                            </dl>
                        </li>
                        <li class="select-list">
                            <dl id="select3">
                                <dt>类别:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                <dd><a href="#">视频</a></dd>
                                <dd><a href="#">音频</a></dd>
                                <dd><a href="#">TXT</a></dd>
                                <dd><a href="#">PPT</a></dd>
                                <dd><a href="#">音频</a></dd>
                                <dd><a href="#">EXCEL</a></dd>
                                <dd><a href="#">EXE</a></dd>
                                <a style="float: right;margin-right: 20px;" href="#">更多</a>
                            </dl>
                        </li>

                        <li class="select-list">
                            <dl id="select5">
                                <dt>时间:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                <dd><a href="#">一天内</a></dd>
                                <dd><a href="#">两天内</a></dd>
                                <dd><a href="#">三天内</a></dd>
                                <dd><a href="#">一周内</a></dd>
                                <dd><a href="#">两周内</a></dd>
                                <dd><a href="#">一个月内</a></dd>
                                <dd><a href="#">两个月内</a></dd>
                            </dl>
                        </li>
                        <li class="select-result">
                            <dl>
                                <dt>已选条件：</dt>
                                <dd class="select-no">暂时没有选择过滤条件</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="col-lg-12">
            <table id="demo" class="layui-table" lay-filter="test"></table>

            <div class="block block-bordered" style="margin-top: -20px">
                <div class="block-header bg-gray-lighter">
                    <h3 class="block-title">排序： <a href="">发布时间<span class="fa fa-unsorted"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><a href="">浏览次数<span class="fa fa-unsorted"></span></a><a href="newdocument.html"><button class="btn btn-minw btn-success" type="button" style="float: right">新建</button></a></h3>
                </div>
                <div class="block-content">
                    <a href="documentinformation.html" style="margin-bottom: 6px;font-size: 18px">AJAX是什么?有什么用?</a>
                    <p>Ajax 即“Asynchronous Javascript And XML”（异步 JavaScript 和 XML），是指一种创建交互式网页应用的网页开发技术。Ajax是一种在无需重新加载整个网页的情况下，能够更新部分网页的技术。通过在后台与服务器进行少量数据交换，Ajax 可以使网页实现异步更新。这意味着可以在不重新加载整个网页的情况下，对网页的某部分进行更新。</p>
                    <p style="color: #999999">分类：前端技术&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：刘涛&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2018-03-09&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：21</p>
                </div>
</div>-->

{% endblock %} {% block javascript %}
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看详情</a>
</script>
<script>
    urlItemed('/knowmana');

    layui.use(['laypage', 'table', 'layer'], function() {
        var laypage = layui.laypage;
        var table = layui.table;
        var layer = layui.layer;

        table.render({
            elem: '#demo',
            height: 315,
            url: '/classify/all', //数据接口
            page: true, //开启分页
            cols: [
                [ //表头
                    {
                        field: 'input',
                        title: '',
                        width: '5%',
                        type: 'checkbox',
                        sort: true,
                        fixed: 'left'
                    }, {
                        field: 'title',
                        width: '40%',
                        title: '标题',
                    }, {
                        field: 'author',
                        width: '10%',
                        title: '作者',
                        sort: true
                    }, {
                        field: 'createdate',
                        widtth: '20%',
                        title: '发布时间',
                        sort: true
                    }, {
                        field: 'fun',
                        width: '20%',
                        title: '操作',
                        toolbar: '#barDemo'
                    }
                ]
            ],
            height: 500
        });

        table.on('tool(test)', function(obj) {
            let data = obj.data; //获得当前行数据
            let layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）

            if (layEvent === 'detail') { //查看
                layer.open({
                    type: 2,
                    title: `${data.title}`,
                    shadeClose: true,
                    shade: false,
                    maxmin: true, //开启最大化最小化按钮
                    area: ['893px', '600px'],
                    content: `/reptilian/detail?id=${data.id}`,
                    end: function() {
                        // var index = parent.layer.getFrameIndex(window.name);
                        parent.location.reload();
                    }
                });
            } else if (layEvent === 'del') { //删除

            } else if (layEvent === 'edit') { //编辑

            }
        });

    });



    layui.config({
        base: "public/layui/lay/mymodules/"
    }).use(['jquery', 'eleTree'], function() {
        var $ = layui.jquery;
        var eleTree = layui.eleTree;

        eleTree.render({
            elem: '.ele1',
            url: "/classify/tree?_csrf={{ ctx.csrf | safe }}",
            type: "get",
            // data: data,
            showCheckbox: true,
            contextmenuList: ["copy", "add", "edit", "remove"],
            drag: true,
            accordion: true
        });

        eleTree.on("add(data1)", function(data) {
            console.log(data);
            // 若后台修改，则重新获取后台数据，然后重载
            // eleTree.reload(".ele1", {where: {data: JSON.stringify(data.data)}})
        })
        eleTree.on("edit(data1)", function(data) {
            console.log(data);
        })
        eleTree.on("remove(data1)", function(data) {
            console.log(data);
        })
        eleTree.on("toggleSlide(data1)", function(data) {
            console.log(data);
        })
        eleTree.on("checkbox(data1)", function(data) {
            console.log(data);
        })

        $(".layui-btn").on("click", function() {
            console.log(eleTree.checkedData(".ele2"));
        })
    });
</script>
{% endblock %}