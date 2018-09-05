$(function () {
    $(".passwordEnter").keypress(function () {
        if (event.keyCode == "13") {
            passwordConfirm();
        }
    });

    $("#btConfirm").click(function () {
        passwordConfirm();
    });

    $("button[type=cencel]").click(function () {
        location.href = "/member/profile/";
    });

    if (location.href.split("=")[1]) { //비밀번호 오류
        $("input[name=pw]").parent().parent().addClass("on");
        $("div.txt_rap3").show();
    }
});

function passwordConfirm() {
    if ($.trim($("input[name=pw]").val()) == '') {
        alert("비밀번호를 입력해주세요.");
    } else {
        $("input[name=pw]").removeClass("on");
        $('#confirmForm').submit();
    }
}

//callBack
function confirmLoad(data) {
    if ((data.memberType == "3" || data.memberType == "5") && $("#profile_page").val() != "undefined") {
        if ($("#page_div").val() == "pc") {
            var js_func = "top.location.href='/member/myinfo/facebook';";
            var clickEvent = new Function(js_func);
            $("#myInfo").click(clickEvent);
        } else {
            $("#myInfo").attr("href", "/member/myinfo/facebook");
        }
    }

    if ($("#page_div").val() == "pc" && $("#profile_page").val() == "Y") {
        //console.log(data.profile.smsReceiveYN + "," + data.profile.emailReceiveYN);
        var receiveYN = "";
        if (data.profile.smsReceiveYN == 'Y') receiveYN += "SMS, ";
        if (data.profile.emailReceiveYN == 'Y') receiveYN += "이메일, ";

        if (data.profile.smsReceiveYN == 'N' && data.profile.emailReceiveYN == 'N') {
            $("#receiveYN").text("미수신");
        } else {
            $("#receiveYN").text(receiveYN.substr(0, receiveYN.length - 2) + " 수신");
        }
    }
}

function confirmResult(data) {
    //console.log("result data", data);
    if (data.result == "SUCCESS") {
        location.href = "/member/myinfo/email";
    } else {
        //alert(getMsg(data.message));
        $("input[name=pw]").parent().parent().addClass("on");
        $("div.txt_rap3").show().html('<span class="txt_pink f_size2">' + getMsg(data.message) + '</span>');
    }
}

function memberProfile() {
    var deferred = $.Deferred();
    $.ajax({
        url: '/ywtMember/memberProfile',
        type: 'GET',
        success: function (res, status) {
            deferred.resolve(res);
        },
        error: function (request, status, error) {
            deferred.reject();
        }
    });
    return deferred.promise();
}

function warningCount() {
    var deferred = $.Deferred();
    $.ajax({
        url: '/ywtMember/caution',
        type: 'GET',
        success: function (res, status) {
            deferred.resolve(res);
        },
        error: function (request, status, error) {
            deferred.reject();
        }
    });
    return deferred.promise();
}
