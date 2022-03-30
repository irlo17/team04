<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<title>Directing | Template</title>
<script type="text/javascript">
    
    
       $(function(){
           
           
           /*회원정보 즐겨찾기 리뷰관리 로그아웃에 마우스를 올려두면 마우스포인트 손모양 바뀜*/
           $('.cate_1').css({
               cursor : 'pointer'
               
           })
           
            $('.cate_2').css({
               cursor : 'pointer'
               
           })
           
            $('.cate_3').css({
               cursor : 'pointer'
               
           })
           
            $('.cate_4').css({
               cursor : 'pointer'
               
           })
           
           
           /*클릭했을시 색상을 핑크색으로 바뀌는것*/
           
           $('.categori li').click(function(){
               $(this).css({"background" :"pink"})
           })
           
           
           
       });
       
       
  /*      
       $('.modi_dele_button').onclick(function() {
		$(this).location.href='review'
	})
        */
       
    
</script>



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


<style type="text/css">

/* Listing Section Begin 리뷰쪽 리스트 */
.nuguri {
	margin-top: 10px;
	margin-left: 100px;
	margin-right: 100px;
	/* text-align: center;*/
}

/*가게명 inline-block*/
.inline-block {
	display: inline-block;
	margin-top: 100px;
}

/* textarea 공간 넓히기*/
.hb300 {
	height: 320px;
	width: 500px;
	resize: none;
}

.dogdog {
	display: flex;
	align-items: center;
	margin-bottom: 3px
}
/*수정, 삭제 버튼 오른쪽으로 옮기기*/
.modi_dele_button1 {
	margin-left: 283px;
}

.max-width1 {
	max-width: 80%;
}

/*가게명*/
.shop_name {
	padding-bottom: 30px;
}

/*리뷰 이미지*/
.review_img {
	padding-bottom: 46px;
}

/*---------왼쪽 네비바 관련-0-----*/
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 200px;
	background-color: #f1f1f1;
}

li a {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
}

li a.active {
	background-color: lightpink;
	color: white;
}

li a:hover:not(.active) {
	background-color: #555;
	color: white;
}

li.on {
	color: #555;
}

.ul_nav {
	background: #fff;
}
/*---------왼쪽 네비바 관련-0-----*/
</style>

</head>

<body class="ov-hid">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header header--normal">

		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a href="./index.html"><img
							src="resources/img/footer-logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="header__nav">

						<div class="header__menu__right">
							<!--   <a href="#" class="primary-btn"><i class="fa fa-plus"></i>Add Listing</a>-->
							<a href="#" class="login-btn"><i class="fa fa-user"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Filter Begin -->
	<!--왼쪽 네비바-->
	<div class="filter nice-scroll col-md-3 categori">
		<div class="filter__title">


			<li><i class="fa fa-user"></i> <a class="active " href="#home">닉네임</a></li>

		</div>
		<hr />
		<br />

		<ul class="ul_nav">

			<div class="cate_1">
				<!-- <h4>회원정보</h4>-->
				<li><a href="#news">회원정보</a></li>
			</div>
			<hr />


			<div class="cate_2">
				<!--   <h4>즐겨찾기</h4>-->
				<li><a href="#contact">즐겨찾기</a></li>
			</div>
			<hr />

			<div class="cate_3">
				<!--   <h4>리뷰관리</h4>-->
				<li><a href="#about">리뷰관리</a></li>
			</div>

			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />

			<hr />
			<div class="cate_4">
				<!--  <h4>로그아웃</h4>-->
				<li><a href="#about">로그아웃</a></li>

			</div>
		</ul>

	</div>
	<!-- Filter End -->

	<!-- Listing Section Begin -->
	<section class=" nice-scroll nuguri">
		<div class="listing__text__top col-md-12 dogdog">
			<div class="listing__text__top__left fa fa-pencil-square fa-2x">
				<h5>리뷰 관리</h5>

			</div>
			<!--  <div class="listing__text__top__right"> <i class="fa fa-sort-amount-asc"></i></div>-->
		</div>




		<div class="listing__list">
			<c:forEach items="${reviewList }" var="review">
				<div class="listing__item dogdog">

					<div class="col-md-4 inline-block">
						<div style="font-weight: bold; font-size: 1.5em;"
							class="shop_name">가게명: ${review.SHOPTITLE}</div>
						<div class="review_img">
							<img src="resources/img/listing/list-4.jpg" width="450">
						</div>
					</div>
					<div class="col-md-3 inline-block max-width1">
						<form action= 'reviewUpdate.do?reviewNumber=${review.REVIEWNUMBER }' method="post">
							<!-- to-do 이미지 사용자마다 다르게 해야함 -->
							<div class="text-left img_button">
								<img src="resources/img/face/1.png" width="25" height="auto">
								${review.REVIEWGRADE }


								
								 <button type="submit" 
									class="btn btn-primary modi_dele_button1 modi_dele_button" > 수정</button> 
									 <a href="reviewDelete.do?cmd"><input type='button'class="btn btn-danger modi_dele_button" size='6' value="삭제"></a>
							</div>

							<textarea class=" hb300" name = 'reviewContent'>${review.REVIEWCONTENT}</textarea>
							
						</form>
						
					</div>
				</div>
			</c:forEach>
		</div>










	</section>


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
</body>

</html>