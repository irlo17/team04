<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<a href="modify.html"><input type="button" value='리스트 수정' class="btn btn-success"></a>
	<a href="detailmodify.html"><input type="button" value='가게목록 편집' class="btn btn-primary"></a>
	 </div>
			<section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="blog__item">
                                <div class="blog__item__pic set-bg" data-setbg="img/blog/bp-1.jpg"></div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa-solid fa-burger"></i>서울</li>
                                        <li>중식</li>
                                    </ul>
                                    <h5>차이나당<a href="#"></a></h5>
                                    <ul class="blog__item__widget">
                                        <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                        <li><i class="fa fa-user"></i> 호두마루</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="blog__item">
                                <div class="blog__item__pic set-bg" data-setbg="img/blog/bp-2.jpg">
                                    <a href="https://www.youtube.com/watch?v=8EJ3zbKTWQ8" class="play-btn video-popup"><i class="fa fa-play"></i></a>
                                </div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa-solid fa-bowl-food"></i> Videos</li>
                                        <li>Restaurant</li>
                                    </ul>
                                    <h5><a href="#">Florida Bar Removes Famous Dollar Bill Decor</a></h5>
                                    <ul class="blog__item__widget">
                                        <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                        <li><i class="fa fa-user"></i> John Smith</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="blog__item">
                                <div class="blog__item__pic set-bg" data-setbg="img/blog/bp-3.jpg"></div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa-solid fa-fish-fins"></i> Hotel</li>
                                    </ul>
                                    <h5><a href="#">'Junior detectives' help Roseville, Calif police</a></h5>
                                    <ul class="blog__item__widget">
                                        <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                        <li><i class="fa fa-user"></i> John Smith</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="blog__item">
                                <div class="blog__item__pic set-bg" data-setbg="img/blog/bp-4.jpg">
                                    <a href="https://www.youtube.com/watch?v=8EJ3zbKTWQ8" class="play-btn video-popup"><i class="fa fa-play"></i></a>
                                </div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa-solid fa-champagne-glasses"></i></i> Restaurant</li>
                                    </ul>
                                    <h5><a href="#">Dog Rescues Florida Woman After Her iPad Catches</a></h5>
                                    <ul class="blog__item__widget">
                                        <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                        <li><i class="fa fa-user"></i> John Smith</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="blog__item">
                                <div class="blog__item__pic set-bg" data-setbg="img/blog/bp-5.jpg"></div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa-solid fa-cheese"></i> Videos</li>
                                    </ul>
                                    <h5><a href="#">Citrus Heights Snack Man Helps Feed The Homeless</a></h5>
                                    <ul class="blog__item__widget">
                                        <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                        <li><i class="fa fa-user"></i> John Smith</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="blog__item">
                                <div class="blog__item__pic set-bg" data-setbg="img/blog/bp-6.jpg"></div>
                                <div class="blog__item__text">
                                    <ul class="blog__item__tags">
                                        <li><i class="fa-solid fa-pizza-slice"></i> Travel</li>
                                    </ul>
                                    <h5><a href="#">Homeless woman’s viral subway opera performance</a></h5>
                                    <ul class="blog__item__widget">
                                        <li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
                                        <li><i class="fa fa-user"></i> John Smith</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
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
<script src="https://kit.fontawesome.com/2173f645ed.js" crossorigin="anonymous"></script>


</body>

</html>