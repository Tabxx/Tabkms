{% extends '../Public/admin/base.tpl' %}
{% block css %}
<style>
    .tab-btn{
        margin: 15px 0 0 0;
    }
</style>
{% endblock %}

{% block main %}
<div class="layui-row">
    <div class="layui-col-md12">
        <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">知识库管理</a>
            <a><cite>爬虫抓取</cite></a>
        </span>
    </div>
</div>

<div class="layui-row">
    <div class="layui-col-md12">
        <table id="demo" class="layui-table" lay-filter="test"></table>
        <div id="page"></div>
    </div>
</div>
<!--<div class="block">-->

    <!--&lt;!&ndash;分割线&ndash;&gt;-->

    <!--<div class="col-lg-12">-->
        <!--<div class="block block-bordered">-->
            <!--<div class="block-header bg-gray-lighter">-->
                <!--<h3 class="block-title">排序： <a href="">全部<span class="fa fa-unsorted"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="">待审核<span class="fa fa-unsorted"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="">审核通过<span class="fa fa-unsorted"></span></a><button class="btn btn-info" data-toggle="modal" data-target="#modal-popout" type="button" style="float: right">批量导入</button></h3>-->
            <!--</div>-->
            <!--{% for item in lists %}-->
            <!--<div id="a1" class="block-content">-->
                <!--<label class="css-input css-checkbox css-checkbox-info" style="float: left">-->
                    <!--<input type="checkbox"><span></span>&nbsp;&nbsp;&nbsp;&nbsp;-->
                <!--</label>-->
                <!--<div>-->
                    <!--<a href="/reptilian/detail?id={{ item.id }}" style="margin-bottom: 6px;font-size: 18px">{{ item.title }}</a>-->
                    <!--<p style="color: #999999">作者：{{ item.author }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ item.time }}</p>-->
                <!--</div>-->
            <!--</div>-->
            <!--{% endfor %}-->

            <!--<div class="dataTables_paginate paging_full_numbers" id="DataTables_Table_2_paginate" style="margin-left: 40%">-->
                <!--<ul class="pagination">-->
                    <!--<li class="paginate_button first disabled" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_first"><a href="#">First</a></li>-->
                    <!--<li class="paginate_button previous disabled" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_previous"><a href="#"><i class="fa fa-angle-left"></i></a></li>-->
                    <!--<li class="paginate_button active" aria-controls="DataTables_Table_2" tabindex="0"><a href="#">1</a></li>-->
                    <!--<li class="paginate_button " aria-controls="DataTables_Table_2" tabindex="0"><a href="#">2</a></li>-->
                    <!--<li class="paginate_button " aria-controls="DataTables_Table_2" tabindex="0"><a href="#">3</a></li>-->
                    <!--<li class="paginate_button next" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_next"><a href="#"><i class="fa fa-angle-right"></i></a></li>-->
                    <!--<li class="paginate_button last" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_last"><a href="#">Last</a></li>-->
                <!--</ul>-->
            <!--</div>-->
        <!--</div>-->
    <!--</div>-->
<!--</div>-->
{% endblock %}

{% block javascript %}
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">通过</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    // 高亮导航栏
    urlItemed('/reptilian');

    layui.use(['laypage', 'table'], function(){
        var laypage = layui.laypage;
        var table = layui.table;

        table.render({
            elem: '#demo'
            ,height: 315
            ,url: '/reptilian/page' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {field: 'input', title: '', width: '5%', type: 'checkbox', sort: true, fixed: 'left'}
                ,{field: 'title',width: '30%', title: '标题', }
                ,{field: 'author',width: '8%', title: '作者',  sort: true}
                ,{field: 'time', widtth: '15%', title: '发布时间', sort: true}
                ,{field: 'fun',width: '28%', title: '操作', toolbar: '#barDemo'}
            ]]
            ,height: 500
        });

        table.on('tool(test)', function(obj){
            let data = obj.data; //获得当前行数据
            let layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）

            if(layEvent === 'detail'){ //查看
                location.href="/examine/detail?id=" + data.id;
            } else if(layEvent === 'del'){ //删除

            } else if(layEvent === 'edit'){ //编辑

            }
        });

    });
</script>
{% endblock %}