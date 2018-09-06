<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<script type="text/javascript">
function loginValidate(f){
	if(f.id.value==""){
		alert("아이디를 입력해주세요");
		f.id.focus();
		return false;
	}
	if(f.pass.value==""){
		alert("비밀번호를 입력해주세요");
		f.pass.focus();
		return false;
	}
}
</script>
<body>
	<div class="app-content">
		<div class="site-wrapper">
			<div class="container-comm">
				<article class="contents">
				<div class="member-content">
					<section class="login-area">
						

						<form name="loginForm" action="./loginAction.do" method="post" class="form-group form-w410"
							onsubmit="return loginValidate(this);"	>
							<input type="hidden" name="redirect_url" id="redirect_url"  /> 
							<input type="hidden" name="targetPage" id="targetPage" value="" /> 
							<input type="hidden" name="auth" id="auth" value="0" /> 
							<input type="hidden" name="M_CLIENT_ID" id="M_CLIENT_ID" value="MTQzMDE4NTIwOA==" /> 
							<input type="hidden" name="M_CLIENT_SECRET" id="M_CLIENT_SECRET" value="5197a9fde7e8b499c5a06498e08145cf" /> 
							<input type="hidden" name="page_div" id="page_div" value="pc" /> 
							<input type="hidden" name="social" id="social" value="" />
						<c:choose>
							<c:when test="${not empty sessionScope.siteUserInfo }">
								<h3>
									<b>로그인</b>을 환영합니다!
								</h3>
								<div class="login-cont">
									<div class="inp-txt-member">
										<h4>${sessionScope.siteUserInfo.id }</h4>
										<h4>${sessionScope.siteUserInfo.nickname }님</h4>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<h3>
									<b>로그인</b>하고, 혜택받으세요!
								</h3>
								<fieldset>
								<legend class="sc-out">로그인 폼</legend>
								<div class="login-cont">
								
									<div class="inp-txt-member">
								<!-- 아이디 -->
										<input type="text" id="mInput1" name="id" placeholder="아이디" title="아이디 입력" />
									</div>
									<span style="font-size: 0.8em; color:#ff3478;">${IdNG }</span>
									<div class="inp-txt-member">
								<!-- 비밀번호 -->
										<input type="password" id="mInput2" name="pass" placeholder="비밀번호" title="비밀번호 입력" />
									</div>
									<span style="font-size: 0.8em; color:#ff3478;">${PassNG }</span>
									<div class="inp-checkbox-member auto-login">
										<input type="checkbox" id="ch01" name="auto" value="on" checked="checked">
											<label for="ch01">
												자동로그인
											</label>
									</div>
									<button type="submit" name="button" class="btn-gradation btn-login" id="loginSend">
										로그인
									</button>
									<p>
										비밀번호를 잊으셨거나 변경이 필요하신가요 ? <br /> <a href="/member/find/pw"
											class="link-txt">비밀번호 재설정</a>
									</p>
								</div>

								<!-- <div class="login-cont phone-login-cont">
									<p>
										아이디/비밀번호가 기억나지 않으시는 경우, <br />하단 휴대폰 번호로 로그인을 이용하시면 간편하게
										로그인하실 수 있습니다.
									</p>
										<a href="/member/phonelogin" class="btn-default btn-phone-login" style="display: inline-block;">
											휴대폰 번호 로그인
										</a>
								</div> -->

								<div class="login-footcont">
									<div class="btn-naver-login" id="social_link">
										<a href="javascript:social_login('naver');">네이버 아이디로 로그인</a>
									</div>
									<p>
										아직 야놀자 회원이 아니신가요? <br /> 
										<a href="./../member/memberjoin.do" title="회원가입" class="link-txt">회원가입</a>
									</p>
								</div>
							</fieldset>
							</c:otherwise>
						</c:choose>	
						
						</form>
						<!-- a href="/member/find?pageType=id" title="아이디찾기">아이디찾기</a>
          				<a href="/member/find?pageType=pw" title="비밀번호찾기">비밀번호찾기</a -->
					</section>
				</div>
			</article>
		</div>
		<!-- footer부분 -->
		<%@include file="/resources/YagajaSkin/yagajaBottom.jsp"%>
	</div>
</div>
</body>
</html>