/**
 * 本demo是从我的一个项目上提取出来，所以会有一些其他功能的垃圾代码，仅供学习参考，若要使用请自行提取有效代码！
 * 仿领英筛选界面，可用于商城商品筛选等界面，美观实用！
 * 本demo仅供互相参考学习，切勿直接使用！
 *                          ——by西歪
 */

//使用前必读↑↑↑
jQuery(document).ready(function(){
    viewInit(); //初始化选择项背景百分比
    setTimeout(function(){  //填充选择项背景
        m_move();
    },800);
    $('.rightBtn').hover(function(){
        $(this).css('color','#9bdaf3');
    },function(){
        $(this).css('color','#666');
    })
    //点击筛选项
    $('.skillbar').click(function (){
        createCho(this);
    })
});
//初始化左移筛选项动画
function m_move(){
    $('.mainMiddle').animate({left:0},200)
}
//点击筛选项
function createCho(cho){
    var tp = $(cho).find('.skillbar-title span').html(); //获取点击对应值
    var cl = $(cho).attr('data-percent'); //标记
    var type = $(cho).attr('data-type'); //获取本筛选项的类型
    //构造选中div
    var div ="<div class='o_choose "+type+"' data-type='"+ type +"'>"+tp+"<span class='o_close "+cl+"' onclick='o_delete(this)' data-percent='"+cl+"'>x</span></div>"
    if($('.'+cl).length==1){
        $('.options').prepend(div);
    }
    $(cho).parent().removeClass('m_point').addClass('m_point2')
    $(cho).parent().find('.skillbar-bar').removeClass('barbg').addClass('changeBg');
    $(cho).find('.skillbar-bar').removeClass('changeBg').addClass('clickBg');
    if($('.o_close').length > 0){
        if($('.clearAll').length==0) {
            var span = "<div class='clearAll' onclick='removeAllClose()' style='background: none;color: #666;cursor: pointer;'>清除全部</div>"
            $('.o_choose:last-child').after(span);
        }
    }
    t = 0;
}
//清楚所有筛选项
function removeAllClose(){
    $('.person').remove();
    $('.o_choose,.clearAll').remove();
    o_delete();
}

//删除筛选项
function o_delete(obtn){
    $(obtn).parent().remove();
    var cl =$(obtn).attr('data-percent');
    $("."+cl).parent().parent().removeClass('m_point2').addClass('m_point1')
    $("."+cl).find('.skillbar-bar').removeClass('clickBg').addClass('changeBg');
    if($('.o_close').length == 0){
        $('.clearAll').remove();
    }
    if($('.major').length==0){
        $('.lei1').removeClass('m_point2').addClass('m_point');
        $('.lei1').find('.skillbar-bar').removeClass('changeBg').removeClass('clickBg').addClass('barbg')
    }
    if($('.nationality').length==0){
        $('.lei2').removeClass('m_point2').addClass('m_point');
        $('.lei2').find('.skillbar-bar').removeClass('changeBg').removeClass('clickBg').addClass('barbg')
    }
    if($('.csi').length==0){
        $('.lei3').removeClass('m_point2').addClass('m_point');
        $('.lei3').find('.skillbar-bar').removeClass('changeBg').removeClass('clickBg').addClass('barbg')
    }
    if($('.he').length==0){
        $('.lei4').removeClass('m_point2').addClass('m_point');
        $('.lei4').find('.skillbar-bar').removeClass('changeBg').removeClass('clickBg').addClass('barbg')
    }
}
//筛选栏左右移动
function moveLeft(btn){
    $(".mainMiddle").animate({left: '0'}, "fast");
    $(btn).css('color','#ccc')
    $(btn).unbind("mouseenter").unbind("mouseleave");
    $('.rightBtn').hover(function(){
        $(this).css('color','#9bdaf3');
    },function(){
        $(this).css('color','#666');
    })
}
function moveRight(btn){
    $(".mainMiddle").animate({left: '-325px'}, "fast");
    $(btn).css('color','#ccc')
    $(btn).unbind("mouseenter").unbind("mouseleave");
    $('.leftBtn').hover(function(){
        $(this).css('color','#9bdaf3');
    },function(){
        $(this).css('color','#666');
    })
}
//初始化各单位数量进度条背景填充百分比等
function viewInit(){
    //初始化各项进度条填充背景百分比
        $('.skillbar').find('.skillbar-bar').animate({
            width: '60%'
        }, 800);
    $('.skillbar').find('.skill-bar-percent').html('');
}