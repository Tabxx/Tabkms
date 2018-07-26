{% extends '../Public/base.tpl' %}

{% block css %}
<style>
    .btabs-animated-slideup-gaishu img{
        width: 100%;
    }
</style>
{% endblock %}

{% block body %}
<!-- Block Tabs Animated Slide Up -->
<div class="block">
    <ul class="nav nav-tabs nav-tabs-alt" data-toggle="tabs">
        <li class="active">
            <a href="#btabs-animated-slideup-gaishu"><span class="si si-info"></span> 概述</a>
        </li>
        <li class="">
            <a href="#btabs-animated-slideup-fujian"><span class="si si-paper-clip"></span> 附件</a>
        </li>
        <li class="">
            <a href="#btabs-animated-slideup-gengxin"><span class="si si-refresh"></span> 更新记录</a>
        </li>
        <li class="">
            <a href="#btabs-animated-slideup-lishi"><span class="si si-clock"></span> 历史版本</a>
        </li>
        <li class="">
            <a href="#btabs-animated-slideup-pinglun"><span class="si si-speech"></span> 评论</a>
        </li>
    </ul>
    <div class="block-content tab-content">
        <div class="tab-pane fade fade-up active in" id="btabs-animated-slideup-gaishu">
            <div class="row">
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <a class="block block-link-hover3" href="javascript:void(0)">
                        <div class="block-content block-content-full clearfix">
                            <i class="fa fa-file-text-o fa-2x text-muted pull-right"></i>
                            <span class="h4 font-w700">6</span> <span class="h4 text-muted">提交次数</span>
                        </div>
                    </a>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <a class="block block-link-hover3" href="javascript:void(0)">
                        <div class="block-content block-content-full clearfix">
                            <i class="si si-tag fa-2x text-muted pull-right"></i>
                            <span class="h4 font-w700">{{ content.tags.length }}</span> <span class="h4 text-muted">标签</span>
                        </div>
                    </a>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <a class="block block-link-hover3" href="javascript:void(0)">
                        <div class="block-content block-content-full clearfix">
                            <i class="si si-users fa-2x text-muted pull-right"></i>
                            <span class="h4 font-w700">12</span> <span class="h4 text-muted">贡献者</span>
                        </div>
                    </a>
                </div>
            </div>

            <!--分割线-->
            {{ content.content | safe }}
        </div>
        <div class="tab-pane fade fade-up" id="btabs-animated-slideup-fujian">
            <table id="fujiantab" class="layui-table">
                <colgroup>
                    <col width="25%">
                    <col width="10%">
                    <col width="40%">
                    <col width="15%">
                    <col width="10%">
                </colgroup>
                <thead>
                <tr>
                    <th>附件名称(点击名称下载)</th>
                    <th>大小</th>
                    <th>描述</th>
                    <th>上传于</th>
                    <th>下载数</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><a style="cursor: pointer;color: #6790CD">build.rar</a></td>
                    <td>5.36MB</td>
                    <td>项目主体文件</td>
                    <td>5月前</td>
                    <td>33</td>
                </tr>
                <tr>
                    <td><a style="cursor: pointer;color: #6790CD">datatable.json</a></td>
                    <td>731KB</td>
                    <td>数据表</td>
                    <td>5月前</td>
                    <td>21</td>
                </tr>
                <tr>
                    <td><a style="cursor: pointer;color: #6790CD">index.html</a></td>
                    <td>23KB</td>
                    <td>主页</td>
                    <td>5月前</td>
                    <td>45</td>
                </tr>
                <tr>
                    <td><a style="cursor: pointer;color: #6790CD">readme.md</a></td>
                    <td>13KB</td>
                    <td>项目说明</td>
                    <td>5月前</td>
                    <td>56</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="tab-pane fade fade-up" id="btabs-animated-slideup-gengxin">
            <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">更新了知识<span class="pull-right" style="margin-right: 15px;color: #8790A4;">1小时前</span></div>
            <ul class="nav-users push col-sm-12 col-md-12 col-lg-12" style="padding: 0">
                <li>
                    <a>
                        <img class="img-avatar" src="/public/pic/icon/1.jpg">
                        <span class="si si-user" style="font-size: 16px;font-weight: bolder"> 王建平</span>
                        <p></p>
                        <p style="font-weight: lighter;color: #6790CD">修改内容：ajax模式中所有js和css统一在index.html引入，不再分开页面引入。</p>
                    </a>
                </li>
            </ul>

            <!--分割线-->

            <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">更新了知识<span class="pull-right" style="margin-right: 15px;color: #8790A4;">2小时前</span></div>
            <ul class="nav-users push col-sm-12 col-md-12 col-lg-12" style="padding: 0">
                <li>
                    <a>
                        <img class="img-avatar" src="/public/pic/icon/2.jpg">
                        <span class="si si-user" style="font-size: 16px;font-weight: bolder"> 刘丽</span>
                        <p></p>
                        <p style="font-weight: lighter;color: #6790CD">修改内容：ajax模式中添加tab页功能，加载页面可以加载多个，通过头部tab切换，该功能只在ajax模式中存在。</p>
                    </a>
                </li>
            </ul>

            <!--分割线-->

            <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">更新了知识<span class="pull-right" style="margin-right: 15px;color: #8790A4;">6小时前</span></div>
            <ul class="nav-users push col-sm-12 col-md-12 col-lg-12" style="padding: 0">
                <li>
                    <a>
                        <img class="img-avatar" src="/public/pic/icon/3.jpg">
                        <span class="si si-user" style="font-size: 16px;font-weight: bolder"> 杨一山</span>
                        <p></p>
                        <p style="font-weight: lighter;color: #6790CD">修改内容：在实例中添加了一个table的实例，并做好了服务端的分页，table数据的处理等。</p>
                    </a>
                </li>
            </ul>

            <!--分割线-->

            <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">更新了知识<span class="pull-right" style="margin-right: 15px;color: #8790A4;">1天前</span></div>
            <ul class="nav-users push col-sm-12 col-md-12 col-lg-12" style="padding: 0">
                <li>
                    <a>
                        <img class="img-avatar" src="/public/pic/icon/4.jpg">
                        <span class="si si-user" style="font-size: 16px;font-weight: bolder"> 魏建国</span>
                        <p></p>
                        <p style="font-weight: lighter;color: #6790CD">修改内容：a标签通过添加属性target=navTab添加新开标签页功能，通过异步请求href连接页面，仅ajax模式可使用。</p>
                    </a>
                </li>
            </ul>

            <!--分割线-->

            <div style="margin-left: 15px;margin-bottom: 5px;color: #8790A4;">更新了知识<span class="pull-right" style="margin-right: 15px;color: #8790A4;">2天前</span></div>
            <ul class="nav-users push col-sm-12 col-md-12 col-lg-12" style="padding: 0">
                <li>
                    <a>
                        <img class="img-avatar" src="/public/pic/icon/5.jpg">
                        <span class="si si-user" style="font-size: 16px;font-weight: bolder"> 丁凯</span>
                        <p></p>
                        <p style="font-weight: lighter;color: #6790CD">修改内容：根目录的build文件夹增加了fonts、img、js文件夹，通过grunt编译转移到dist/目录，更利于二次开发时源码目录与编译目录区分。</p>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tab-pane fade fade-up" id="btabs-animated-slideup-lishi">
            <span style="font-size: 18px;color: black;font-weight: bolder">2017-03-24</span>
            <p style="font-size: 15px;margin-top: 5px;margin-bottom: 15px">1.添加tab页刷新<br>2.优化tab导航<br>3.修复index2内页样式丢失</p>

            <span style="font-size: 18px;color: black;font-weight: bolder">2017-01-03</span>
            <p style="font-size: 15px;margin-top: 5px;margin-bottom: 15px">1.添加自定义表格及实例<br>2.优化tab导航</p>

            <span style="font-size: 18px;color: black;font-weight: bolder">2016-11-11</span>
            <p style="font-size: 15px;margin-top: 5px;margin-bottom: 15px">1.tab导航右键菜单<br>2.优化滚动条<br>3.优化app.js</p>

            <span style="font-size: 18px;color: black;font-weight: bolder">2016-11-7</span>
            <p style="font-size: 15px;margin-top: 5px;margin-bottom: 15px">修改目录，把跟目录下的bootstrap移到plugins 增加一个使用版，使用版没有开发源文件，只剩下min后的js和CSS</p>

            <span style="font-size: 18px;color: black;font-weight: bolder">2016-10-28</span>
            <p style="font-size: 15px;margin-top: 5px;margin-bottom: 15px">
                1.ajax模式中所有js和css统一在index.html引入，不再分开页面引入。<br>
                2.ajax模式中添加tab页功能，加载页面可以加载多个，通过头部tab切换，该功能只在ajax模式中存在。<br>
                3.在实例中添加了一个table的实例，并做好了服务端的分页，table数据的处理等。<br>
                4.a标签通过添加属性target=navTab添加新开标签页功能，通过异步请求href连接页面，仅ajax模式可使用。
            </p>

            <span style="font-size: 18px;color: black;font-weight: bolder">2016-10-17</span>
            <p style="font-size: 15px;margin-top: 5px;margin-bottom: 15px">1.增加include文件夹，用于存放ajax加载的内页文件。<br>2.根目录的build文件夹增加了fonts、img、js文件夹，通过grunt编译转移到dist/目录，更利于二次开发时源码目录与编译目录区分。</p>
        </div>
        <div class="tab-pane fade fade-up" id="btabs-animated-slideup-pinglun">
            <!-- Block Tabs Animated Slide Up -->
            <div class="block">
                <ul class="nav nav-tabs" data-toggle="tabs" id="tab-pl">
                    <li class="active">
                        <a href="#btabs-animated-slideup-home">全文点评</a>
                    </li>
                    <li class="">
                        <a href="#btabs-animated-slideup-profile">段落点评总览</a>
                    </li>
                </ul>
                <div class="block-content tab-content">
                    <div class="tab-pane fade fade-up active in" id="btabs-animated-slideup-home">
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">浅眠</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-11&nbsp;&nbsp;12:43</h4>
                        <p>说的挺详细的，赞一个<span style="float: right"><span class="si si-like">3</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">6</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">黑色小强</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-09&nbsp;&nbsp;11:02</h4>
                        <p>楼主能说一些实际开发的经验吗？<span style="float: right"><span class="si si-like">12</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">9</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">鱼腥腥</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-08&nbsp;&nbsp;01:11</h4>
                        <p>顶一个！<span style="float: right"><span class="si si-like">9</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">4</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">我不是蝗虫</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-07&nbsp;&nbsp;17:33</h4>
                        <p>赶紧抱大腿。。。<span style="float: right"><span class="si si-like">8</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">7</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">shi'ne</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-07&nbsp;&nbsp;13:46</h4>
                        <p>楼主我有问题可以私聊你吗？<span style="float: right"><span class="si si-like">23</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">11</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">嘴强王者</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-06&nbsp;&nbsp;09:02</h4>
                        <p>Ajax牛逼啊。。。<span style="float: right"><span class="si si-like">5</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">2</span></span></p>
                    </div>
                    <div class="tab-pane fade fade-up" id="btabs-animated-slideup-profile">
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">左手倒影</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-11&nbsp;&nbsp;20:12</h4>
                        <p>帖子很受用！<span style="float: right"><span class="si si-like">12</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">5</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">逗比男神i</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-10&nbsp;&nbsp;23:34</h4>
                        <p>楼主帖子是水来的吧~<span style="float: right"><span class="si si-like">2</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">1</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">ve依赖你</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-10&nbsp;&nbsp;20:54</h4>
                        <p>求楼主说的再详细些。。。<span style="float: right"><span class="si si-like">5</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">3</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">乜許倣掱</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-09&nbsp;&nbsp;15:06</h4>
                        <p>楼主Ajax怎么导入到项目中啊？<span style="float: right"><span class="si si-like">9</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">7</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">地主家的傻儿子</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-08&nbsp;&nbsp;11:42</h4>
                        <p>楼主有推荐什么教程吗？<span style="float: right"><span class="si si-like">13</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">9</span></span></p>
                        <h4 style="font-size: 16px;margin-bottom: 5px"><span style="color: #4DB7EE">尐样贼拽</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2018-03-08&nbsp;&nbsp;06:31</h4>
                        <p>怎么实现Ajax的异步通讯啊？<span style="float: right"><span class="si si-like">21</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="si si-bubble">11</span></span></p>
                    </div>
                </div>
            </div>
            <!-- END Block Tabs Animated Slide Up -->

            <!--分割线-->

            <div class="block block-bordered" id="tab-dp">
                <div class="block-header">
                    <h3 class="block-title">发表评论</h3>
                    <div class="text-warning push-10-t animated flipInX">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span class="text-muted">(4.5)</span>
                        <span class="si si-like" style="margin-left: 20px">很好</span>
                    </div>
                </div>
                <div class="block-content">
                    <div class="block">
                        <div class="block-content block-content-full">
                            <!-- Summernote Container -->
                            <div class="js-summernote"></div>
                        </div>
                    </div>
                    <button class="btn btn-minw btn-square btn-success" type="button" style="margin-bottom: 40px;margin-left: 46%">提交评论</button>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}

{% block javascript %}
<script>

</script>
{% endblock %}