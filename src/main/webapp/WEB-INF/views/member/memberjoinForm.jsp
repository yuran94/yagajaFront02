<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 야가자 상단 -->
<%@include file="/resources/YagajaSkin/yagajaTop.jsp"%>
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
	
	if (fn.idHidden.value == 2) {
			alert("아이디 중복확인을 해주세요.");
			fn.id.focus();
			return false;
	}
	
	if (fn.idHidden.value == 0) {
			alert("중복된 아이디가 있어 회원가입이 불가능합니다.");
			fn.id.focus();
			return false;
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
									<input type="text" name="id" value=""
										placeholder="아이디(8~20자)" title="아이디를 입력" />
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
									<input type="text" id="mInput1" name="nickName"
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
									<input type="password" id="mInput2" name="pass"
										class="inp-password" /> <label class="placeholder-div">비밀번호(8~20자)</label>
								</div>
								<div class="warning-txt msg_passwd" id="pwTextArea"></div>

								<div class="inp-txt-member">
									<input type="password" id="" name="passcheck"
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
