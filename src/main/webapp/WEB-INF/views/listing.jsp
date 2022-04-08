<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>

<!DOCTYPE html>
<html lang="zxx">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="Directing Template" />
    <meta name="keywords" content="Directing, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Directing | Template</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
      rel="stylesheet"
    />

    <!-- Css Styles -->
    <link
      rel="stylesheet"
      href="./resources/css/bootstrap.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/font-awesome.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/elegant-icons.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/flaticon.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/nice-select.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/barfiller.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/magnific-popup.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/jquery-ui.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/owl.carousel.min.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="./resources/css/slicknav.min.css"
      type="text/css"
    />
    <link rel="stylesheet" href="./resources/css/style.css" type="text/css" />

    <style>
      ul {
        list-style: none;
        padding-left: 0px;
      }
    </style>

    <style>
      .customoverlay {
        position: relative;
        bottom: 85px;
        border-radius: 6px;
        border: 1px solid #ccc;
        border-bottom: 2px solid #ddd;
        float: left;
      }

      .customoverlay:nth-of-type(n) {
        border: 0;
        box-shadow: 0px 1px 2px #888;
      }

      .customoverlay a {
        display: block;
        text-decoration: none;
        color: #000;
        text-align: center;
        border-radius: 6px;
        font-size: 14px;
        font-weight: bold;
        overflow: hidden;
        background: #d95050;
        background: #d95050
          url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
          no-repeat right 14px center;
      }

      .customoverlay .title {
        display: block;
        text-align: center;
        background: #fff;
        margin-right: 35px;
        padding: 10px 15px;
        font-size: 14px;
        font-weight: bold;
      }

      .customoverlay:after {
        content: "";
        position: absolute;
        margin-left: -12px;
        left: 50%;
        bottom: -12px;
        width: 22px;
        height: 12px;
        background: url("https://t1.daumcdn.net/local./resources/img/localimages/07/mapapidoc/vertex_white.png");
      }
    </style>
  </head>

  <!--직접 만든 css-->
  <link rel="stylesheet" href="./resources/css/yang.css" type="text/css" />

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
              <a href="./index.html"
                ><img src="./resources/img/footer-logo.png" alt=""
              /></a>
            </div>
          </div>
          <div class="col-lg-9 col-md-9">
            <div class="header__nav">
              <div class="header__menu__right">
                <a href="#" class="primary-btn"
                  ><i class="fa"></i>맛집 리스트</a
                >
                <a href="dashboard.html" class="login-btn"
                  ><i class="fa fa-user"></i
                ></a>
              </div>
            </div>
          </div>
        </div>
        <div id="mobile-menu-wrap"></div>
      </div>
    </header>
    <!-- Header Section End -->

    <!-- Filter Begin -->
    <div class="filter nice-scroll">
      <div class="filter__title">
        <h5>
          <i class="fa fa-filter"></i>
          <span id="filter-modal-open">Filter</span>
        </h5>
      </div>
      <hr />
      <form action="listingFilter2.do">
      <div class="filter__search">
        <input
          id="search"
          name="query2"
          type="text"
          placeholder="검색값"
          value="${param.query}"
        />
      </div>
      <div class="filter__location">
        <input type="text" placeholder="위치" />
        <i class="fa fa-map-marker"></i>
      </div>
      
      <div class="filter__radius">
        <p>반경 :</p>
        <div class="price-range-wrap">
          <div
            class="price-range-radius ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
          >
            <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
            <span
              tabindex="0"
              class="ui-slider-handle ui-corner-all ui-state-default"
            ></span>
          </div>
          <div class="range-slider">
            <div class="price-input">
              <input type="text" id="radius"/>
            </div>
          </div>
        </div>
      </div>

      <div class="filter__tags">
        <h6>선택</h6>
 
        <label for="parking">
          주차 <input type="checkbox" id="parking"/>
          <span class="checkmark"></span>
        </label>
        <label for="open">
          영업중 <input type="checkbox" id="open"/>
          <span class="checkmark"></span>
        </label>
      </div>
      
		<div class="filter__btns">
			<button id="filter-search" type="submit" class="filter__reset">
				검색
			</button>
		</div>
		<div class="filter__btns">
        <button type="submit" class="filter__reset">전체 선택 취소</button>
      </div>
      <input id="myLat" name="myLat" hidden="hidden"/>
      <input id="myLon" name="myLon" hidden="hidden"/>
      <input id="radiusInput" name= "radiusInput" hidden="hidden"/>
      <input name="koreanFood" value="${param.koreanFood}" hidden="hidden"/>
      <input name="japaneseFood" value="${param.japaneseFood}" hidden="hidden"/>
      <input name="chineseFood" value="${param.chineseFood}" hidden="hidden"/>
      <input name="westernFood" value="${param.westernFood}" hidden="hidden"/>
      <input name="worldFood" value="${param.worldFood}" hidden="hidden"/>
      <input name="buffet" value="${param.buffet}" hidden="hidden"/>
      <input name="cafe" value="${param.cafe}" hidden="hidden"/>
      <input name="pup" value="${param.pup}" hidden="hidden"/>
    
      <!--가격대 value 들어가는 곳-->
      <input name="manwonLess" value="${param.manwonLess}" hidden="hidden"/> 
      <input name="manwonMore" value="${param.manwonMore}" hidden="hidden"/>
      <input name="threeManwonMore" value="${param.threeManwonMore}" hidden="hidden"/>
      <input name="fiveManwonMore"  value="${param.fiveManwonMore}" hidden="hidden"/>
      
      <!-- 주소 value 들어가는곳 -->
      <input name="shopAddressSi"  value="${param.shopAddressSi}" hidden="hidden"/>
      <input name="shopAddressGu"  value="${param.shopAddressGu}" hidden="hidden"/>
      <input name="parking" id="parkinInput"/>
      <input name="open" id="openInput"/>
      </form>
    </div>
    <!-- Filter End -->

    <!-- Listing Section Begin -->
    <section class="listing nice-scroll">
      <!--필터 모달창-->
      <div class="filter-modal">
        <div class="modal_body">
          <img id="closeImg" src="./resources/img/modal/closeImg.jpg" />
          <div>
            <h4>나만의 맛집 고르기</h4>
            <hr />
            <div class="food_kind_all">
              <img
                id="koreanFood"
                class="food_kind"
                src="./resources/img/modal/koreanFood.png"
                value="한식"
              />
              <img
                id="japaneseFood"
                class="food_kind"
                src="./resources/img/modal/japaneseFood.png"
                value="일식"
              />
              <img
                id="chineseFood"
                class="food_kind"
                src="./resources/img/modal/chineseFood.png"
                value="중식"
              />
              <img
                id="westernFood"
                class="food_kind"
                src="./resources/img/modal/westernFood.png"
                value="양식"
              />
              <img
                id="worldFood"
                class="food_kind"
                src="./resources/img/modal/worldFood.png"
                value="세계음식"
              />
              <img
                id="buffet"
                class="food_kind"
                src="./resources/img/modal/buffet.png"
                value="뷔페"
              />
              <img
                id="cafe"
                class="food_kind"
                src="./resources/img/modal/cafe.png"
                value="카페"
              />
              <img
                id="pup"
                class="food_kind"
                src="./resources/img/modal/pup.png"
                value="주점"
              />
            </div>
            <hr />
            <!-- 가격대 -->
            <div class="foodPrice">
              <img
                id="manwonLess"
                class="food_price"
                src="./resources/img/modal/manwonLess.png"
                value="1만원이하"
              />
              <img
                id="manwonMore"
                class="food_price"
                src="./resources/img/modal/manwonMore.png"
                value="1만원이상"
              />
              <img
                id="threeManwonMore"
                class="food_price"
                src="./resources/img/modal/threeManwonMore.png"
                value="3만원이상"
              />
              <img
                id="fiveManwonMore"
                class="food_price"
                src="./resources/img/modal/fiveManwonMore.png"
                value="5만원이상"
              />
            </div>
            <hr />
            <!--모달창 지역 구분-->
            <div class="pop-up-area-container addressSi">
              <input
                class="btn btn-pop-up pop-up-area"
                id="seoul"
                type="button"
                value="서울"
              />
              <input
                class="btn btn-pop-up pop-up-area"
                id="gyeonggido"
                type="button"
                value="경기도"
              />
              <input
                class="btn btn-pop-up pop-up-area"
                type="button"
                value="경기도"
              />
              <input
                class="btn btn-pop-up pop-up-area"
                type="button"
                value="인천"
              />
              <input
                class="btn btn-pop-up pop-up-area"
                type="button"
                value="대구"
              />
            </div>
            <hr />
            <div class="addressGu">
              <div class="seoul">
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="종로구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="중구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="용산구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="성동구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="광진구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="동대문구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="중랑구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="성북구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="강북구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="도봉구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="노원구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="은평구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="서대문구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="마포구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="양천구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="강서구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="구로구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="금천구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="영등포구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="동작구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="관악구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="서초구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="강남구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="송파구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="강동구"
                />
              </div>
              <div class="gyeonggido">
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="양천구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="강서구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="금천구"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="안암"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="안암"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="안암"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="안암"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="안암"
                />
                <input
                  class="btn btn-pop-up pop-up-dongnae"
                  type="button"
                  value="안암"
                />
              </div>
            </div>
            <hr />
            <form action="listingFilter.do">
              <input
                id="query"
                name="query"
                value="${param.query}"
                hidden="hidden"
              />
              <input
                type="submit"
                class="btn btn-pop-up pop-up-search"
                value="검색"
              />
              <input id="koreanFoodInput" name="koreanFood" hidden="hidden" />
              <input
                id="japaneseFoodInput"
                name="japaneseFood"
                hidden="hidden"
              />
              <input id="chineseFoodInput" name="chineseFood" hidden="hidden" />
              <input id="westernFoodInput" name="westernFood" hidden="hidden" />
              <input id="worldFoodInput" name="worldFood" hidden="hidden" />
              <input id="buffetInput" name="buffet" hidden="hidden" />
              <input id="cafeInput" name="cafe" hidden="hidden" />
              <input id="pupInput" name="pup" hidden="hidden" />
              <!-- 주소 value 들어가는 곳 -->
              <input
                id="addressSi"
                name="shopAddressSi"
                hidden="hidden"
              />
              <input id="addressGu" name="shopAddressGu" hidden="hidden" />
              <!--가격대 value 들어가는 곳-->
              <input id="manwonLessInput" name="manwonLess" hidden="hidden" />
              <input id="manwonMoreInput" name="manwonMore" hidden="hidden" />
              <input
                id="threeManwonMoreInput"
                name="threeManwonMore"
                hidden="hidden"
              />
              <input
                id="fiveManwonMoreInput"
                name="fiveManwonMore"
                hidden="hidden"
              />
            </form>
          </div>
        </div>
      </div>

      <div class="listing__text__top">
        <div class="listing__text__top__left">
          <h5>Restaurants</h5>
           
          <span>검색 수 : <input id="listSize" value="${listSize}"/></span>
        </div>
        <div class="listing__text__top__right">
          Nearby <i class="fa fa-sort-amount-asc"></i>
        </div>
      </div>

      <div class="listing__list">
        <c:forEach items="${shopPageList}" var="shop">
        
          <div class="listing__item">
            <!-- 여기에 img값 가지고와야함 동적으로 -->
            <div
              class="listing__item__pic set-bg"
              data-setbg="./resources/img/listing/list-1.jpg"
            >
              <div class="listing__item__pic__btns">
                <a href="#"><span class="icon_zoom-in_alt"></span></a>
                <a href="#"><span class="icon_heart_alt"></span></a>
              </div>
            </div>
            <div class="listing__item__text">
              <div class="listing__item__text__inside">
                <h5 class="shopTitle">${shop.shopTitle}</h5>
                <div class="listing__item__text__rating">
                  <!-- 이쪽에 별 대신 맛평가 들어가야함-->
                  <div class="listing__item__rating__star">
                    <span class="icon_star"></span>
                    <span class="icon_star"></span>
                    <span class="icon_star"></span>
                    <span class="icon_star"></span>
                    <span class="icon_star-half_alt"></span>
                  </div>
                  <!-- 가격대 가지고와야함-->
                  <h6>${shop.shopPriceRange}</h6>
                </div>
                <ul>
                  <!--주소 이름 가지고와야함 ㅅㅂ-->
                  <li class="shopAddress">
                    <span class="icon_pin_alt"></span>${shop.shopAddress}
                  </li>
                  <li><span class="icon_phone"></span> ${shop.shopTel}</li>
                </ul>
              </div>
              <div class="listing__item__text__info">
                <div class="listing__item__text__info__left">
                  <img
                    src="./resources/img/listing/list_small_icon-1.png"
                    alt=""
                  />
                  <span>${shop.shopFood} </span>
                </div>
                <div class="listing__item__text__info__right">
                  영업중인걸 어케 표시할까
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
        
      </div>
    </section>
    
    <!-- Listing Section End -->

    <!--카카오 지도 연결-->
    <!-- Map Begin -->
    <div class="listing__map">
      <div id="map" style="width: 100%; height: 60em"></div>
    </div>
    <!-- Map End -->

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

    <!--직접 만든 js-->
    <script src="./resources/js/yang.js"></script>
    <!-- <script src="./resources/js/kakaoMap.js"></script> -->

    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50853ea4c563d3b84d44fed07758d510&libraries=services"
    ></script>
    <script>
      var mapContainer = document.getElementById("map");
      mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 5, // 지도의 확대 레벨
      };

      var map = new daum.maps.Map(mapContainer, mapOption);

      // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
      if (navigator.geolocation) {
        // GeoLocation을 이용해서 현재 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function (position) {
          var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도

          var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
          console.log("myLat " + lat);
          console.log("myLon " + lon);
          $("#myLat").val(lat);
          $("#myLon").val(lon);
          // 마커와 인포윈도우를 표시합니다
          displayMarker(locPosition, message);
        });
      } else {
        // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

        var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),
          message = "geolocation을 사용할수 없어요..";

        displayMarker(locPosition, message);
      }
      //마커 이미지
      // var imageSrc =
      //     "https://t1.daumcdn.net/local./resources/img/localimages/07/mapapidoc/markerStar.png", // 마커이미지의 주소입니다
      //   imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
      //   imageOption = { offset: new kakao.maps.Point(27, 69) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

      var geocoder = new daum.maps.services.Geocoder();

      var listData = [];
      var listShop = [];

      //DB에 있는 shopAddress가 들어옴
      $(".shopAddress").each(function name(params) {
        var shopName = $(this).text();

        listData.push(shopName);
      });

      //DB에 있는 shopTitle이 들어옴
      $(".shopTitle").each(function name(params) {
        var shopTitle = $(this).html();

        listShop.push(shopTitle);
      });

      listData.forEach(function (addr, index) {
        geocoder.addressSearch(addr, function (result, status) {
          if (status === daum.maps.services.Status.OK) {
            // var markerImage = new kakao.maps.MarkerImage(
            //   imageSrc,
            //   imageSize,
            //   imageOption
            // );
            var coords = new daum.maps.LatLng(result[0].y, result[0].x);

            var marker = new daum.maps.Marker({
              map: map,
              position: coords,
              //image: markerImage,
            });
            //마커 위에 올라가는 입력창 초기 이미지
            // var infowindow = new daum.maps.InfoWindow({
            //   content:
            //   '<div style="width:150px;text-align:center;padding:6px 0;">' +
            //   listShop[index] +
            //   "</div>",
            //   disableAutoPan: true,
            // });
            //infowindow.open(map, marker);

            map.setCenter(coords);

            // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            var content =
              '<div class="customoverlay">' +
              '  <a href="" target="_blank">' +
              '    <span class="title">' +
              listShop[index] +
              "</span>" +
              "  </a>" +
              "</div>";

            var position = new kakao.maps.LatLng(result[0].y, result[0].x);
            // 커스텀 오버레이를 생성합니다
            var customOverlay = new kakao.maps.CustomOverlay({
              map: map,
              position: position,
              content: content,
              yAnchor: 0.2,
            });
          }
        });
      });
    </script>
    
       <script>
      $("#filter-search").click(function name(params) {
        var regex = /[^0-9.;\-]/g;
        var result = $("#radius").val().replace(regex, "");
        $("#radiusInput").val(result);
        console.log(result);
      });
    </script>
    	<!-- form tag 지연시간 설정 -->
	<script type="text/javascript">
		$('form').submit(function(e) {
			var form = this;
			e.preventDefault();
			setTimeout(function() {
				form.submit();
			}, 1000); //1초 설정
		});
	</script>
  </body>
</html>
