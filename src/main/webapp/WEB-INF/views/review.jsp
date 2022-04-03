<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	/* 세션값 가져오기 (닉네임) */
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("lognick"); 
	request.getSession().setAttribute("id", id);  
	System.out.println(id);
%>





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
	margin-bottom: 3px;
	border-radius: 40px; 
	background: ivory;
}
/*수정, 삭제 버튼 오른쪽으로 옮기기*/
.modi_dele_button1 {
	margin-left: 370px;
}



.max-width1 {
	max-width: 80%;
	margin-top:65px;
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

 a.active {
	background-color: lightpink;
	color: black;
	text-align: center;
}

li a:hover:not(.active) {
	background-color: #555;
	color: white;
}

li.on {
	color: #555;
}

/* .ul_nav {
	background: #fff;
} */

.box {
    width: 150px;
    height: 150px; 
    border-radius: 70%;
    overflow: hidden;
}


.nick{
  margin-top: -20px;
   text-align: center;
}

.filter__title{
    position: absolute;
     top: 25%;
     left: 50%;
     transform: translate(-50%,-50%);
}

.profile{
	    max-width: 120%;
	    
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
							<a href="login.do" class="login-btn"><i class="fa fa-user"></i></a>
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
         <div class="box">
            <c:choose>
               <c:when test="${ empty MemberVO.memberFname }">
                  <img class="memberFile profile" src="./resources/upload/KakaoTalk_20220107_103421413_01.jpg">
               </c:when>
               <c:otherwise>
                  <img class="memberFile profile" src="./resources/upload/${MemberVO.memberRealfname }">
               </c:otherwise>
            </c:choose>
         	
         </div>
        <br/>
        <br/>
         <h5 class="nick">
            ${sessionScope.lognick }
         </h5>
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
	
		
	
	

			<div class="cate_1">
				<!-- <h4>회원정보</h4>-->
			<a href="mypageMember.do"><h4>회원정보</h4></a>
			</div>
			<hr />


			<div class="cate_2">
				<!--   <h4>즐겨찾기</h4>-->
			<a href="mylist.do"><h4>즐겨찾기</h4></a>
			</div>
			<hr />

			<div class="cate_3">
				<!--   <h4>리뷰관리</h4>-->
				<a href="review.do"><h4>리뷰관리</h4></a>
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
		
			<hr />
			<div class="cate_4">
				<!--  <h4>로그아웃</h4>-->
				<a href="logout.do">로그아웃</a>

			</div>
	

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
						
						<c:set var="email" value="${sessionScope.logemail}" />
                                    <c:choose>
                                    	<c:when test="${sessionScope.logemail eq review.MEMBEREMAIL}">
                                        <img width="350" height="300"   src="resources/reviewUpload/${review.REVIEWFNAME }">
                                        </c:when>
                                        <c:otherwise>
                                      
                                        </c:otherwise>
                                   </c:choose>
						
							
							
						</div>
					</div>
					<div class="col-md-3 inline-block max-width1">
						<form action= 'reviewUpdate.do?reviewNumber=${review.REVIEWNUMBER }' method="post">
							<!-- to-do 이미지 사용자마다 다르게 해야함 -->
							<div class="text-left img_button">
								<div><img src="resources/img/face/1.png" width="25" height="auto">
								${review.REVIEWGRADE }
								</div>

								<div>
								 <button type="submit" 
									class="btn btn-primary modi_dele_button1 modi_dele_button" > 수정</button> 
									 <a href="reviewDelete.do?reviewNumber=${review.REVIEWNUMBER }"><input type='button'class="btn btn-danger modi_dele_button" size='6' value="삭제"></a>
									 </div>
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