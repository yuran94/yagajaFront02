<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 야가자 상단 -->
<%@include file="/resources/YagajaSkin/yagajaTop.jsp"%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="naver-site-verification" content="0fbfbe55f106bafa74e0bbd934fa0cc7524894dc"/>
    <meta name="description" content="집떠나 놀땐 종합 숙박어플 야놀자, 모텔 호텔 리조트 펜션 게스트하우스 예약"/>
    <title>야놀자 : 대한민국 대표 종합 숙박어플</title>
    <link rel="stylesheet" type="text/css" href="../resources/bootstrap3.3.7/css/member.css?180903"/>
    <link rel="stylesheet" type="text/css" href="../resources/bootstrap3.3.7/css/v2_member.css?180903"/>
    <link rel="shortcut icon" href="http://image2.yanolja.com/web2.0/assets/common/favicon_32x32.ico">
    <meta name="msapplication-TileColor" content="#D83434">
    <meta name="msapplication-TileImage" content="http://image2.yanolja.com/web2.0/assets/common/favicon_32x32.ico">
    <link rel="apple-touch-icon-precomposed" href="http://image2.yanolja.com/web2.0/assets/common/favicon_32x32.ico">
    <link rel="icon" href="http://image2.yanolja.com/web2.0/assets/common/favicon_32x32.ico">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="/include/js/common.js?180903"></script>
    <script type="text/javascript" src="/include/js/member_validate.js?180903"></script>
</head>

<script>

function mValidate(fn){
	if(fn.id.value==""){
		alert("아이디를 입력해주세요");
		fn.id.focus();
		return false;
	}
	
	if(fn.nickname.value==""){
		alert("닉네임을 입력해주세요");
		fn.nickname.focus();
		return false;
	}
	if(fn.email_1.value==""){
		alert("이메일아이디를 입력해주세요");
		fn.email_1.focus();
		return false;
	}
	if(fn.email_2.value==""){
		alert("휴대번호를 입력해주세요");
		fn.email_2.focus();
		return false;
	}
	if(fn.phone_1.value==""){
		alert("휴대번호를 입력해주세요");
		fn.phone_1.focus();
		return false;
	}
	
	if(fn.phone_2.value==""){
		alert("휴대번호를 입력해주세요");
		fn.phone_2.focus();
		return false;
	}
	
	if(fn.phone_3.value==""){
		alert("휴대번호를 입력해주세요");
		fn.phone_3.focus();
		return false;
	}
	
	if(fn.nickname.value==""){
		alert("닉네임을 입력해주세요");
		fn.nickname.focus();
		return false;
	}
	
	var frmArray = ["pass","passcheck","phone_1","phone_2","phone_3"];
	var txtArray = ["패스워드","패스워드확인","전화번호1"
					,"전화번호2","전화번호3"];
	for(var i=0 ; i<frmArray.length ; i++)
	{
		if(
			eval("fn."+ frmArray[i] +".type")=="text" ||
			eval("fn."+ frmArray[i] +".type")=="password"
		)
		{			
			if(eval("fn."+ frmArray[i] +".value")=="")
			{
				alert(txtArray[i] +"을(를) 입력하세요");
				eval("fn."+ frmArray[i] +".focus()");
				return false;
			}			
		}		
	}
}

