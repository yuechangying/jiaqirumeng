$.waiting = (function () {//等待提示
    if (window.youyuan && window.youyuan.showWaiting && window.youyuan.hideWaiting) {
        return {
            show: function (msg) {
                window.youyuan.showWaiting(msg);
            },
            hide: function () {
                window.youyuan.hideWaiting();
            }
        }
    } else {
        if($('.waiting').length==0){
            $('<div class="waiting"></div>').prependTo('body');
        }
        $('.waiting').empty().hide();
        return {
            show: function (msg) {
                $('.waiting').html(msg).show();
            },
            hide: function () {
                $('.waiting').empty().hide();
            }
        }
    }
})();
$.alert = (function(){
    if($('.alert').length == 0){

        $('<div class="alertDiv"><div class="tips"></div><div class="btn_box"><span class="ok">确定</span></div></div>').prependTo('body');
        var J_alertDiv = $(document).find('.alertDiv');
        J_alertDiv.hide();
        J_alertDiv.find('.tips').empty();
    }

    return function(msg,type){

        $(document).find('.alertDiv').addClass(type).find('.tips').html(msg);
        $(document).find('.alertDiv').on('click','.ok',function (e) {
            e.preventDefault();
            e.stopPropagation();
            $(e.currentTarget).closest('.alertDiv').hide();
            $(e.currentTarget).closest('.alertDiv').find('.tips').empty();
        });


    }



})();
$.tips = (function () {//等待提示
    if (window.youyuan && window.youyuan.toast) {
        return function (msg) {
            window.youyuan.toast(msg);
        };
    } else {
        if($('.tips').length==0){
            $('<div class="tipsDiv"><div class="tips"></div></div>').prependTo('body');
        }
        $('.tips').empty().hide();
        return function (msg,type,time) {
            $('.tips').addClass(type).html(msg).show();
            time = time || 2000;
            setTimeout(function () {
                $('.tips').removeClass(type).empty().hide();
            }, time);
        }
    }
})();