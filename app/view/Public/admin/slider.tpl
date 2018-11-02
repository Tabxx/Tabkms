<div class="layui-side layui-side-menu">
    <div class="layui-side-scroll">
        <div class="layui-logo" lay-href="">
            <span>企业知识库管理系统</span>
        </div>
        <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
            {% for item in adminMenu %}
            <li class="layui-nav-item" data-name="">
                {% if item.child.length %}
                <a href="javascript:;" lay-href="{{ item.url }}">
                    <i class="{{ item.icon }}"></i>
                    <cite>{{ item.name }}</cite>
                </a>
                <dl class="layui-nav-child">
                    {% for c in item.child %}
                    <dd><a href="{{ c.url }}">{{ c.name }}</a></dd>
                    {% endfor %}
                </dl>
                {% else %}
                <a href="{{ item.url  }}">{{ item.name }}</a>
                {% endif %}
            </li>
            {% endfor %}
        </ul>
    </div>
</div>