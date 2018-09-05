var isApp = 'N';
var baseDomain;
var __ga = '';

$(document).ready(function () {
    window.name = "kmcis_web_window";
});

function numberFormat(nStr) {
    nStr += '';
    var x = nStr.split('.');
    var x1 = x[0];
    var x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}

function go_url(url) {
    var param = "";
    if (isApp == 'Y') {
        if (url.indexOf("?") > -1) {
            param = "&isApp=" + isApp;
        } else {
            param = "?isApp=" + isApp;
        }
    }
    top.location.href = url + param;
}

function disableButton(name) {
    if ($("#page_div").val() == "m") {
        showLoading();
    } else {
        $("#" + name).attr("disabled", true).addClass("c_gray").removeClass("c_pink");
    }
}
function enableButton(name) {
    if ($("#page_div").val() == "m") {
        hideLoading();
    } else {
        $("#" + name).addClass("c_pink").removeClass("c_gray").removeAttr("disabled");
    }
}

function showLoading() {
    if (isApp != 'Y') {
        $("#loading.popup_box").addClass("on");
    }
    $(".sc_dim").show();
}
function hideLoading() {
    if (isApp != 'Y') {
        $("#loading.popup_box").removeClass("on");
    }
    $(".sc_dim").hide();
}

// callAjax(url, [get,post,put,delete], [text, json, jsonp], Async[false], data, callback
function callAjax(processUrl, requestType, responseType, isAsync, serializeTarget, callback) {
    $.ajax({
        url: processUrl,
        type: requestType,
        async: isAsync,
        data: $(serializeTarget).serialize(),
        beforeSend: function () {
        },
        dataType: responseType,
        success: callback,
        error: function (request, status, error) {
            console.log("code : " + request.status);
            console.log("message : " + request.reponseText);
            console.log("error : " + error);
        }
    });
}

/**
 * 휴대폰 인증 모듈 호출 스크립트 시작(경고 : 수정하거나 지우지 마시오!)
 */
var KMCIS_window;
function openKMCISWindow() {
    checkOpenWin(document.reqKMCISForm, KMCIS_window, 'KMCISWindow', 'width=425, height=550, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=435, top=250');
    document.reqKMCISForm.action = 'https://www.kmcert.com/kmcis/web/kmcisReq.jsp';
    document.reqKMCISForm.submit();
}

/**
 * 아이핀 인증 모듈 호출 스크립트 시작(경고 : 수정하거나 지우지 마시오!)
 */
var CBA_window;
function openCBAWindow() {
    checkOpenWin(document.reqCBAForm, CBA_window, 'IPINWindow', 'width=450, height=500, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=300, top=200');
    document.reqCBAForm.action = 'https://ipin.siren24.com/i-PIN/jsp/ipin_j10.jsp';
    document.reqCBAForm.submit();
}

// checkAgent
function checkAgent() {
    var UserAgent = navigator.userAgent;
    var agentType = "PC";
    if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null) {
        agentType = "MOBILE";
    }
    return agentType;
}

// checkOpenWin
function checkOpenWin(form, winObj, winName, windOption) {
    if (checkAgent() == 'MOBILE') {
        form.target = '';
    } else {
        winObj = window.open('', winName, windOption);
        if (winObj == null) {
            var msg = " ※ 윈도우 XP SP2 또는 인터넷 익스플로러 7 사용자일 경우에는 \n";
            msg += "    화면 상단에 있는 팝업 차단 알림줄을 클릭하여 팝업을 허용해 주시기 바랍니다. \n\n";
            msg += "※ MSN,야후,구글 팝업 차단 툴바가 설치된 경우 팝업허용을 해주시기 바랍니다.";
            alert(msg);
        }
        form.target = winName;
    }
    return form;
}

// headerHideForApp
function headerHideForApp() {
    $("#header").hide();
}

