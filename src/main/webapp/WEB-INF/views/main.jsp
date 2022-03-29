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
    <title>Directing | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

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
    <link rel="stylesheet" href="./resources/css/style4.css" type="text/css">
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
                        <a href="./index.html"><img src="./resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        
                        <div class="header__menu__right">
                           <a href="./about.html" class="primary-btn"><i class="fa fa-plus"></i>맛집리스트</a>
                            <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin 즐겨찾기 베스트-->
    <section class="hero set-bg" data-setbg="./resources/img/main/foodbackground.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero__text">
                        <div class="section-title">
                            <h2>오늘은 무엇을 먹으러 갈까요??</h2>
                            <p>나만의 맛집을 리스트로 ! 아.. 이걸 내가 먹어보았나?</p>
                        </div>
                        <div class="hero__search__form">
                            <form action="#">
                                <input type="text" placeholder="Search...">
                                <div class="select__option">
                                    <select>
                                        <option value="">Choose Categories</option>
                                    </select>
                                </div>
                                <div class="select__option">
                                    <select>
                                        <option value="">Choose Location</option>
                                    </select>
                                </div>
                                <button type="submit">Explore Now</button>
                            </form>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

 
    <!-- Most Search Section Begin -->
    <section class="most-search spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>나만의 맛집 리스트 Best</h2>
                        <p>테마별 나만의 맛집을 추천해 드립니다. </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="most__search__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <span class="flaticon-039-fork"></span>
                                    음식 종류별
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                    <span class="flaticon-017-croissant"></span>
                                    카페 및 베이커리
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                    <span class="flaticon-038-take-away"></span>
                                    지역별
                                </a>
                            </li>
                            
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-1.jpg">
                                            <img src="./resources/img/listing/list_icon-1.png" alt="">
                                            <div class="listing__item__pic__tag">Popular</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Chinese Sausage Restaurant</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                        Philadelphia, Ohio, United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-1.png" alt="">
                                                    <span>Restaurant</span>
                                                </div>
                                                <div class="listing__item__text__info__right">Open Now</div>
                                            </div>f
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-2.jpg">
                                            <img src="./resources/img/listing/list_icon-2.png" alt="">
                                            <div class="listing__item__pic__tag top_rate">Top Rate</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Shrimp floured and fried</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus,
                                                        Georgia(GA), United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-2.png" alt="">
                                                    <span>Food & Drink</span>
                                                </div>
                                                <div class="listing__item__text__info__right closed">Closed</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-3.jpg">
                                            <img src="./resources/img/listing/list_icon-3.png" alt="">
                                            <div class="listing__item__pic__tag">Popular</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Sweet and sour pork ribs</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                        Washington(WA), United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-1.png" alt="">
                                                    <span>Restaurant</span>
                                                </div>
                                                <div class="listing__item__text__info__right">Open Now</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                               
                                
                            </div>
                        </div>
  <!--tab2------------------------------------------------------------------------------------------  -->                      
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-1.jpg">
                                            <img src="./resources/img/listing/list_icon-1.png" alt="">
                                            <div class="listing__item__pic__tag">Popular</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Chinese Sausage Restaurant</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                        Philadelphia, Ohio, United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-1.png" alt="">
                                                    <span>Restaurant</span>
                                                </div>
                                                <div class="listing__item__text__info__right">Open Now</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-2.jpg">
                                            <img src="./resources/img/listing/list_icon-2.png" alt="">
                                            <div class="listing__item__pic__tag top_rate">Top Rate</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Shrimp floured and fried</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus,
                                                        Georgia(GA), United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-2.png" alt="">
                                                    <span>Food & Drink</span>
                                                </div>
                                                <div class="listing__item__text__info__right closed">Closed</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-3.jpg">
                                            <img src="./resources/img/listing/list_icon-3.png" alt="">
                                            <div class="listing__item__pic__tag">Popular</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Sweet and sour pork ribs</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                        Washington(WA), United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-1.png" alt="">
                                                    <span>Restaurant</span>
                                                </div>
                                                <div class="listing__item__text__info__right">Open Now</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               
                                
                            </div>
                        </div>
                        
  <!--tab3--------------------------------------------------------------------------------------  -->                     
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-3.jpg">
                                            <img src="./resources/img/listing/list_icon-3.png" alt="">
                                            <div class="listing__item__pic__tag">Popular</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Sweet and sour pork ribs</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                        Washington(WA), United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-1.png" alt="">
                                                    <span>Restaurant</span>
                                                </div>
                                                <div class="listing__item__text__info__right">Open Now</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-4.jpg">
                                            <img src="./resources/img/listing/list_icon-4.png" alt="">
                                            <div class="listing__item__pic__tag">Popular</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Crab fried with tamarind</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 14320 Keenes Mill Rd.
                                                        Cottondale, Alabama(AL), United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-3.png" alt="">
                                                    <span>Hotel</span>
                                                </div>
                                                <div class="listing__item__text__info__right closed">Closed</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div class="listing__item__pic set-bg" data-setbg="./resources/img/listing/list-5.jpg">
                                            <img src="./resources/img/listing/list_icon-5.png" alt="">
                                            <div class="listing__item__pic__tag hot_deal">Hot Deal</div>
                                            <div class="listing__item__pic__btns">
                                                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                                <a href="#"><span class="icon_heart_alt"></span></a>
                                            </div>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>Tortoise grilled on salt</h5>
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star">
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star-half_alt"></span>
                                                    </div>
                                                    <h6>$40 - $70</h6>
                                                </div>
                                                <ul>
                                                    <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                        Philadelphia, Ohio, United States</li>
                                                    <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                    <img src="./resources/img/listing/list_small_icon-4.png" alt="">
                                                    <span>Shopping</span>
                                                </div>
                                                <div class="listing__item__text__info__right">Open Now</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Most Search Section End -->


    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            
                
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

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
</body>

</html>