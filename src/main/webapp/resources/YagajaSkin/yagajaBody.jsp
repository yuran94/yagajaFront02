<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 야가자 상단 -->
<%@include file="./yagajaTop.jsp"%>

<script src="../resources/bootstrap3.3.7/jquery/jquery-3.2.1.js"></script>
<body data-reactid="26" cz-shortcut-listen="true">
	<!-- <noscript data-reactid="27">
		<div
			style="position: relative; height: 10vh; top: 73px; margin: 30px;"
			data-reactid="28">
			<p
				style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);"
				data-reactid="29">
				<b data-reactid="30">
				 react-text: 31현재 사이트는 자바스크립트 사용에
					최적화 되어 있습니다./react-text <br data-reactid="32" /> react-text: 33
					자바스크립트를 활성화 시켜주세요./react-text
				</b>
			</p>
		</div>
	</noscript> -->
	<div id="app" >
		<div data-reactroot="" >
			<div class="app-content">
				<div class="site-wrapper pc-wrapper" >
					<div id="main" class="container-comm pc-container">
						<article class="contents" >
							<div class="home-content" >
								<div >
									<section class="search-area background3" >
										<h2 class="sc-out">검색 영역</h2>
										<div class="search-panel column1">

											<!-- 사진배경화면부분  -->
											<p class="search-paragraph" >
												야놀자와 함께
												<br data-reactid="88"> <em d>여행</em>
												을 떠나볼까요?
											</p>
											<br />
											<div class="search-option" >
												<div class="option-list" >
													<div class="option-item item-option-roomtype">
														<div class="option-tit-rap" >
															<span class="option-tit" >숙박유형</span>
														</div>
														<span><div class="popover-wrapper">
																<div class="popover-container-pc">
																	<div data-popover-children="true" >
																		<button type="button" class="option-btn">
																			<img src="https://yaimg.yanolja.com/joy/pw/home/img-roomtype-1.svg"
																				alt=""><em>모텔</em><i class="icon-comm icon-arrow-down">
																				</i>
																		</button>
																	</div>
																	<div style="display: none;"
																		class="popover-content popover-search-option animate-bounce-down"
																		data-popover-content="true">
																		<div class="layer-search-option layer-radio-list">
																			<div class="radio-list" >
																				<div class="inp-radio inp-radio-active">
																					<input type="radio" title="모텔" name="inp-radio"
																						value="on"><label for="inp-radio"><a>모텔</a></label>
																				</div>
																				<div class="inp-radio">
																					<input type="radio" title="호텔" name="inp-radio"
																						value="on"><label for="inp-radio"><a>호텔</a></label>
																				</div>
																				<div class="inp-radio">
																					<input type="radio" title="펜션" name="inp-radio"
																						value="on"><label for="inp-radio"><a>펜션</a></label>
																				</div>
																				<div class="inp-radio">
																					<input type="radio" title="게스트하우스" name="inp-radio"
																						value="on"><label for="inp-radio"><a>게스트하우스</a></label>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div></span>
													</div>
													<div class="option-item item-option-area">
														<div class="option-tit-rap">
															<span class="option-tit" >지역</span>
														</div>
															<span>
														<div class="popover-wrapper" >
																<div class="popover-container-pc">
																	<div data-popover-children="true">
																		<button type="button" class="option-btn">
																			<em >서울</em><span>강남/역삼/삼성/논현</span>
																				<i class="icon-comm icon-arrow-down" ></i>
																		</button>
																	</div>
																	<div style="display: none;"
																		class="popover-content popover-search-option animate-bounce-down"
																		data-popover-content="true" data-reactid="118">
																		<div class="layer-search-option layer-area-list"
																			data-reactid="119">
																			<ul class="area-list" data-reactid="120">
																			</ul>
																			<div class="subarea-cnt" data-reactid="121">
																				<div class="inner" data-reactid="122">
																					<ul class="subarea-list row2" data-reactid="123">
																					</ul>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</span>
														<i class="left-item-bar"></i> 
														<i class="right-item-bar"></i>
													</div>
													<div class="option-item item-option-calendar">
														<div class="option-tit-rap" >
															<span class="option-tit f-left" >체크인</span><span
																class="option-tit f-right" >체크아웃</span>
														</div>
														<div class="option-btn" >
															<div class="datepicker-container datepicker-yanolja-pc">
																<div class="datepicker-content" >
																	<div class="DateRangePicker" >
																		<div>


																			<!-- 데이트피커들어가야할 부분 체크인날짜  -->
																			<div class="DateRangePickerInput" data-reactid="129">
																				<div class="DateInput" data-reactid="130">
																					<input type="text" aria-label="YYYY-MM-DD"
																						class="DateInput__input needsclick" id="startDate"
																						name="startDate" value="2018-09-03"
																						placeholder="YYYY-MM-DD" autocomplete="off"
																						aria-describedby="" data-reactid="131" />
																					<div
																						class="DateInput__display-text DateInput__display-text--has-input"
																						data-reactid="133"></div>
																				</div>
																				<div class="DateRangePickerInput__arrow"
																					data-reactid="134">
																					<span data-reactid="135"></span>
																				</div>
																				<div class="DateInput" data-reactid="136">
																					<input type="text" aria-label="YYYY-MM-DD"
																						class="DateInput__input needsclick" id="endDate"
																						name="endDate" value="2018-09-03"
																						placeholder="YYYY-MM-DD" autocomplete="off"
																						aria-describedby="" data-reactid="137" />
																					<!-- react-text: 138 -->
																					<!-- /react-text -->
																					<div
																						class="DateInput__display-text DateInput__display-text--has-input"
																						data-reactid="139"></div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<i class="icon-comm icon-arrow-down " data-reactid="140"></i>
														</div>
													</div>
												</div>
												<button type="button"
													class="btn-search-stay color-gradation" data-reactid="141">숙소검색</button>
											</div>
										</div>
										<div class="search-opacity" data-reactid="142"></div>
									</section>
								</div>
								<section class="myposition-area" data-reactid="143">
									<h2 class="sc-out" data-reactid="144">현재 내 위치</h2>
									<div class="myposition-cnt" data-reactid="145">
										<i class="icon-comm icon-myposition" data-reactid="146"></i><strong
											data-reactid="147"></strong>
										<button type="button" data-reactid="148">
											<i class="icon-comm icon-refresh" data-reactid="149"></i>
										</button>
									</div>
								</section>


								<section class="quicklink-area" data-reactid="150">
									<h2 class="sc-out" data-reactid="151">숙소 타입별 바로가기</h2>
									<div class="quicklink-list" data-reactid="152">
										<div data-reactid="153">




											<!-- 중간 아이콘 영역 -->
											<a class="quicklink-item"
												href="/around?lat=&amp;lng=&amp;checkinDate=2018-08-30&amp;checkoutDate=2018-08-30&amp;limit=20&amp;page=1&amp;advertsPosition=MAIN&amp;myRoom=0&amp;searchType=recommend&amp;gaList=3rdCoupon"
												data-reactid="154"><span class="image"
												data-reactid="155"><img
													src="https://yaimg.yanolja.com/joy/pw/home/img-quicklink-coupon.svg"
													alt="내 주변 쿠폰" data-reactid="156" /></span><span
												data-reactid="157">내 주변 쿠폰</span></a><a class="quicklink-item"
												href="/around/keyword-motel?lat=&amp;lng=&amp;checkinDate=2018-08-30&amp;checkoutDate=2018-08-30&amp;limit=20&amp;page=1&amp;motel=1&amp;sort=107&amp;advert=AROUND&amp;searchType=motel&amp;gaList=3rdMotel"
												data-reactid="158"><span class="image"
												data-reactid="159"><img
													src="https://yaimg.yanolja.com/joy/pw/home/img-quicklink-motel.svg"
													alt="모텔" data-reactid="160" /></span><span data-reactid="161">모텔</span></a><a
												class="quicklink-item"
												href="/around/keyword-myRoom?lat=&amp;lng=&amp;checkinDate=2018-08-30&amp;checkoutDate=2018-08-30&amp;limit=20&amp;page=1&amp;sort=200&amp;advert=AROUND&amp;motel=1&amp;myRoom=1&amp;searchType=myRoom&amp;gaList=3rdMotel"
												data-reactid="162"><span class="image"
												data-reactid="163"><img
													src="https://yaimg.yanolja.com/joy/pw/home/img-quicklink-myroom.svg"
													class="img-myroom" alt="MY ROOM" data-reactid="164" /></span><span
												data-reactid="165">MY ROOM</span><span class="label"
												data-reactid="166"><img
													src="https://yaimg.yanolja.com/joy/pw/home/label-coupon.svg"
													class="img-myroom" alt="50%할인" data-reactid="167" /></span></a><a
												class="quicklink-item"
												href="/around/keyword-franchiseType?lat=&amp;lng=&amp;checkinDate=2018-08-30&amp;checkoutDate=2018-08-30&amp;limit=20&amp;page=1&amp;sort=107&amp;advert=AROUND&amp;franchiseType=1&amp;motel=1&amp;searchType=franchiseType&amp;gaList=3rdHotel"
												data-reactid="168"><span class="image"
												data-reactid="169"><img
													src="https://yaimg.yanolja.com/joy/pw/home/img-quicklink-hotel.svg"
													alt="야놀자 호텔" data-reactid="170" /></span><span data-reactid="171">야놀자
													호텔</span></a><a class="quicklink-item"
												href="/around/keyword-hotel?lat=&amp;lng=&amp;checkinDate=2018-08-30&amp;checkoutDate=2018-08-30&amp;limit=20&amp;page=1&amp;sort=107&amp;advert=AROUND&amp;hotel=1&amp;searchType=resort&amp;gaList=3rdHotel"
												data-reactid="172"><span class="image"
												data-reactid="173"><img
													src="https://yaimg.yanolja.com/joy/pw/home/img-quicklink-resort.svg"
													alt="호텔/리조트" data-reactid="174" /></span><span data-reactid="175">호텔/리조트</span></a><a
												class="quicklink-item"
												href="/around/keyword-pension?lat=&amp;lng=&amp;checkinDate=2018-08-30&amp;checkoutDate=2018-08-30&amp;limit=20&amp;page=1&amp;sort=107&amp;advert=AROUND&amp;pension=1&amp;searchType=pension&amp;gaList=3rdPension"
												data-reactid="176"><span class="image"
												data-reactid="177"><img
													src="https://yaimg.yanolja.com/joy/pw/home/img-quicklink-pension.svg"
													alt="펜션/풀빌라" data-reactid="178" /></span><span data-reactid="179">펜션/풀빌라</span></a><a
												class="quicklink-item"
												href="/around/keyword-guestHouse?lat=&amp;lng=&amp;checkinDate=2018-08-30&amp;checkoutDate=2018-08-30&amp;limit=20&amp;page=1&amp;sort=107&amp;advert=AROUND&amp;guestHouse=1&amp;searchType=guestHouse&amp;gaList=3rdGuesthose"
												data-reactid="180"><span class="image"
												data-reactid="181"><img
													src="https://yaimg.yanolja.com/joy/pw/home/img-quicklink-guesthouse.svg"
													alt="게스트하우스" data-reactid="182" /></span><span data-reactid="183">게스트하우스</span></a>
										</div>
									</div>
								</section>
								<section class="business-area" data-reactid="184">
									<h3 class="sc-out" data-reactid="185">제휴/광고</h3>
									<div class="business-content column1" data-reactid="186">
										<div class="business-box item-index-0" data-reactid="187">
											<div class="business-item" data-reactid="188">
												<img
													src="https://yaimg.yanolja.com/joy/pw/home/leisure-event.png"
													class="main-image" alt="레저/티켓" data-reactid="189" />
												<p data-reactid="190">
													<em data-reactid="191"> <!-- react-text: 192 -->숙박도,
														레저도 초특가 야놀자!<!-- /react-text --> <br data-reactid="193" />
													</em>
													<!-- react-text: 194 -->
													지금 야놀자 앱(APP)에서
													<!-- /react-text -->
													<br data-reactid="195" /> <em data-reactid="196">레저 /
														티켓 최대 80%할인</em>
													<!-- react-text: 197 -->
													받고 놀자
													<!-- /react-text -->
												</p>
												<a target="_blank" href="/promotion/event/leisure"
													data-reactid="198"><img
													src="https://yaimg.yanolja.com/joy/pw/home/btn-leisure-pink.png"
													alt="레저/티켓 자세히보기" data-reactid="199" /></a>
											</div>
											<div class="business-item" data-reactid="200">
												<img
													src="https://yaimg.yanolja.com/joy/pw/home/img-partner.png"
													class="main-image" alt="야놀자 광고 신칭" data-reactid="201" />
												<p data-reactid="202">
													<!-- react-text: 203 -->
													제휴점주님의 만족을 최상으로
													<!-- /react-text -->
													<br data-reactid="204" />
													<!-- react-text: 205 -->
													야놀자에서의
													<!-- /react-text -->
													<em data-reactid="206"> <!-- react-text: 207 -->단골손님
														확보,<!-- /react-text --> <br data-reactid="208" /> <!-- react-text: 209 -->신규고객
														유치!<!-- /react-text -->
													</em>
												</p>
												<a target="_blank" href="http://www.yanoljalab.com/ad.php"
													data-reactid="210"><img
													src="https://yaimg.yanolja.com/joy/pw/home/btn-cfrequest.png"
													alt="야놀자 광고 신청" data-reactid="211" /></a>
											</div>
										</div>
										<div class="business-btns" data-reactid="212">
											<button class="bs-btn on" data-reactid="213"></button>
											<button class="bs-btn " data-reactid="214"></button>
										</div>
									</div>
								</section>


								<!-- 하단footer 바로 위 공지사항  -->
								<section class="mainnotice-area column1" data-reactid="215">
									<h3 data-reactid="216">공지사항</h3>
									<div data-reactid="217">
										<div class="rolling-panel" data-reactid="218">
											<div class="notice-list list-index-1" data-reactid="219"></div>
											<button type="button" class="btn-more-notice"
												data-reactid="220">
												<img
													src="https://yaimg.yanolja.com/joy/pw/home/img-notice-arrow.svg"
													alt="" data-reactid="221" /><span class="sc-out"
													data-reactid="222">다음글</span>
											</button>
										</div>
									</div>
								</section>
								<span itemscope="" itemtype="http://schema.org/Organization"
									style="display: none;" data-reactid="223"><link
										itemprop="url" href="https://www.yanolja.com"
										data-reactid="224" /> <a itemprop="sameAs"
									href="https://www.facebook.com/yanolja/" data-reactid="225">FB</a><a
									itemprop="sameAs"
									href="https://www.instagram.com/yanoljainsta/"
									data-reactid="226">instagram</a><a itemprop="sameAs"
									href="https://www.youtube.com/user/yanoljamedia"
									data-reactid="227">youtube</a><a itemprop="sameAs"
									href="http://tv.naver.com/yanolja" data-reactid="228">naver
										tv</a><a itemprop="sameAs"
									href="http://post.naver.com/my.nhn?memberNo=2768780"
									data-reactid="229">naver post</a><a itemprop="sameAs"
									href="http://blog.naver.com/yanolog" data-reactid="230">naver
										blog</a><a itemprop="sameAs"
									href="https://play.google.com/store/apps/details?id=com.cultsotry.yanolja.nativeapp"
									data-reactid="231">android</a><a itemprop="sameAs"
									href="https://itunes.apple.com/kr/app/%EC%95%BC%EB%86%80%EC%9E%90/id436731843?mt=8"
									data-reactid="232">ios</a><a itemprop="sameAs"
									href="https://yanolja.github.io/" data-reactid="233">github
										blog</a></span>
								<div data-reactid="234">
									<!-- react-empty: 235 -->
								</div>
							</div>
						</article>
					</div>
					<!-- footer부분 -->
					<%@include file="./yagajaBottom.jsp"%>
				</div>
			</div>
		</div>
	</div>