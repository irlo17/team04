<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	int shopNumber = Integer.valueOf(request.getParameter("shopNumber"));
%>





<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- <meta http-equiv="refresh" content="1"> -->

<title>Directing | Template</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>






<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/barfiller.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<link rel="stylesheet" href="resources/css/choi.css" type="text/css">



</head>


<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a href="./index.html"><img src="resources/img/logo.png"
							alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="header__nav">

						<div class="header__menu__right">
							<a href="#" class="primary-btn"><i class="fa fa-plus"></i>맛집리스트</a>
							<a href="#" class="login-btn"><i class="fa fa-user"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
	</header>
	<!-- Header Section End -->


	<!-- Listing Section Begin -->
	<section class="listing-hero set-bg"
		data-setbg="resources/img/listing/details/listing-hero.jpg">


		<c:forEach items="${shopInfoList}" var='shopInfoList'>
			<div class="container">

				<div class="row">
					<div class="col-lg-8">
						<div class="listing__hero__option">
							<div class="listing__hero__icon">
								<img src="resources/img/listing/details/ld-icon.png" alt="">
							</div>
							<div class="listing__hero__text">
								<h2>${shopInfoList.SHOPTITLE  }</h2>

								<div class="listing__hero__widget"></div>
								<p>
									<span class="icon_pin_alt"></span> ${shopInfoList.SHOPADDRESS }
								</p>
							</div>
						</div>
					</div>

					<div class="col-lg-4">
						<div class="listing__hero__btns">

							<c:forEach items="${totalList }" var="totalList">


								<c:choose>
									<c:when test="${  totalList.SHOPNUMBER eq '0'   }">


										<button class="primary-btn" id="listAdd"
											value="${shopInfoList.SHOPNUMBER }">
											<i class="fa fa-bookmark"></i>추가하기
										</button>


									</c:when>

									<c:when
										test="${totalList.SHOPNUMBER eq shopInfoList.SHOPNUMBER }">

										<button class="primary-btn" id="listAdd2"
											value="${shopInfoList.SHOPNUMBER }">
											<i class="fa fa-bookmark"></i>추가완료
										</button>

									</c:when>

								</c:choose>
							</c:forEach>


						</div>
					</div>

				</div>
			</div>
		</c:forEach>


	</section>
	<!-- Listing Section End -->

	<!-- Listing Details Section Begin -->

	<section class="listing-details spad">

		<div class="container">
			<div class="row">

				<div class="col-lg-8">
					<div class="listing__details__text">
						<c:forEach items="${shopInfoList}" var='shopInfoList'>
							<div class="listing__details__about">
								<h4>가게 소개</h4>
								<p>${shopInfoList.SHOPCONTENT }</p>
							</div>
						</c:forEach>
						<div class="listing__details__gallery">
							<h4>Gallery</h4>

				
				
								<!-- 가게 정보 시작  -->
							<div class="listing__details__gallery__pic">
								<c:forEach items="${shopInfoList}" var='shopInfoList'>
									<div class="listing__details__gallery__item">


										<c:set var="shopNumber" value="<%=shopNumber%>" />

										<c:choose>
											<c:when test="${	shopNumber eq shopInfoList.SHOPNUMBER}">
												<img class="listing__details__gallery__item__large"
													width="100%" height="450"
													src="resources/manager/upload/${shopInfoList.SHOPREALFNAME }"
													alt="">
											</c:when>
											<c:otherwise>

											</c:otherwise>
										</c:choose>

									</div>
								</c:forEach>


								<div class="listing__details__gallery__slider owl-carousel">
									<c:forEach items="${fromReviewRealFname}"
										var="fromReviewRealFname">

										<c:choose>
											<c:when
												test="${ fromReviewRealFname.REVIEWREALFNAME != '0' }">



												<img
													data-imgbigurl="./resources/reviewUpload/${fromReviewRealFname.REVIEWREALFNAME }"
													src="./resources/reviewUpload/${fromReviewRealFname.REVIEWREALFNAME }"
													width="100%" height="160px" alt="">
											</c:when>
											<c:otherwise>
												<c:if test="${fromReviewRealFname.REVIEWREALFNAME == '0' }">
													<img data-imgbigurl="./resources/pageSpinner/notExist.png"
														src="./resources/pageSpinner/notExist.png" width="100%"
														height="160px" alt="">
												</c:if>
											</c:otherwise>

										</c:choose>
									</c:forEach>

								</div>


							</div> <!-- 가게 사진 끝 -->

						</div>
						
						<!-- 리뷰작성 시작 -->
						<div class="listing__details__review">
							<h>리뷰 작성</h>
							<form action="reviewInsert.do?" method="post"
								enctype="multipart/form-data">
								<input type='hidden' name='shopNumber' value='<%=shopNumber%>' />
								<!-- <input type="text" placeholder="Name">
                                <input type="text" placeholder="Email">-->
								<textarea placeholder="Review" name='reviewContent'></textarea>


								<select name='reviewGrade' id='gradeSelect'>
									<option value='맛있어요' selected>-- 맛평가 --</option>
									<option value='맛있어요'>맛있어요</option>
									<option value='보통이에요'>보통이에요</option>
									<option value='맛없어요'>맛없어요</option>
								</select> <br /> <br /> <br /> <br />

								<h4>add image</h4>
								<input type="file" name='file' value="" accept='image/*' />

								<button type="submit" style="margin-left: 44%;"
									class="site-btn reviewBTN">작성</button>
							</form>
						</div> <!-- 리뷰 작성 끝 -->


						<!--  리뷰 작성 목록 정보 시작-->
						<c:forEach items="${reviewInfo}" var='reviewInfo' varStatus="vs">

							<c:choose>
								<c:when test="${ reviewInfo.REVIEWNUMBER != '0'  }">

									<div class="listing__details__comment">
										<h4>리뷰</h4>
										<div class="listing__details__comment__item">
											<div class="listing__details__comment__item__pic">
												<input type="hidden" name="reviewNumber"
													value="${reviewInfo.REVIEWNUMBER }">


												<c:forEach items="${ProfileRealFname }"
													var="ProfileRealFname">
													<c:choose>
														<c:when
															test="${ProfileRealFname.REVIEWNUMBER eq reviewInfo.REVIEWNUMBER }">
															<img
																src="./resources/upload/${ProfileRealFname.MEMBERREALFNAME }"
																alt="">

														</c:when>
													</c:choose>
												</c:forEach>

											</div>
											<div class="listing__details__comment__item__text">
												<div class="listing__details__comment__item__rating">
													${reviewInfo.REVIEWGRADE }
													<c:if test="${reviewInfo.REVIEWGRADE eq '맛있어요' }">
														<i class="fa fa-thumbs-up tasteGrade" aria-hidden="true"></i>
													</c:if>
													<c:if test="${reviewInfo.REVIEWGRADE eq '보통이에요' }">
														<i class="fa fa-meh-o tasteGrade" aria-hidden="true"></i>
													</c:if>
													<c:if test="${reviewInfo.REVIEWGRADE eq '맛없어요' }">
														<i class="fa fa-thumbs-down" aria-hidden="true"></i>
													</c:if>


												</div>
												<span>${reviewInfo.REVIEWDATE }</span>
												<h6>리뷰 내용:</h6>
												<p>${reviewInfo.REVIEWCONTENT }</p>



												<c:set var="email" value="${sessionScope.logemail}" />
												<c:choose>
													<c:when
														test="${sessionScope.logemail eq reviewInfo.MEMBEREMAIL}">
														<img class="imgClass" width="180" height="120"
															src="./resources/reviewUpload/${reviewInfo.REVIEWREALFNAME }">
													</c:when>
													<c:otherwise>
														<!--   <img width="180" src="resources/img/listing/list-2.jpg">
                                        <img width="180" src="resources/img/listing/list-3.jpg"> -->
														<img width="180" height="120"
															src="./resources/reviewUpload/${reviewInfo.REVIEWREALFNAME }">
													</c:otherwise>
												</c:choose>

												<ul>
													<!-- <li><i class="fa fa-hand-o-right"></i> Like</li>-->
													<li><i class="fa fa-share-square-o"></i>
														<button type="text" class="modal-button"
															onClick="document.getElementById('mw_temp${vs.index}').style.display='block'">신고하기</button>
														<div id="mw_temp${vs.index}" class="mw modalchang">
															<div class="bg">
																<!--이란에는 내용을 넣지 마십시오.-->
															</div>
															<form
																action="reviewReport.do?reviewNumber=${reviewInfo.REVIEWNUMBER }"
																method="post">

																<input type="hidden" name="shopNumber"
																	value="${reviewInfo.SHOPNUMBER }" />
																<div class="fg modalchang">
																	<p>신고하실 내용을 적어주세요.</p>
																	<textarea class="report_op" name="reportContent"> </textarea>
																	<button type="submit" class="btn btn-info">제출</button>
																	<button
																		onclick="document.getElementById('mw_temp${vs.index}').style.display='none'"
																		type="button" class="btn btn-danger">창닫기</button>
																</div>
															</form>
														</div></li>
												</ul>

											</div>
										</div>
									</div>


								</c:when>


								<c:otherwise>
									<c:choose>
										<c:when test="${  reviewInfo.REVIEWNUMBER == '0'}">

											<div class="listing__details__comment">
												<h4>리뷰</h4>
												<div class="listing__details__comment__item">
													<div class="listing__details__comment__item__pic">
														<img src="resources/img/listing/details/comment.png"
															alt="">
													</div>
													<div class="listing__details__comment__item__text">
														<div class="listing__details__comment__item__rating">
															<!--   <h6>리뷰가 없습니다.ㅠㅠ</h6>
                                      <img width='20' height='20' src="resources/img/face/1.png"> -->

														</div>
														<!-- <span>아직 리뷰가 없습니다.</span> -->
														<h5>리뷰 내용</h5>
														<p>리뷰남긴 손님이 없습니다.</p>

													</div>
												</div>
											</div>
										</c:when>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					<!-- ajax 실패작 -->
					<%-- 	<div id="oldList"></div>
						<a href="listingDetails.do?shopNumber=<%= shopNumber%>"><button id="searchMoreNotify"
							value="<%= shopNumber%>" class="btn btn-outline-primary btn-block col-sm-10 mx-auto">더
							보기</button></a> --%>

					</div>
				</div>

			
				<div class="col-lg-4">
					<div class="listing__sidebar">
						<div class="listing__sidebar__contact">

							<div class="listing__sidebar__contact__map">

								<div id="map" style="width: 100%; height: 14em"></div>

								<script type="text/javascript"
									src="//dapi.kakao.com/v2/maps/sdk.js?appkey=05fe72ea73cecbaa3ca941aad15b2755&libraries=services"></script>
								<c:forEach items="${shopInfoList}" var='shopInfoList'>
							
									<script>
										var mapContainer = document
												.getElementById("map"), // 지도를 표시할 div
										mapOption = {
											center : new kakao.maps.LatLng(
													33.450701, 126.570667), // 지도의 중심좌표
											level : 3, // 지도의 확대 레벨
										};

										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다

										var geocoder = new kakao.maps.services.Geocoder();

										geocoder
												.addressSearch(

															"${shopInfoList.SHOPADDRESS}"	,
														function(result, status) {
															// 정상적으로 검색이 완료됐으면
															if (status === kakao.maps.services.Status.OK) {
																var coords = new kakao.maps.LatLng(
																		result[0].y,
																		result[0].x);

																// 결과값으로 받은 위치를 마커로 표시합니다
																var marker = new kakao.maps.Marker(
																		{
																			map : map,
																			position : coords,
																		});

																// 인포윈도우로 장소에 대한 설명을 표시합니다
																var infowindow = new kakao.maps.InfoWindow(
																		{
																			content : '<div style="width:150px;text-align:center;padding:6px 0;">집</div>',
																		});
																infowindow
																		.open(
																				map,
																				marker);

																// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
																map
																		.setCenter(coords);
															}
														});
									</script>
								</c:forEach>


							</div>

							<div class="listing__sidebar__contact__text">
								<c:forEach items="${shopInfoList}" var='shopInfoList'>
									<br />
									<h5>상세정보</h5>
									<br />
									<ul>


										<li><span class=""><i class="fa fa-home"></i></span>
											${shopInfoList.SHOPTITLE }
											<hr /></li>
										<li><span class=""><i class="fa fa-info-circle"></i></span>쉬는날:
											${shopInfoList.SHOPHOLIDAY }
											<hr /></li>
										<li><span class=""><i class="fa fa-calendar"></i></span>
											${shopInfoList.SHOPTIME }
											<hr /></li>
										<li><span class=""><i class="fa fa-krw"></i></span>
											${shopInfoList.SHOPPRICERANGE }
											<hr /></li>
										<li><span class=""><i class="fa fa-car"></i></span>
											${shopInfoList.SHOPPARK }
											<hr /></li>
										<li><span class="icon_pin_alt"></span>
											${shopInfoList.SHOPADDRESS }
											<hr /></li>
										<li><span class="icon_phone"></span>
											${shopInfoList.SHOPTEL }
											<hr /></li>

									</ul>
									<input type='hidden' id='shopLocation'
										value='${shopInfoList.SHOPADDRESS}' />
								</c:forEach>
							</div>

							<div class="listing__sidebar__working__hours">

								<h4>메뉴</h4>
								<c:forEach items="${menuInfo}" var='menuInfo'>
									<ul>
										<li>${menuInfo.MENUNAME }<span>${menuInfo.MENUPRICE }</span></li>

									</ul>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr />


	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.html"><img
								src="resources/img/footer-logo.png" alt=""></a>
						</div>
						<p>Challenging the way things have always been done can lead
							to creative new options that reward you.</p>
					</div>
				</div>
				<div class="col-lg-4 offset-lg-1 col-md-6">
					<div class="footer__address">
						<ul>
							<li><span>Call Us:</span>
								<p>(+12) 345-678-910</p></li>
							<li><span>Email:</span>
								<p>info.colorlib@gmail .com</p></li>
							<li><span>Fax:</span>
								<p>(+12) 345-678-910</p></li>
							<li><span>Connect Us:</span>
								<div class="footer__social">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-skype"></i></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6">
					<div class="footer__widget">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Support</a></li>
							<li><a href="#">How it work</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Blog</a></li>
						</ul>
						<ul>
							<li><a href="#">Sign In</a></li>
							<li><a href="#">How it Work</a></li>
							<li><a href="#">Advantages</a></li>
							<li><a href="#">Direo App</a></li>
							<li><a href="#">Packages</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="footer__copyright__links">
							<a href="#">Terms</a> <a href="#">Privacy Policy</a> <a href="#">Cookie
								Policy</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.nice-select.min.js"></script>
	<script src="resources/js/jquery-ui.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/jquery.barfiller.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/jquery.slicknav.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/choi.js"></script>

</body>

</html>