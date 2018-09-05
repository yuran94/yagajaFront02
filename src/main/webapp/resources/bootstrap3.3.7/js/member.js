$(function () {
    /*
     * Member JS
     * 2015.04.14
     */

    // [Common Layout]
    // 메인 배경 이미지 (서브 상단 헤더 배경 공통)
    if ($('#pull_container').length > 0) {
        $(document.body).attr('id', 'pull');
        $(document.body).css({
            'background': 'url(/include/images/pc/sp/bg_main.jpg) no-repeat center 0',
            'background-size': 'cover'
        });
        $('body').css({
            "filter": "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/include/images/pc/sp/bg_main.jpg', sizingMethod='scale')",
            "-ms-filter": "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/include/images/pc/sp/bg_main.jpg', sizingMethod='scale')"
        });

        $('#pull_container').css('min-height', $(window).height() - 241);
        $(window).resize(function () {
            $('#pull_container').css('min-height', $(window).height() - 241);
        });
    }

    // 메인을 제외한 서브 페이지 안에서 기본 높이값 설정
    /*
     $('.cont_inner').css('min-height', $(window).height() -303);
     $(window).resize(function() {
     $('.cont_inner').css('min-height', $(window).height() -303);
     });
     */

    // [Popup on/off ]
    $('.layer_open').on("click", function () {
        $('#popup_wrap').addClass('on');
        $('#yanolja_wrap').css('overflow', 'hidden');
        $('#yanolja_wrap').css('height', $(window).height());
        $(window).resize(function () {
            $('#yanolja_wrap').css('height', $(window).height());
        });
        return false;
    });

    $('.layer_close').on("click", function () {
        $('#popup_wrap').removeClass('on');
        $('#yanolja_wrap').css('overflow', 'visible');
        $('#yanolja_wrap').css('height', $('#yanolja_wrap').height());
        $(window).resize(function () {
            $('#yanolja_wrap').css('height', $('#yanolja_wrap').height());
        });
        return false;
    });

    // [Mini Popup] on/off
    $('.user_rap').mouseover(function () {
        $('#user_pop').addClass('show');
    }).focus(function () {
        $('#user_pop').addClass('show');
    })
        .end()
    $(this).mouseout(function () {
        $('#user_pop.show').removeClass('show');
    });

    $('.button_rap').mouseover(function () {
        $('#gnb_pop').addClass('show');
    }).focus(function () {
        $('#gnb_pop').addClass('show');
    })
        .end()
    $(this).mouseout(function () {
        $('#gnb_pop.show').removeClass('show');
    });

    // [Form Elements]
    // Design Select on/off
    $('button.sel').on("click", function () {
        $('.sel_options').toggleClass('on');
        return false;
    });

    // 유저 이미지 사이즈 상하 조절
    var rdImgWidth  = $('.radi_img img').width();
    var rdImgHeight = $('.radi_img img').height();

    var x = $('.radi_img').width() / 2;
    var y = $('.radi_img').height() / 2;

    var rdImgLeftP = (-(rdImgWidth / 2)) + x + 'px';
    var rdImgTopP  = -(rdImgHeight / 2) + x + 'px';

    $('.radi_img img').css('left', rdImgLeftP);
    $('.radi_img img').css('top', rdImgTopP);
});

