<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Directing | Template</title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <style type="text/css">
    
   
 /*----------모달관련된거--------신고기능 */
html,body {height:100%; margin:0; display: block;z-index: 100;}
.mw {position:fixed;/* position:static */;top:30%;left:30%;width:100%;height:100%;display:none;z-index:99999;}
.mw .bg {position:fixed;top:0;left:0;width:100%;height:100%;background:#000;opacity:.5;/* filter:alpha(opacity=50) */; z-index: 105000;}
.mw .fg {position:absolute;top:40%;left:40%;width:400px;height:260px;margin:-100px 0 0 -200px;padding:20px;border:3px solid #ccc;background:#fff; z-index: 105000; }
        
        
        .modal-button{ background: #fff; border: 0; outline: 0; font-size: 15px;  color: #323232;} 
        .report{
            height: 400px;
           
        }
        .modalchang{
            height: 400px;
            width: 600px;
        }
        .report_op{
            width: 365px;
            height: 150px;
        }
         /*----------모달관련된거--------신고기능 */
</style>
    
    
    <script type="text/javascript">
        $(function(){
           
            $('.modal-button').click(function(){
                $('this').css({
                  'z-index': 105000
                })
            });
            
            /* 마이페이지 이동*/        
               $('.login-btn').click(function(){
               
               location.href = 'review.html';
               
               
           })
    
            
            
        });
        
        
        
       
        
        
        
    </script>
    
    

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    
    
    
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
                        <a href="./index.html"><img src="resources/img/logo.png" alt=""></a>
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
    <section class="listing-hero set-bg" data-setbg="resources/img/listing/details/listing-hero.jpg">
       
      
           <c:forEach items="${shopInfo1}" var='shopInfo1'> 
        <div class="container">
        
            <div class="row">
                <div class="col-lg-8">
                    <div class="listing__hero__option">
                        <div class="listing__hero__icon">
                            <img src="resources/img/listing/details/ld-icon.png" alt="">
                        </div>
                        <div class="listing__hero__text">
                            <h2>${shopInfo1.SHOPTITLE  }</h2>
                       
                            <div class="listing__hero__widget">
                               
                            </div>
                            <p><span class="icon_pin_alt"></span> ${shopInfo1.SHOPADDRESS } </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="listing__hero__btns">
                      
                        <a href="#" class="primary-btn"><i class="fa fa-bookmark"></i> 추가하기</a>
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
                       <c:forEach items="${shopInfo1}" var='shopInfo1'> 
                        <div class="listing__details__about">
                            <h4>가게 소개</h4>
                             <p>${shopInfo1.SHOPCONTENT }</p>
                           <!--  <p>The judges are the most influential global personalities from hospitality, design and
                                lifestyle media and have previously included the Editor in Chief of Wallpaper*, Marcus
                                Wareing and Thomas Heatherwick.
                                The Awards are followed by over 40,000 of the most influential architects, designers,
                                hospitality professionals and lifestyle media from around the globe.</p> -->
                        </div>
                        </c:forEach>
                        <div class="listing__details__gallery">
                            <h4>Gallery</h4>
                            <div class="listing__details__gallery__pic">
                                <div class="listing__details__gallery__item">
                                    <img class="listing__details__gallery__item__large"
                                        src="resources/img/listing/details/listing-details-1.jpg" alt="">
                                    <span><i class="fa fa-camera"></i> 170 Image</span>
                                </div>
                                <div class="listing__details__gallery__slider owl-carousel">
                                    <img data-imgbigurl="img/listing/details/listing-details-1.jpg"
                                        src="resources/img/listing/details/thumb-1.jpg" alt="">
                                    <img data-imgbigurl="img/listing/details/listing-details-1.jpg"
                                        src="resources/img/listing/details/thumb-2.jpg" alt="">
                                    <img data-imgbigurl="img/listing/details/listing-details-1.jpg"
                                        src="resources/img/listing/details/thumb-3.jpg" alt="">
                                    <img data-imgbigurl="img/listing/details/listing-details-1.jpg"
                                        src="resources/img/listing/details/thumb-4.jpg" alt="">
                                </div>
                            </div>
                        </div>
                   
                       
                         <c:forEach items="${reviewInfo}" var='reviewInfo'> 
                        <div class="listing__details__comment">
                            <h4>리뷰</h4>
                            <div class="listing__details__comment__item">
                                <div class="listing__details__comment__item__pic">
                                    <img src="resources/img/listing/details/comment.png" alt="">
                                </div>
                                <div class="listing__details__comment__item__text">
                                    <div class="listing__details__comment__item__rating">
                                      <h>${reviewInfo.REVIEWGRADE }</h>
                                      <img width='20' height='20' src="resources/img/face/1.png">
                                      
                                    </div>
                                    <span>March 22, 2019</span>
                                    <h5>${reviewInfo.REVIEWDATE }</h5>
                                    <p>${reviewInfo.REVIEWCONTENT }</p>
                                        <img width="180" src="resources/img/listing/list-1.jpg">
                                        <img width="180" src="resources/img/listing/list-2.jpg">
                                        <img width="180" src="resources/img/listing/list-3.jpg">
                                    <ul>
                                       <!-- <li><i class="fa fa-hand-o-right"></i> Like</li>-->
                                        <li><i class="fa fa-share-square-o"></i>    <button type="text" class="modal-button" onClick="document.getElementById('mw_temp').style.display='block'">신고하기</button>     
                                         <div id="mw_temp" class="mw modalchang">
                <div class="bg"><!--이란에는 내용을 넣지 마십시오.--></div>
                <form>
                <div class="fg modalchang">
                    <p>신고하실 내용을 적어주세요.</p>
                    <textarea class="report_op" > </textarea>
                <button type="submit" class="btn btn-info">제출</button>
                  <button onclick="document.getElementById('mw_temp').style.display='none'" type="button" class="btn btn-danger">창닫기</button>
                    </div>
                    </form>
                </div>
                                          </li>
                                    </ul>
                                    
                                </div>
                            </div>
                        </div>
                        
                        </c:forEach>
                        <div class="listing__details__review">
                            <h4>리뷰 작성</h4>
                            <form action="#" method="post">
                               <!-- <input type="text" placeholder="Name">
                                <input type="text" placeholder="Email">-->
                                <textarea placeholder="Review"></textarea>
                                
                                
                                <select name=''>
                                  <option value='' selected>-- 맛평가 --</option>
                                  <option value=''>맛있어요</option>
                                  <option value=''>보통이에요</option>
                                  <option value=''>맛없어요</option>
                                </select>
                                
                      <br/><br/>          
                      <br/><br/>          
                            
					<h4>add image</h4>
					<input type="file" name='file' accept= 'image/*'
					 bgcolor="orange">
				
                                
                                <button type="submit" class="site-btn">Submit Now</button>
                            </form>
                        </div>
                    </div>
                </div>
                
                
               
                
                
                 <c:forEach items="${shopInfo1}" var='shopInfo1'> 
                <div class="col-lg-4">
                    <div class="listing__sidebar">
                        <div class="listing__sidebar__contact">
                            <div class="listing__sidebar__contact__map">
                            
                                <div id="map" style="width: 100%; height: 14em"></div>

                                <script
                                  type="text/javascript"
                                  src="//dapi.kakao.com/v2/maps/sdk.js?appkey=05fe72ea73cecbaa3ca941aad15b2755&libraries=services"
                                ></script>
                                <script>
                                  var mapContainer = document.getElementById("map"), // 지도를 표시할 div
                                    mapOption = {
                                      center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                                      level: 3, // 지도의 확대 레벨
                                    };
                            
                                  var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
                            
                            var geocoder = new kakao.maps.services.Geocoder();
                            
                                  geocoder.addressSearch(
                                    "서울시 강남구 일원동 광평로 10길 15",
                                    function (result, status) {
                                      // 정상적으로 검색이 완료됐으면
                                      if (status === kakao.maps.services.Status.OK) {
                                        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                            
                                        // 결과값으로 받은 위치를 마커로 표시합니다
                                        var marker = new kakao.maps.Marker({
                                          map: map,
                                          position: coords,
                                        });
                            
                                        // 인포윈도우로 장소에 대한 설명을 표시합니다
                                        var infowindow = new kakao.maps.InfoWindow({
                                          content:
                                            '<div style="width:150px;text-align:center;padding:6px 0;">집</div>',
                                        });
                                        infowindow.open(map, marker);
                            
                                        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                        map.setCenter(coords);
                                      }
                                    }
                                  );
                            
                                </script>
                            

                           
                            </div>
                            <div class="listing__sidebar__contact__text">
                            <br/>
                                <h5>상세정보</h5>
                                <br/>
                                <ul>
                               
                                
                                	<li><span class=""><i class="fa fa-home"></i></span> ${shopInfo1.SHOPTITLE }<hr/></li> 
                                	<li><span class=""><i class="fa fa-info-circle"></i></span> ${shopInfo1.SHOPHOLIDAY }<hr/></li>
                                	<li><span class=""><i class="fa fa-calendar"></i></span> ${shopInfo1.SHOPTIME }<hr/></li>
                                	<li> <span class=""><i class="fa fa-krw"></i></span> ${shopInfo1.SHOPPRICERANGE }<hr/></li>
                                	<li> <span class=""><i class="fa fa-car"></i></span> ${shopInfo1.SHOPPARK }<hr/></li>
                                    <li><span class="icon_pin_alt"></span> ${shopInfo1.SHOPADDRESS }<hr/></li>
                                    <li><span class="icon_phone"></span> ${shopInfo1.SHOPTEL }<hr/></li>
                                  	
                                </ul>
                               
                            </div>
                            <div class="listing__sidebar__working__hours">
                            <h4>메뉴</h4>
                            <ul>
                                <li>${shopInfo1.MENUNAME } <span>${shopInfo1.MENUPRICE }</span></li>
                                
                            </ul>
                        </div>
                        </div>
                       
                    </div>
                </div>
                 </c:forEach>
            </div>
        </div>
               
        
    </section>
    <hr/>
   

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="resources/img/footer-logo.png" alt=""></a>
                        </div>
                        <p>Challenging the way things have always been done can lead to creative new options that reward
                            you.</p>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 col-md-6">
                    <div class="footer__address">
                        <ul>
                            <li>
                                <span>Call Us:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Email:</span>
                                <p>info.colorlib@gmail .com</p>
                            </li>
                            <li>
                                <span>Fax:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Connect Us:</span>
                                <div class="footer__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-skype"></i></a>
                                </div>
                            </li>
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
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                        <div class="footer__copyright__links">
                            <a href="#">Terms</a>
                            <a href="#">Privacy Policy</a>
                            <a href="#">Cookie Policy</a>
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

</body>

</html>