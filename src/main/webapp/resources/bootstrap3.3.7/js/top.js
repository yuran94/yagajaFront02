$(function () {
    var promise = memberProfile();
    promise.done(function (data) {
        if (data.result != 'FAILED') {
            topLoad(data);
        }
    }).fail(function () {
        alert('에러가 발생 했습니다. 잠시후 다시 시도해 주세요.');
    });
});

//callBack
function topLoad(data) {
    $(".avatar").attr("src", data.profile.pictureDomain + data.profile.pictureFolder + data.profile.pictureName);
    $(".member-info span").text(data.profile.nickName);
}


$(document).ready(function() {
    var today = new Date();
    var year = today.getFullYear().toString();
    var month = today.getMonth() + 1;
    var day = today.getDate();

    var todayFormat = year+'-'+lpad(month, 2, 0)+'-'+lpad(day, 2, 0);

    var profilePopup;
    $('.btn_location a').on('click', function(e) {
        e.preventDefault();
        var target = $('.popover-gnb-submenu');

        if (target.data('popover-content')) {
            hidePopup(target);
        } else {
            showPopup(target);
        }
    });

    $('.container-comm').on('click', function() {
        var target = $('.popover-gnb-submenu');

        if (target.data('popover-content')) {
            hidePopup(target);
        }
    });

    $('.member-info').on({
        'mouseenter' : function() {
            showPopup($('.popover-member-menu'));
        },
        'mouseleave' : function() {
            profilePopup = setTimeout(function() { hidePopup($('.popover-member-menu')); }, 100);
        }
    });

    $('.popover-member-menu').on({
        'mouseenter' : function() {
            clearTimeout(profilePopup);
        },
        'mouseleave' : function() {
            profilePopup = setTimeout(function() { hidePopup($('.popover-member-menu')); }, 100);
        }
    });

    function showPopup(target) {
        target.data('popover-content', true).css('display', 'block');
    }

    function hidePopup(target) {
        target.data('popover-content', false).css('display', 'none');
    }

    $('.area-list').on('click', '.area-item', function(e) {
        e.preventDefault();
        $('.area-item').removeClass('area-item-myfocus area-item-active');
        $(this).addClass('area-item-myfocus area-item-active');
        getSubAreaList($(this).data('area-list'), renderSubAreaList);
    });

    function lpad(str, padLength, padString){
        var s = str.toString();
        while(s.length < padLength)
            s = padString + s;
        return s;
    }

    function getAreaList() {
        $.ajax({
            method: 'GET',
            url: '/common/getarealist/',
            dataType: 'json'
        }).done(function(data) {
            renderAreaList(data.lists);
        });
    }

    function getSubAreaList(key, callback) {
        $.ajax({
            method: 'GET',
            url: '/common/getsubarealist/?key='+key,
            dataType: 'json'
        }).done(function(data) {
            callback(data.lists);
        });
    }

    function renderAreaList(lists) {
        var list = [];
        var idx;

        $.each(lists, function(i, v) {
            var className = '';
            if (i === 0) {
                idx = v.key;
                className = 'area-item-myfocus area-item-active';
            }

            var row = '<li class="area-item '+className+'" data-area-list="'+v.key+'"><a>'+v.name+'</a></li>';
            list.push(row);
        });
        $('.area-list').empty().append(list);
        getSubAreaList(idx, renderSubAreaList);
    }

    function renderSubAreaList(lists) {
        var list = [];
        $.each(lists, function(i, v) {
            if (v.areaType != 'hotPlace') {
                var href = WEB2_URL+'/search?advert=AREA&area='+v.key+'&checkinDate='+todayFormat+'&checkoutDate='+todayFormat+'&limit=20&page=1&recommend=1&searchType=recommend';
                var row = '<li class="subarea-item" data-sub-area-list="'+v.key+'"><a href="'+href+'">'+v.name+'</a></li>';
                list.push(row);
            }
        });
        $('.subarea-list').empty().append(list);
    }

    getAreaList();
});