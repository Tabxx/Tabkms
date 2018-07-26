{% extends '../Public/base.tpl' %}

{% block css %}
<link rel="stylesheet" href="/public/css/res.css">
<link rel="stylesheet" href="/public/css/style.css">
<style>
    .my-nav a.nav-submenu:before{
        display: none;
    }
    .highlight {
        color:red;
    }
</style>
{% endblock %}

{% block body %}
<div class="row" style="padding: 0">
    <div class="col-sm-9 col-md-9 col-lg-9">
        <div class="col-sm-12 col-md-12 col-lg-12">
            <!-- Select2 (Default forms) -->
            <div class="block">
                <div class="block-content block-content-narrow" style="padding: 0 15px;overflow: hidden;">
                    <ul class="select">
                        <li class="select-list">
                            <dl id="select1">
                                <dt>所属部门:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                <dd><a href="#">运维</a></dd>
                                <dd><a href="#">产品</a></dd>
                                <dd><a href="#">财务</a></dd>
                                <dd><a href="#">公司制度</a></dd>
                                <dd><a href="#">客服</a></dd>
                                <dd><a href="#">销售</a></dd>
                                <dd><a href="#">市场</a></dd>
                                <a style="float: right;margin-right: 20px;" href="#">更多</a>
                            </dl>
                        </li>
                        <li class="select-list">
                            <dl id="select2">
                                <dt>作者:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                <dd><a href="#">小明</a></dd>
                                <dd><a href="#">小朱</a></dd>
                                <dd><a href="#">小张</a></dd>
                                <dd><a href="#">王二</a></dd>
                                <dd><a href="#">小刘</a></dd>
                                <dd><a href="#">小郭</a></dd>
                                <dd><a href="#">小从</a></dd>
                                <dd><a href="#">小白</a></dd>
                                <a style="float: right;margin-right: 20px;" href="#">更多</a>
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
                                <a style="float: right;margin-right: 20px;" id="more" href="#">更多</a>
                            </dl>
                        </li>
                        <li class="select-list" style="display: none;" id="tab-select4">
                            <dl id="select4">
                                <dd><a href="#">图片</a></dd>
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
            <!-- END Select2 (Default forms) -->
        </div>

        <!--分割线-->

        <div class="col-sm-12 col-md-12 col-lg-12">
            <div class="block block-bordered" style="margin-top: -20px">
                <div class="block-header bg-gray-lighter">
                    <h3 class="block-title">排序： <a href="">发布时间<span class="fa fa-unsorted"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><a href="">浏览次数<span class="fa fa-unsorted"></span></a></h3>
                </div>
                <div class="tab-pane fade fade-up in" id="search-projects" style="padding: 15px;">
                    <div class="border-b push-30">
                        <h2 class="push-10">{{ searchResult.length }} <span class="h5 font-w400 text-muted">条搜索结果</span></h2>
                    </div>
                    <table class="table table-striped table-vcenter">
                        <thead>
                        <tr>
                            <th><i class="fa fa-header text-gray"></i> 标题</th>
                            <th class="text-center hidden-xs" style="width: 15%;"><i class="fa fa-user-circle-o text-gray"></i> 作者</th>
                            <th class="text-center hidden-xs hidden-sm" style="width: 15%;"><i class="fa fa-bar-chart text-gray"></i> 浏览量</th>
                            <th class="text-right" style="width: 15%; min-width: 110px;"><i class="fa fa-clock-o text-gray"></i> 发布时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        {% for item in searchResult %}
                        <tr>
                            <td>
                                <h3 class="h5 font-w600 push-10">
                                    <a class="link-effect tab-keyword" href="/knowdetail?id={{ item.id }}">{{ item.title }}</a>
                                </h3>
                                <div class="push-10">
                                    <span class="label label-primary"> {{ item.name }}</span>
                                </div>
                                <div class="font-s13 text-muted hidden-xs">
                                    <p class="tab-keyword">{{ item.summary }}</p>
                                </div>
                            </td>
                            <td class="h5 text-center hidden-xs">{{ item.username }}</td>
                            <td class="h5 text-center hidden-xs hidden-sm">{{ item.browse_Number }}</td>
                            <td class="h6 text-primary text-right tab-time">{{ item.createdate }}</td>
                        </tr>
                        {% endfor %}
                        </tbody>
                    </table>
                </div>


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
            </div>
        </div>
    </div>
    <div class="col-sm-3 col-md-3 col-lg-3">
        <div class="block" style="padding: 15px;">
            <div class="font-w600 font-s12 text-uppercase text-muted push-10">热门搜索</div>
            <ul class="nav nav-pills nav-stacked font-s13 push">
                <li>
                    <a href="javascript:void(0)"><span class="badge badge-danger pull-right">186</span>出色的网络安全技能</a>
                </li>
                <li>
                    <a href="javascript:void(0)"><span class="badge badge-danger  pull-right">145</span>编程和工程经验</a>
                </li>
                <li>
                    <a href="javascript:void(0)"><span class="badge badge-danger  pull-right">130</span>云计算</a>
                </li>
                <li>
                    <a href="javascript:void(0)"><span class="badge badge-primary pull-right">102</span>机器人学习</a>
                </li>
                <li>
                    <a href="javascript:void(0)"><span class="badge badge-primary pull-right">83</span>深度学习</a>
                </li>
                <li>
                    <a href="javascript:void(0)"><span class="badge badge-primary pull-right">49</span>区块链</a>
                </li>
                <li>
                    <a href="javascript:void(0)"><span class="badge badge-primary pull-right">2</span>中间件</a>
                </li>
            </ul>
        </div>
    </div>
</div>
{% endblock %}

{% block javascript %}
<script src="https://cdn.bootcss.com/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="/public/js/script.js"></script>
<script>
    $(function(){

        // 删除日期的时分秒
        $('.tab-time').each(function(key, val){
            let time = $(val).html().split(' ')[0];
            $(val).html(time);
        });

        // url参数获取
        function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg); //匹配目标参数
            if (r != null) return decodeURI(r[2]); return null; //返回参数值
        }

        // 关键词标记
        function boldKeyword(){
            clearSelection();
            var searchText = getUrlParam("keyword");

            var regExp = new RegExp(searchText, 'gi');
            $('.tab-keyword').each(function()//遍历文章；
            {
                var html = $(this).html();
                var newHtml = html.replace(regExp, '<span class="highlight" >'+searchText+'</span>');

                $(this).html(newHtml);//更新文章；
            });
        }

        boldKeyword();

        function clearSelection()
        {
            $('.tab-keyword').each(function(){
                $(this).find('.highlight').each(function()
                {
                    $(this).replaceWith($(this).html());
                });
            });
        }


    })

</script>
{% endblock %}