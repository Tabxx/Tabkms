<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">

            {% for item in adminMenu %}
                <li class="layui-nav-item">
                    {% if item.child.length %}
                        <a href="javascript:;">{{ item.name }}</a>
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