function email_input(em, frm){
   //선택한 select의 값이 빈값이 아닐때만 동작
   if(em.value!=""){
      if(em.value=="1"){
         //직접입력 선택한 경우
         //readonly속성 해제
         frm.email_2.readOnly = false;
         //도메인부분 비워주기
         frm.email_2.value = "";
      }
      else{
         //도메인을 선택한 경우
         //선택한 도메인을 입력한다.
         frm.email_2.value = em.value;
         //readonly속성을 활성화한다.
         frm.email_2.readOnly = true;
      }
   }
}
</script>
<body>
	<div class="app-content">
		<main class="container-comm">
		<article class="contents">
			<div class="member-content">
				<section class="login-area">
					<h3>회원가입</h3>

					<form id="memberFrm" action="/member/memberInfo"
						method="post" data-member-form="true" class="form-group form-w410"
						onsubmit="return mValidate(this);">
					<input type="hidden" name="page_div" id="page_div" value="pc" />
					<input type="hidden" name="redirect_url" id="redirect_url" value="https://www.yanolja.com/member/login" /> 
					<input type="hidden" name="certifyType" id="certifyType" value="1" />
					<input type="hidden" name="isApp" id="isApp" value="N" /> 
					<input type="hidden" name="appType" id="appType" value="" /> 
					<input type="hidden" name="locationAgreeYN" id="locationAgreeYN" value="Y" /> 
					<input type="hidden" name="restAgreeYN" id="restAgreeYN" value="Y" /> 
					<input type="hidden" name="emailReceiveYN" id="emailReceiveYN" value="Y" /> 
					<input type="hidden" name="smsReceiveYN" id="smsReceiveYN" value="Y" />
					<input type="hidden" name="social" id="social" value="" /> 
					<input type="hidden" name="email" id="email" value=""> 
					<input type="hidden" name="termAgreeYN" id="termAgreeYN" value="Y"> 
					<input type="hidden" name="privacyAgreeYN" id="privacyAgreeYN" value="Y"> 
					<input type="hidden" name="yanowAgreeYN" id="yanowAgreeYN" value="N"> 
					<input type="hidden" name="pushReceiveYN" id="pushReceiveYN" value="N"> <input
							type="hidden" name="group" id="group" value="pcSignup">
						<input type="hidden" name="naver" id="naver" value="" />

						<fieldset id="joinFieldset">
							<legend class="sc-out">회원가입 폼</legend>

							<div class="login-cont">
								<div class="inp-txt-member">
									<input type="text" name="id" id="id" value="" placeholder="아이디(8~20자)" title="아이디를 입력" />
								</div>

								<div class="inp-txt-member">
									<input  style="width: 120px;" type="text" name="email_1" value="" placeholder="이메일" title="이메일을 입력" maxlength="20"/>
									@ 
									<input type="text" name="email_2" style="width: 100px; height: 20px; border: solid 1px #dadada;"
										value="" readonly />
									<select name="last_email_check2" onChange="email_input(this,this.form);" class="pass" id="last_email_check2">
										<option selected="" value="">선택</option>
										<option value="google.com">구글</option>
										<option value="hanmail.net">다음</option>
										<option value="hotmail.com">핫메일</option>
										<option value="nate.com">네이트</option>
										<option value="naver.com">네이버</option>
										<option value="1">직접입력</option>
									</select>
								</div>

								<div class="inp-txt-member">
									<input type="text" id="nickName" name="nickName"
										placeholder="닉네임(2~8자)" title="닉네임을 입력(2~8자)" />
								</div>

								<div class="inp-txt-member">
									<input class="join_input" style="width: 100px; text-align: center;" type="text" id="phone" name="phone_1" placeholder="" title="" maxlength="3" />
									 - 
									<input class="join_input" style="width: 100px; text-align: center;" type="text" id="phone" name="phone_2" placeholder="" title="" maxlength="4" />
									 -
									<input class="join_input" style="width: 100px; text-align: center;" type="text" id="phone" name="phone_3" placeholder="" title="" maxlength="4" />
								</div>

								<div class="inp-txt-member">
									<input type="password" id="pass" name="pass"
										class="inp-password" /> <label class="placeholder-div">비밀번호(8~20자)</label>
								</div>
								<div class="warning-txt msg_passwd" id="pwTextArea"></div>

								<div class="inp-txt-member">
									<input type="password" id="passcheck" name="passcheck"
										class="inp-password" /> <label class="placeholder-div">비밀번호 확인</label>
								</div>
								<div class="warning-txt msg_passwdConfirm" id="cpTextArea"></div>
							</div>
							
							<button type="submit" name="button" class="btn-gradation"
								id="btnToJoinEnd">회원가입</button>
						</fieldset>
					</form>
				</section>
			</div>
		</article>
		</main>
	</div>

	<script type="text/javascript">
		$(function() {
			var $pw = $('.inp-password')
			$pw.on('click focus', function() {
				$(this).siblings('label').hide()
			});
			$pw.on('blur', function() {
				$this = $(this)
				if ($.trim($this.val()).length === 0) {
					$this.siblings('label').show()
				}
			});

		});
	</script>
	<!-- footer부분 -->
	<%@include file="/resources/YagajaSkin/yagajaBottom.jsp"%>
</body>
