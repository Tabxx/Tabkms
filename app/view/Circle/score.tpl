{% extends '../Public/base.tpl' %}

{% block body %}
<div class="content">
<div class="content bg-image" style="background-image: url('/public/pic/background/1.jpg')">
    <div class="push-50-t push-15 clearfix">
        <div class="push-15-r pull-left animated fadeIn">
            <img class="img-avatar img-avatar-thumb" src="/public/pic/icon/main.jpg" alt="">
        </div>
        <h1 class="h2 text-white push-5-t animated zoomIn">Tab</h1>
        <h2 class="h5 text-white-op animated zoomIn">UI 设计师
        </h2>
    </div>
</div>

<div class="content bg-white border-b">
    <div class="row items-push text-uppercase">
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
            <div class="font-w700 text-gray-darker animated fadeIn">积分</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="javascript:void(0)">980</a>
        </div>
        <div class="col-xs-4 col-sm-4">
            <div class="font-w700 text-gray-darker animated fadeIn">积分排名</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="javascript:void(0)">258</a>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
            <div class="font-w700 text-gray-darker animated fadeIn">积分动态</div>
            <a class="h2 font-w300 text-primary animated flipInX" href="javascript:void(0)">+ 5</a>
        </div>
    </div>
</div>


<!-- Striped Table -->
<div class="block" style="margin-top: 20px">
    <div class="block-header">
        <h3 class="block-title">积分动态详情</h3>
    </div>
    <div class="block-content">
        <table class="table table-striped">
            <thead>
            <tr>
                <th class="text-center" style="width: 10%;">#</th>
                <th style="width: 50%;">操作</th>
                <th class="text-center" style="width: 20%;">日期</th>
                <th class="text-center" style="width: 20%;">积分收支</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="text-center">1</td>
                <td style="color: #5C90D2;font-weight: bolder">发布话题</td>
                <td class="text-center">
                    2018-04-21
                </td>
                <td class="text-center">
                    <span class="label label-success">+ 2</span>
                </td>
            </tr>
            <tr>
                <td class="text-center">2</td>
                <td style="color: #5C90D2;font-weight: bolder">知识点学习完毕</td>
                <td class="text-center">
                    2018-04-20
                </td>
                <td class="text-center">
                    <span class="label label-success">+ 2</span>
                </td>
            </tr>
            <tr>
                <td class="text-center">3</td>
                <td style="color: #5C90D2;font-weight: bolder">评论话题</td>
                <td class="text-center">
                    2018-04-20
                </td>
                <td class="text-center">
                    <span class="label label-success">+ 1</span>
                </td>
            </tr>
            <tr>
                <td class="text-center">4</td>
                <td style="color: #5C90D2;font-weight: bolder">知识点更新</td>
                <td class="text-center">
                    2018-04-18
                </td>
                <td class="text-center">
                    <span class="label label-success">+ 3</span>
                </td>
            </tr>
            <tr>
                <td class="text-center">5</td>
                <td style="color: #5C90D2;font-weight: bolder">知识点纠错</td>
                <td class="text-center">
                    2018-04-17
                </td>
                <td class="text-center">
                    <span class="label label-success">+ 3</span>
                </td>
            </tr>
            <tr>
                <td class="text-center">6</td>
                <td style="color: #5C90D2;font-weight: bolder">发布话题</td>
                <td class="text-center">
                    2018-04-15
                </td>
                <td class="text-center">
                    <span class="label label-success">+ 2</span>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</div>
<!-- END Striped Table -->
{% endblock %}