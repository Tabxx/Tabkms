{% extends '../Public/base.tpl' %} {% block css %}
<link rel="stylesheet" href="/public/css/res.css">
<link rel="stylesheet" href="/public/css/style.css">
<style>
    .my-nav a.nav-submenu:before {
        display: none;
    }
</style>
{% endblock %} {% block body %}
<!--内容-->
<div class="content">
    <div class="block">
        <div class="col-sm-9 col-md-9 col-lg-9" style="margin-top: 6px">
            <!-- Select2 (Default forms) -->
            <div class="block">
                <div class="block-content block-content-narrow" style="padding: 0 15px;overflow: hidden;">
                    <ul class="select">
                        <li class="select-list">
                            <dl id="select1">
                                <dt>方向:</dt>
                                <dd class="select-all"><a href="#">全部</a></dd>
                                {% for item in similar %}
                                {% if item.id == typeid %}
                                <dd class="selected"><a href="###">{{ item.name }}</a></dd>
                                {% else %}
                                <dd><a href="classLists?type={{ item.id }}">{{ item.name }}</a></dd>
                                {% endif %}
                                {% endfor %}
                            </dl>
                        </li>
                        <li class="select-list">
                            <dl id="select2">
                                <dt>标签:</dt>
                                <dd class="select-all selected"><a href="#">全部</a></dd>
                                {% for item in tags %}
                                <dd><a href="classLists?tag={{ item.id }}">{{ item.name }}</a></dd>
                                {% endfor %}
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
            <!-- END Select2 (Default forms) -->
            <div class="block block-bordered" style="margin-top: -20px">
                <div class="block-header bg-gray-lighter">
                    <h3 class="block-title">排序： <a href="">发布时间<span class="fa fa-unsorted"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><a
                            href="">浏览次数<span class="fa fa-unsorted"></span></a></h3>
                </div>
                {% for item in lists %}
                <div class="block-content">
                    <a href="/knowdetail?id={{ item.id }}" style="font-size: 18px">{{ item.title }}</a>
                    <p>{{ item.summary }}</p>
                    <p style="color: #999999">分类：{{ item.name }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：{{ item.username
                        }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：{{ item.createdate }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览：{{
                        item.browse_Number }}</p>
                </div>
                {% endfor %}

                <div class="dataTables_paginate paging_full_numbers" id="DataTables_Table_2_paginate" style="margin-left: 40%">
                    <ul class="pagination">
                        <li class="paginate_button first disabled" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_first"><a
                                href="#">First</a></li>
                        <li class="paginate_button previous disabled" aria-controls="DataTables_Table_2" tabindex="0"
                            id="DataTables_Table_2_previous"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li class="paginate_button active" aria-controls="DataTables_Table_2" tabindex="0"><a href="#">1</a></li>
                        <li class="paginate_button " aria-controls="DataTables_Table_2" tabindex="0"><a href="#">2</a></li>
                        <li class="paginate_button " aria-controls="DataTables_Table_2" tabindex="0"><a href="#">3</a></li>
                        <li class="paginate_button next" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_next"><a
                                href="#"><i class="fa fa-angle-right"></i></a></li>
                        <li class="paginate_button last" aria-controls="DataTables_Table_2" tabindex="0" id="DataTables_Table_2_last"><a
                                href="#">Last</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!--分割线-->

        <div class="col-sm-3 col-md-3 col-lg-3">
            <div class="block block-themed" style="margin-top: 6px">
                <div>
                    <img src="/public/pic/course/5.png" style="width: 100%">
                </div>
                <div class="block-content" style="height: 110px">
                    <h3 style="font-size: 20px">React响应用户的输入</h3>
                    <p style="font-size: 12px;color: #93999F;margin-top: 4px">中级&nbsp;&nbsp;&nbsp;<span class="si si-users">2802</span><br>带你了解如何监听事件以及指定事件处理器的知识。</p>
                </div>
            </div>

            <div class="block block-themed">
                <div>
                    <img src="/public/pic/course/6.png" style="width: 100%">
                </div>
                <div class="block-content" style="height: 110px">
                    <h3 style="font-size: 20px">ES6快速入门</h3>
                    <p style="font-size: 12px;color: #93999F;margin-top: 4px">初级&nbsp;&nbsp;&nbsp;<span class="si si-users">10282</span><br>用最通俗、形象的方法描述ES6的强大并教会你正确的学习方法。</p>
                </div>
            </div>

            <div class="block block-themed">
                <div>
                    <img src="/public/pic/course/7.png" style="width: 100%">
                </div>
                <div class="block-content" style="height: 110px">
                    <h3 style="font-size: 20px">Promise入门</h3>
                    <p style="font-size: 12px;color: #93999F;margin-top: 4px">高级&nbsp;&nbsp;&nbsp;<span class="si si-users">5687</span><br>带你入门Promise。</p>
                </div>
            </div>

            <div class="block block-themed">
                <div>
                    <img src="/public/pic/course/8.png" style="width: 100%">
                </div>
                <div class="block-content" style="height: 110px">
                    <h3 style="font-size: 20px">Ajax跨域完全讲解</h3>
                    <p style="font-size: 12px;color: #93999F;margin-top: 4px">中级&nbsp;&nbsp;&nbsp;<span class="si si-users">14695</span><br>完全降解Ajax跨域产生的原因和解决思路，掌握跨域的各种解决方案。</p>
                </div>
            </div>

            <div class="block block-themed">
                <div>
                    <img src="/public/pic/course/9.png" style="width: 100%">
                </div>
                <div class="block-content" style="height: 110px">
                    <h3 style="font-size: 20px">Weex入门</h3>
                    <p style="font-size: 12px;color: #93999F;margin-top: 4px">中级&nbsp;&nbsp;&nbsp;<span class="si si-users">6542</span><br>基于Weex前端开发框架的使用，开发出一个接近原生体验的案例。</p>
                </div>
            </div>
        </div>

    </div>
</div>

{% endblock %} {% block javascript %}
<script src="https://cdn.bootcss.com/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="/public/js/script.js"></script>
{% endblock %}