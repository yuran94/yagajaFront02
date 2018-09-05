$(function () {
  function getCookie(name) {
    var value = "; " + document.cookie;
    var parts = value.split("; " + name + "=");
    if (parts.length == 2) return parts.pop().split(";").shift();
  }

  // join
    $("#btJoinMember").click(function () {
        $("#email").val($("#id").val());
        $(".inp_rap").removeClass("on");
        callAjax('/JoinProcess/joinEmailMember', 'post', 'json', true, '#emailJoinForm', joinMemberResult);
    });

    // join pc
    $("#btJoinMemberPc").click(function (e) { // 회원가입 클릭 pc
        e.preventDefault();
        if($(this).hasClass("disable")){
          alert("진행 중 입니다. 잠시 기다려 주십시오.");
        }
        if (!$('#phoneNum').val() && !$('#certificate').val()) {
            alert('휴대폰인증을 완료해 주세요.');
            return;
        }
        $("div.f_pink").empty();
        $("#btJoinMemberPc").addClass("disable");
        callAjax('/JoinProcess/join', 'post', 'json', true, '#joinMemberPc', joinMemberResultPc);
    });

    // agree
    $("#btJoinAgree").click(function () {
        if($("[data-required]:not(:checked)").length)return false;
        if ($("#isAvailableYN").is(':checked') != true) {
            alert(getMsg("AGREE_CHECK"));
            $("#isAvailableYN").focus();
            return;
        }
        if ($("#termAgreeYN").is(':checked') != true) {
            alert(getMsg("AGREE_CHECK"));
            $("#termAgreeYN").focus();
            return;
        }
        if ($("#privacyAgreeYN").is(':checked') != true) {
            alert(getMsg("AGREE_CHECK"));
            $("#privacyAgreeYN").focus();
            return;
        }
        $("#joinSelectForm").attr('method', 'post');
        $("#joinSelectForm").attr('action', './member/memberjoinForm.do');
        $("#joinSelectForm").submit();
    });

    // 1202 이아름_mw-동의하기 모두선택
    $('#allAgree').click(function () {
        if ($("#allAgree").is(':checked') == true) {
            $('input[type="checkbox"]').prop('checked', true);
            $('.inp_rap').find('label').addClass('on');
        } else {
            $('input[type="checkbox"]').prop('checked', false);
            $('.inp_rap').find('label').removeClass('on');
        }
    });
    // 1202 김선미 pw 동의하기 모두선택
    $('#allAgreeYN').click(function () {
        if ($("#allAgreeYN").is(':checked') == true) {
            $('input[type="checkbox"]').prop('checked', true);
            $('.inp_check').find('label').addClass('on');
        } else {
            $('input[type="checkbox"]').prop('checked', false);
            $('.inp_check').find('label').removeClass('on');
        }
    });

    var targets = $('input[type="checkbox"]').not('#allAgreeYN');
    var trigger = $('#allAgreeYN');

    $('.login-area').on('change', '#isAvailableYN, #termAgreeYN, #privacyAgreeYN, #locationAgreeYN, #marketingAgreeYN, #restAgreeYN', function(e) {
        e.preventDefault();
        toggleCheck(trigger, targets);
    });

    var toggleCheck = function(trigger, targets) {
        $.each(targets, function(i, v) {
            if ( $(v).prop('checked') ) {
                $(trigger).prop('checked', true);
                return true;
            } else {
                $(trigger).prop('checked', false);
                return false;
            }
        });
    };

    function errorMessage(result){
        /**
         * 각각의 에러 처리
         * @param info error 정보
         * @param input 메세저 인풋노드(jQuery)
         */
        var processError4Input = function (info, input) {
          if (getCookie("device") == 'm') {
            if (info.validateResult && getCookie("device") == 'm') {
              input.removeClass('on').find("[data-message=true]").empty();
            } else {
              input.addClass('on').find("[data-message=true]").text(info.errMessage);
            }
          } else {
            if (info.validateResult) {
              input.empty();
            } else {
              input.empty().text(info.errMessage);
            }
          }
        };
        processError4Input(result.EMAIL, $("#emailTextArea"));
        processError4Input(result.NICKNAME, $("#nickTextArea"));
        processError4Input(result.PASSWORD, $("#pwTextArea"));
        processError4Input(result.PASSWORD_CONFIRM, $("#cpTextArea"));
    }

    /**
     * 회원 가입 완료 페이지로 넘어간다.
     * 가입
     */
    function bindToJoinEnd() {
        /**
         * 유효성 정보 셋팅.
         * API 상에서 모든 필드가 비어 있을 때는 동작 안하므로 추가로 유효성 검증을 넣었다.
         * 에러가 존재할 때만 동작한다.
         *
         * @param inputName
         * @param preValidation
         */
        var setPreValidation = function (inputName, preValidation) {
          var validationInfo = {
            email: {
              validationName: 'EMAIL',
              message: '이메일을 입력하여 주십시오.'
            },
            nickName: {
              validationName: 'NICKNAME',
              message: '닉네임을 입력하여 주십시오.'
            },
            passwd: {
              validationName: 'PASSWORD',
              message: '비밀번호을 입력하여 주십시오.'
            },
            passwdConfirm: {
              validationName: 'PASSWORD_CONFIRM',
              message: '비밀번호 확인을 입력하여 주십시오.'
            }
          };
          var validationName = validationInfo[inputName].validationName;
          var message = validationInfo[inputName].message;
          preValidation.validateResult = false;
          preValidation[validationName].validateResult = false;
          preValidation[validationName].errMessage = message;
        };
        $("#btnToJoinEnd").click(function(event){
          event.preventDefault();
          var preValidation = {
            validateResult: true,
            EMAIL: { validateResult: true },
            NICKNAME: { validateResult: true },
            PASSWORD: { validateResult: true },
            PASSWORD_CONFIRM: { validateResult: true },
          };
          $("#joinFieldset input").each(function(){
            var field = $(this);
            if($.trim(field.val()) === ''){
              setPreValidation(field.attr("name"), preValidation);
            }
          });

          if(!preValidation.validateResult){
            errorMessage(preValidation);
            return;
          }

          $.ajax({
            url: '/joinProcess/before_validate',
            dataType: 'json',
            method: 'POST',
            data: $("[data-member-form=true]").serialize()
          }).done(function(result){
            if (result.validateResult) {
                $("[data-member-form=true]").submit();
            } else {
                errorMessage(result);
            }
          });
        });
    }

    bindToJoinEnd();
});

