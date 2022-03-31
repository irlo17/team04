<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
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




<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="./resources/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="./resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="./resources/css/barfiller.css" type="text/css">
<link rel="stylesheet" href="./resources/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="./resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/style.css" type="text/css">




<style type="text/css">
.nuguri {
	/*  margin-top: 150px;
            margin-left: 100px;
            margin-right: 100px; */
	/* text-align: center;*/
	padding: 100px;
}

.inline-block {
	display: inline-block;
	margin-top: 30px;
}

.hb300 {
	height: 300px;
	resize: none
}

.dogdog {
	/* display: flex;
            align-items: center; */
	padding: 100px;
}

.ov-hid .blog__pagination {
	padding: 50px;
	position: relative;
	left:30%;
}
#my{margin-top:50px; 
position: relative; left:400px; }
#btnl{padding:20px; float: right;}
.fa-solid{font-size: 20px;}
.glyphicon{color:red; font-size:30px; right:20px;}

.blog__item__pic{width:555px;height:310px;}
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
						<a href="./index.html"><img src="img/footer-logo.png" alt=""></a>
					</div>
				</div>
				
				<div class="col-lg-9 col-md-9">
					<div class="header__nav">

						<div class="header__menu__right">
							<a href="about.html" class="primary-btn"><i class="fa-solid fa-utensils"></i>&nbsp;&nbsp;맛집 리스트</a> <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Filter Begin -->

	<div class="filter nice-scroll col-md-3">
		<div class="filter__title">
			<h5>
				<i class="fa fa-user"></i> 닉네임
			</h5>
		</div>
		<hr />
		<br />
		<div class="">
			<h4>회원정보</h4>

		</div>
		<hr />
		<div class="">
			<h4>
				<a href="./mylist.html">즐겨찾기</a>
			</h4>
		</div>
		<hr />
		<div class="">
			<h4>리뷰관리</h4>
		</div>
	</div>
	<!-- Filter End -->

	<!-- Listing Section Begin -->
	<section class=" nice-scroll nuguri">
	<div id='btnl'>
	
	<a href="UpdateLike.do?listNumber= ${bookmark.listNumber} " name="btn1" class="btn1"><span class="glyphicon glyphicon-heart" aria-hidden="true" ></span></a>
	<a href="modify.html"><input type="button" value='리스트 수정' class="btn btn-success"></a>
	<a href="detailmodify.html"><input type="button" value='가게목록 편집' class="btn btn-primary"></a>
	 </div>
			<section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    
                    <div class="row">
                    <c:forEach items="${bookmarkList }" var="bookmark" varStatus="status">
                        <div class="col-lg-6 col-md-6">
                            <div class="blog__item">
                                <div class="blog__item__pic set-bg" data-setbg="./resources/img/shop/${bookmark.shopRealfname }"></div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">  
                                        <li><i class="fa-solid fa-utensils"></i></span>${bookmark.shopAddressSi}</li>
                                        <li>${bookmark.shopFood}</li>
                                    </ul>
                                    <h5>${bookmark.shopTitle}<a href="#"></a></h5>
                                    <ul class="blog__item__widget">
                                        <li><i class="fa-solid fa-square-phone"></i> ${bookmark.shopTel}</li>
                                        <li><i class="fa-solid fa-won-sign"></i></i> ${bookmark.shopPriceRange }</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                      </c:forEach>
                    </div>
                <div class="blog__pagination">
                        <a href="#"><i class="fa fa-long-arrow-left"></i> Pre</a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">Next <i class="fa fa-long-arrow-right"></i></a>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
	</section>











	<!-- Js Plugins -->
	<script src="https://kit.fontawesome.com/2173f645ed.js" ></script>
	<script src="./resources/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/jquery.nice-select.min.js"></script>
	<script src="./resources/js/jquery-ui.min.js"></script>
	<script src="./resources/js/jquery.nicescroll.min.js"></script>
	<script src="./resources/js/jquery.barfiller.js"></script>
	<script src="./resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/jquery.slicknav.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/main.js"></script>



</body>

</html>