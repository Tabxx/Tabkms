
    <!-- Header Navigation Right -->
    <ul class="nav-header pull-right">
        <li>
            <div class="btn-group">
                <button class="btn btn-default btn-image dropdown-toggle" data-toggle="dropdown" type="button">
                    <img src="/public/pic/icon/main.jpg" alt="Avatar">
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu dropdown-menu-right">
                    <li class="dropdown-header">个人简介</li>
                    <li>
                        <a tabindex="-1" href="/personalzone">
                            <i class="si si-user pull-right"></i>
                            <span class="badge badge-success pull-right"></span>个人中心
                        </a>
                    </li>
                    <li>
                        <a tabindex="-1" href="message.html">
                            <i class="si si-envelope pull-right"></i>
                            <span class="badge badge-primary pull-right">2</span>消息
                        </a>
                    </li>
                    <li>
                        <a tabindex="-1" href="javascript:void(0)">
                            <i class="si si-settings pull-right"></i>设置
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li class="dropdown-header">操作</li>
                    <li>
                        <a tabindex="-1" href="lockaccount.html">
                            <i class="si si-lock pull-right"></i>锁定账号
                        </a>
                    </li>
                    <li>
                        <a tabindex="-1" href="/logout">
                            <i class="si si-logout pull-right"></i>登出
                        </a>
                    </li>
                </ul>
            </div>
        </li>
    </ul>
    <!-- END Header Navigation Right -->

    <!-- Header Navigation Left -->
    <ul class="nav-header pull-left">
        <li class="hidden-md hidden-lg">
            <!-- Layout API, functionality initialized in App() -> uiLayoutApi() -->
            <button class="btn btn-default" data-toggle="layout" data-action="sidebar_toggle" type="button">
                <i class="fa fa-navicon"></i>
            </button>
        </li>
        <li class="hidden-xs hidden-sm">
            <!-- Layout API, functionality initialized in App() -> uiLayoutApi() -->
            <button class="btn btn-default" data-toggle="layout" data-action="sidebar_mini_toggle" type="button">
                <i class="fa fa-ellipsis-v"></i>
            </button>
        </li>
        <li class="visible-xs">
            <!-- Toggle class helper (for .js-header-search below), functionality initialized in App() -> uiToggleClass() -->
            <button class="btn btn-default" data-toggle="class-toggle" data-target=".js-header-search" data-class="header-search-xs-visible" type="button">
                <i class="fa fa-search"></i>
            </button>
        </li>
        <li class="js-header-search header-search">
            <form class="form-horizontal tab-search" action="/search" method="get">
                <div class="form-material form-material-primary input-group remove-margin-t remove-margin-b">
                    <input class="form-control" type="text" id="base-material-text" name="keyword" placeholder="搜索...">
                    <span class="input-group-addon"><button class="btn btn-default tab-searchbtn" type="submit"><i class="si si-magnifier"></i></button></span>
                </div>
            </form>
        </li>
    </ul>
    <!-- END Header Navigation Left -->