<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 야가자 상단 -->
<%@include file="/resources/YagajaSkin/yagajaTop.jsp"%>
<script src="../resources/bootstrap3.3.7/jquery/jquery-3.2.1.min.js"></script>
<body>
	<div class="app-content">
		<div class="site-wrapper">
			<main class="container-comm">
			<article class="contents">
				<div class="member-content">
					<section class="login-area">
						<h3>회원가입</h3>

						<form id="joinMemberPc" action="" method="post" data-member-form="true"
							class="form-group form-w410">
							<input type="hidden" name="page_div" id="page_div" value="pc" />
							<input type="hidden" name="redirect_url" id="redirect_url"
								value="https://www.yanolja.com/member/login" /> 
							
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
							<input type="hidden" name="pushReceiveYN" id="pushReceiveYN" value="N"> 
							<input type="hidden" name="group" id="group" value="pcSignup">
							<input type="hidden" name="naver" id="naver" value="" />

							<fieldset id="joinFieldset">
								<legend class="sc-out">회원가입 폼</legend>

								<div class="login-cont">
								
									<div class="inp-txt-member">
										<input type="text" name="id" value=""
											placeholder="아이디를 입력하세요" title="아이디를 입력" />
									</div>
									
									
									<div class="inp-txt-member">
										<input style="width:100px" type="text" name="phone" value=""
											placeholder="010" title="휴대전화번호를 입력" />
											-
										<input style="width:100px" type="text" name="phone" value=""
											placeholder="6742" title="휴대전화번호를 입력" />
											-
										<input style="width:100px" type="text" name="phone" value=""
											placeholder="3456" title="휴대전화번호를 입력" />
									</div>
									
									<div class="inp-txt-member">
										<input type="text" name="email" value=""
											placeholder="이메일을 입력해주세요" title="이메일을 입력" />
									</div>
									
									<div class="inp-txt-member">
										<input type="text" id="mInput1" name="nickName"
											placeholder="닉네임을 입력하세요.(2~8자)" title="닉네임을 입력(2~8자)" />
									</div>
									<div class="warning-txt msg_nickName" id="nickTextArea"></div>

									<div class="inp-txt-member">
										<input type="password" id="mInput2" name="passwd"
											class="inp-password" /> <label class="placeholder-div">비밀번호를
											입력하세요(8~20자)</label>
									</div>
									<div class="warning-txt msg_passwd" id="pwTextArea"></div>

									<div class="inp-txt-member">
										<input type="password" id="" name="passwdConfirm"
											class="inp-password" /> <label class="placeholder-div">비밀번호를
											한번 더 입력하세요.</label>
									</div>
									<div class="warning-txt msg_passwdConfirm" id="cpTextArea"></div>
								</div>
								<button type="submit" name="button" class="btn-gradation" id="btnToJoinEnd">회원가입완료</button>
							</fieldset>
						</form>
					</section>
				</div>
			</article>
			</main>
			<%@include file="/resources/YagajaSkin/yagajaBottom.jsp"%>
		</div>
	</div>

</body>
</html>