// msciShopCheck
function msciShopCheck(check) {
    switch (check.toUpperCase()) {
        case "YJ001":
            return "YAJA 신림1호점";
        case "YJ002":
            return "YAJA 수원역 오";
        case "YJ003":
            return "YAJA 천안엘리";
        case "YJ004":
            return "YAJA 안양1호점 ";
        case "YJ005":
            return "YAJA 서면1호점";
        case "YJ006":
            return "YAJA 고려대점";
        case "YJ007":
            return "YAJA 외대1호점";
        case "YJ008":
            return "YAJA 서면2호점";
        case "YJ009":
            return "YAJA 오류역점";
        case "YJ010":
            return "YAJA 온천장1호점";
        case "YJ011":
            return "YAJA 연산1호점";
        case "YJ012":
            return "YAJA 수유 미아점";
        case "YJ013":
            return "YAJA 신촌점";
        case "YJ014":
            return "YAJA 인천 석남점";
        case "YJ015":
            return "YAJA 수원 인계점";
        case "YJ016":
            return "YAJA 영등포점";
        case "YJ017":
            return "YAJA 김해점";
        case "YJ018":
            return "YAJA 울산점";
        case "YJ019":
            return "YAJA 수원 권선점";
        case "YJ020":
            return "YAJA 부산 남포점";
        case "YJ021":
            return "YAJA 온천장2호점";
        case "YJ022":
            return "YAJA 경희대점";
        case "YJ023":
            return "YAJA 평촌점";
        case "YJ024":
            return "YAJA 연산2호점";
        case "YJ025":
            return "YAJA 의정부역점";
        case "YJ026":
            return "YAJA 구서역점";
        case "YJ027":
            return "YAJA 해운대점";
        case "YJ028":
            return "YAJA 충무자갈치점";
        case "YJ029":
            return "YAJA 신림2호점";
        case "YJ030":
            return "YAJA 울산달동점";
        case "YJ031":
            return "YAJA 부평역점";
        case "YJ032":
            return "YAJA 청주점";
        case "YJ033":
            return "YAJA 홍대점";
        case "YJ034":
            return "YAJA 일산점";
        case "YJ035":
            return "YAJA 안산중앙점";
        case "YJ036":
            return "YAJA 건대점";
        case "YJ037":
            return "YAJA 왕십리역점";
        case "YJ039":
            return "YAJA 부천역점";
        case "YJ040":
            return "YAJA 화곡점";
        case "YJ041":
            return "YAJA 면목점";
        case "YJ042":
            return "YAJA 장한평역점";
        case "YJ043":
            return "YAJA 대전터미널점";
        case "YJ044":
            return "YAJA 분당점";
        case "YJ045":
            return "YAJA 인천계양점";
        case "YJ046":
            return "YAJA 구리수택점";
        case "YJ047":
            return "YAJA 전주한옥마을점";
        case "YJ101":
            return "H AVENUE 역삼점";
        case "YJ102":
            return "호텔앤 화곡점";
        case "HA002":
            return "H AVENUE 녹번점";
        default:
            return "&nbsp;";
    }
}

function motelKeyCheck(check) {
    switch (check.toUpperCase()) {
        case "YJ001":
            return "1458";
        case "YJ002":
            return "1012";
        case "YJ003":
            return "950";
        case "YJ004":
            return "1564";
        case "YJ005":
            return "1628";
        case "YJ006":
            return "1636";
        case "YJ007":
            return "1696";
        case "YJ008":
            return "1699";
        case "YJ009":
            return "1710";
        case "YJ010":
            return "1702";
        case "YJ011":
            return "1733";
        case "YJ012":
            return "1804";
        case "YJ013":
            return "1840";
        case "YJ014":
            return "1839";
        case "YJ015":
            return "1948";
        case "YJ016":
            return "1952";
        case "YJ017":
            return "2044";
        case "YJ018":
            return "2052";
        case "YJ019":
            return "2050";
        case "YJ020":
            return "2100";
        case "YJ021":
            return "2085";
        case "YJ022":
            return "2168";
        case "YJ023":
            return "2208";
        case "YJ024":
            return "2464";
        case "YJ025":
            return "2457";
        case "YJ026":
            return "2559";
        case "YJ027":
            return "2575";
        case "YJ028":
            return "2579";
        case "YJ029":
            return "2675";
        case "YJ030":
            return "2589";
        case "YJ031":
            return "2714";
        case "YJ032":
            return "2793";
        case "YJ033":
            return "2942";
        case "YJ034":
            return "3280";
        case "YJ035":
            return "3302";
        case "YJ036":
            return "3527";
        case "YJ037":
            return "4045";
        case "YJ038":
            return "4276";
        case "YJ039":
            return "4275";
        case "YJ040":
            return "4276";
        case "YJ041":
            return "4534";
        case "YJ101":
            return "3284"; // 역삼 H AVENUE
        case "YJ102":
            return "4021"; // 화곡 호텔앤
        default:
            return "";
    }
}
