<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<% String number=request.getParameter("listNumber"); %> 
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!--제이쿼리 라이브러리  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Directing | Template</title>
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">
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
#btnl{padding-top:100px; position:relative; left:70% ; font-size: 20px; }
.fa-solid{font-size: 20px;}
.glyphicon{color:red; font-size:30px;/*  position:relative;left:70%; */ }

.blog__item__pic{width:555px;height:310px;}
.spad{position:relative; right:100px;}
.haha{position:relative;left:69% ; bottom:2%}
</style>
<script type="text/javascript">

//로그인 한 상태에서 하트를 클릭했을 때 (로그인한 상태인 하트의 <a></a> class명: heart-click)
$(document).ready(function() {
	$(".heart-click").click(function() {
	
	    // 게시물 번호(no)를 idx로 전달받아 저장합니다.
	    let no = $(this).attr('id');
	    console.log("heart-click");
	
	    // 빈하트를 눌렀을때
	    if($(this).children('span').attr('class') == "glyphicon glyphicon-heart-empty"){
	        console.log("빈하트 클릭" + no);
	
	        $.ajax({
	            url : 'saveHeart.do',
	            type : 'get',
	            data : {
	                listNumber : no,
	            },
	            success : function(likeCount) {
	                //페이지 새로고침
						alert(likeCount);
	                /* let heart = likeCount.listLike; */
	
	                // 페이지에 하트수 갱신
	                
	                $('#heart'+no).text(heart);
	
	                console.log("하트추가 성공");
	                console.log(likeCount);
	            },
	            error : function(err) {
	                alert('서버 에러');
	                console.log(err);
	            }
	        });
	        console.log("꽉찬하트로 바껴라!");
	
	        // 꽉찬하트로 바꾸기
	        $(this).children('span').attr('class','glyphicon glyphicon-heart') 
	        
	        
	    // 꽉찬 하트를 눌렀을 때
	    }else if($(this).children('span').attr('class') == "glyphicon glyphicon-heart"){
	        console.log("꽉찬하트 클릭" + no);
	
	        $.ajax({
	            url : 'removeHeart.do',
	            type : 'get',
	            data : {
	            	listNumber : no,
	            },
	            success : function(likeCount) {
	                //페이지 새로고침
	                //document.location.reload(true);
					alert(likeCount);
	                /* let heart = likeCount.listLike; */
	                // 페이지에 하트수 갱신
	                $('#heart'+no).text(heart);
	
	                console.log("하트삭제 성공");
	                console.log(heart);
	            },
	            error : function(err) {
	                alert('서버 에러');
	                console.log(err);
	            }
	        });
	        console.log("빈하트로 바껴라!");
	
	        // 빈하트로 바꾸기
	        $(this).children('span').attr('class','glyphicon glyphicon-heart-empty') 
	    }
	
	
	
	});
	
	
	// 로그인 안한 상태에서 하트를 클릭하면 로그인해야한다는 알림창이 뜹니다.
	// (로그인한 상태인 하트의 <a></a> class명: heart-notlogin)
	$(".heart-notlogin").unbind('click');
	$(".heart-notlogin ").click(function() {
	    alert('로그인 하셔야 하트를 누를수 있습니다!');
	});
});
</script>
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
							<a href="totalbookmark.do" class="primary-btn"><i class="fa-solid fa-utensils"></i>&nbsp;&nbsp;맛집 리스트</a> 
							<a href="mylist.do" class="login-btn"><i class="fa fa-user"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
	</header>
	<!-- Header Section End -->



	<!-- Listing Section Begin -->
	<section class=" nice-scroll nuguri">
<!-------------------------------------------------------------------------------------------------------------  -->	
	    <%-- <div id='btnl'>
		 <a href="UpdateLike.do?listNumber=<%=number %>  " name="btn1" class="btn1">
					<span class="glyphicon glyphicon-heart" aria-hidden="true" ></span></a>
		</div> --%>
<!-------------------------------------------------------------------------------------------------------  -->		
	<c:forEach var="tmp" items="${bookmarkList }" begin='0' end='0'>
	<c:choose>
    <%-- 로그인 상태일때 - 하트 클릭 되게 --%>
    <c:when test="${not empty sessionScope.lognick}">
        <c:choose>
            <c:when test="${empty tmp.hno}">
                <%-- 빈 하트일때 --%>
                <div id='btnl'>  <a id="${tmp.listNumber }" href="javascript:"
                	
                    class="heart-click heart_icon${tmp.listNumber }"><span class="glyphicon glyphicon-heart-empty" aria-hidden="true" ></span></a>  좋아요
                </div>
            </c:when>
            <c:otherwise>
                <%-- 꽉찬 하트일때 --%>
                <div id='btnl'> <a id="${tmp.listNumber }" href="javascript:"
                    class="heart-click heart_icon${tmp.listNumber }"><span class="glyphicon glyphicon-heart" aria-hidden="true" ></span></a>
                </div>
            </c:otherwise>
        </c:choose>
    </c:when>
    <%-- 로그인 상태가 아닐때  - 하트클릭 안되게 --%>
    <c:otherwise>
        <div id='btnl'> <a href="javascript:" class="heart-notlogin">
          <span class="glyphicon glyphicon-heart-empty" aria-hidden="true" ></span>      
        </a>
       </div>
    </c:otherwise>
</c:choose>
<span class="haha" id="heart${tmp.listNumber }">${tmp.hno }</span>	
</c:forEach>
<!--------------------------------------------------------------------------------------------------------------  -->		
		<section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row" >
                    <c:forEach items="${bookmarkList }" var="bookmark" varStatus="status">
                    			
                        <div class="col-lg-6 col-md-6">
                            <div class="blog__item">
                                <a href="listingDetails.do?shopNumber=${bookmark.shopNumber }"><div class="blog__item__pic set-bg" data-setbg="./resources/img/shop/${bookmark.shopRealfname }"></div></a>
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