{% extends '../Public/base.tpl' %}

{% block css %}
<link rel="stylesheet" href="/public/assets/js/plugins/simplemde/simplemde.min.css">
<style type="text/css">
    .item {
        width: 40px;
        height: 40px;
        font-size: 20px;
        line-height: 40px;
    }

    .font-s16 {
        font-size: 16px !important;
        line-height: 26px;
        color: #444;
        margin-top: 4px;
    }

    .CodeMirror {
        max-height: 100px;
        min-height: 100px;
    }

    .my-nav a.nav-submenu:before {
        display: none;
    }

    .tab-ans {
        margin: 10px 0 !important;
    }
</style>
{% endblock %}

{% block body %}

<div class="content content-boxed" style="padding: 0 25px;">
    <div class="row" style="background-color: #fff;padding: 30px 10px;box-shadow: 1px 1px 1px #f1f1f1;border-radius: 4px;">
        <div class="col-xs-8">
            <h3 class="push">{{ detail.title }}</h3>
            <p>{{ detail.content }}</p>
            <button class="btn btn-minw btn-primary" type="button">关注问题</button>
            <button class="btn btn-minw btn-success" type="button" id="ask">写回答</button>
        </div>
        <div class="col-xs-4">
            <div class="col-xs-5">
                <a class="block block-rounded block-link-hover3 text-center" href="javascript:void(0)">
                    <div class="block-content block-content-full bg-info">
                        <div class="h3 font-w700 text-white">关注</div>
                        <div class="h5 text-white-op text-uppercase push-5-t">63</div>
                    </div>
                </a>
            </div>
            <div class="col-xs-5">
                <a class="block block-rounded block-link-hover3 text-center" href="javascript:void(0)">
                    <div class="block-content block-content-full bg-success">
                        <div class="h3 font-w700 text-white">浏览</div>
                        <div class="h5 text-white-op text-uppercase push-5-t">{{ detail.browse_Number }}</div>
                    </div>
                </a>
            </div>

        </div>
    </div>

    {% if best.length %}
    <div class="row tab-bestRow" style="background-color: #fff;margin-top: 10px;padding: 15px;">
        <div class="block-header bg-gray-lighter">
            <h3 class="block-title"><span class="si si-badge" style="color: #5EB262;font-size: 20px;font-weight: bolder;">
                    最佳回答</span><span class="pull-right" style="color: #939293;font-size: 12px;font-weight: lighter;">推荐于
                    {{ best[0].time }}</span></h3>
        </div>
        <div class="block-content">
            <p style="font-size: 15px">{{ best[0].answer }}</p>
            <a href=""><span class="si si-speech pull-right" style="color: #5EB262;font-size: 18px;margin-left: 20px">
                    12</span></a><a href=""><span class="fa fa-thumbs-o-down pull-right" style="color: #5EB262;font-size: 18px;margin-left: 20px">
                    6</span></a><a href=""><span class="fa fa-thumbs-o-up pull-right" style="color: #5EB262;font-size: 18px">
                    26</span></a>
        </div>
    </div>
    {% endif %}

    <div class="row" style="background-color: #fff;margin-top: 10px;padding: 15px;">
        <div class="col-xs-8">
            <div class="tab-ask" style="display: none;">
                <ul class="list list-simple list-li-clearfix" style="margin-top: 10px;">
                    <li>
                        <a class="item item-rounded pull-left push-10-r bg-info" href="javascript:void(0)">
                            <i class="si si-rocket text-white-op"></i>
                        </a>
                        <h5 class="push-5-t">{{ ctx.session.user.username }}</h5>
                        <div class="font-s13">微博一般不上</div>
                    </li>
                </ul>
                <form action="" class="answer">
                    <textarea id="simplemde" name="answer"></textarea>
                    <input type="hidden" name="id" value="{{ ctx.session.user.uid }}" />
                    <input type="hidden" name="qid" value="{{ detail.id }}" />
                    <button class="btn btn-minw btn-primary pull-right" id="ask_btn" type="button">提交回答</button>
                </form>
            </div>
            <h4>{{ answers.length }}个回答</h4>
            {% for item in answers %}
            <ul class="list list-simple list-li-clearfix tab-ul" style="margin: 3px 7px;">
                <li>
                    <a class="item item-rounded pull-left push-10-r bg-info" href="javascript:void(0)">
                        <i class="si si-rocket text-white-op"></i>
                    </a>
                    {% if item.author != ctx.session.user.uid %}
                    <button class="btn btn-primary pull-right tab-best" data-id="{{ detail.id }}" data-aid="{{ item.id }}"
                        type="button"><i class="fa fa-thumbs-up"></i> 最佳回答</button>
                    {% endif %}
                    <h5 class="push-5-t">{{ item.username }}</h5>
                    <div class="font-s13 si si-diamond" style="margin: 3px 7px;color: #E6D224"></div>

                    <p class="tab-ans">{{ item.answer }}</p>
                    <div class="font-s13" style="margin: 0 0 10px 0;">编辑于 {{ item.time }}</div>
                </li>
            </ul>
            {% endfor %}
        </div>
        <div class="col-xs-4">
            <div class="block" style="padding: 15px;">
                <div class="font-w600 font-s12 text-uppercase text-muted push-10">相关问题</div>
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
</div>

{% endblock %}

{% block javascript %}

<script src="/public/assets/js/plugins/select2/select2.full.min.js"></script>
<script src="/public/assets/js/plugins/simplemde/simplemde.min.js"></script>
<script>
    jQuery(function () {
        // Init page helpers (BS Maxlength + Select2 + Tags Inputs + CKEditor + Appear + CountTo plugins)
        App.initHelpers(['maxlength', 'select2', 'simplemde', 'tags-inputs', 'ckeditor', 'appear',
            'appear-countTo'
        ]);
    });
    var simplemde = new SimpleMDE({
        element: document.getElementById("simplemde"),
        autoDownloadFontAwesome: false,
        status: false
    });
    $('#ask').click(function () {
        $('.tab-ask').show();
    });
    $('#ask_btn').click(function () {
        $.ajax({
            type: 'POST',
            url: '/Community/answer',
            data: {
                id: $('.answer input[name=id]').val(),
                _csrf: $('.answer input[name=_csrf]').val(),
                answer: simplemde.value(),
                qid: $('.answer input[name=qid]').val()
            },
            success: function (result) {
                alert(result.msg);
                location.reload();
            }
        })
    });

    $('.tab-best').click(function () {
        $.ajax({
            type: 'POST',
            url: '/Community/best',
            data: {
                qid: $(this).attr('data-id'),
                aid: $(this).attr('data-aid'),
                _csrf: Cookies.get('csrfToken')
            },
            success: function (result) {
                location.reload();
            }
        })
    })
</script>
{% endblock %}