function joinMemberResult(data) {
    $('.txt_warning').empty();
    $(".inp_rap").removeClass('on');

    if (data.result == "SUCCESS") {
        locationWebOrAppLogin("/join/phoneCertify?ga=join&token=" + data.token, "");
        return;
    }

    $(".msg_" + data.field).parents('.inp_rap').addClass('on');
    $(".msg_" + data.field).show().text(getMsg(data.message));
}

function joinMemberResultPc(data) {
  $('.warning-txt').empty();
  $("#btJoinMemberPc").removeClass("disable");

  var redirectUri = (function () {
    if ($("#naver").val() === "true") {
      return '/member/myinfo/email?&naver=true';
    }
    if (data.redirect_url) {
      return data.redirect_url;
    }
    return '/';
  })();
  if (data.result == "SUCCESS") {
    location.href = redirectUri;
    return;
  }

  function errorMessage(message){
    $('.warning-txt.msg_certifyCode').empty().text(message);
  }
  errorMessage(data.message);
}

function getPolicy(type) {
    $.ajax({
        type: 'GET',
        url: '/terms/' + type,
        success: function (data) {
            $("#" + type).append(data);
        }
    });
}

// 네이버간편로그인 회원가입시, placeholder 문구 노출되는 이슈
var inputById = $('.inp input#id').val();

if (inputById != null && inputById.length > 0) {
    $('.inp input#id').next($('.pw_placeholder')).css('display', 'none');
}
