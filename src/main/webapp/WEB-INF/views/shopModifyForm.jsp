<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 파일 연동시키기 위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자페이지 - 회원리스트 - 가게수정</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <!-- 파일 내 CSS 연결 -->
        <link href="${path}/resources/manager/css/styles.css" rel="stylesheet" />
        <!-- 내부 CSS -->
        <style type="text/css">
        	.jb-600 {
        		font-weight: 600;
        	}
        	.jb-1000 {
        		font-weight: 1000;
        	}
        	.ps-2 {
        		padding: 2%;
        	}
        </style>
        
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-light bg-light">
            <!-- navbar 로고 -- 이미지파일 연결 -->
            <a class="navbar-brand ps-3" href="index.html"><img src="${path}/resources/manager/img/footer-logo.png" alt=""></a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- 로그인 버튼 위치때문에 유지 -- 원래는 검색바 -->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- 왼쪽 슬라이드 네비바 -->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">메인</div>
                            <a class="nav-link" href="dashboard.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                대시보드
                            </a>
                            <div class="sb-sidenav-menu-heading">목차</div>
                            <a class="nav-link" href="charts.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                차트
                            </a>
                            <a class="nav-link" href="memberList.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                회원리스트
                            </a>
                            <a class="nav-link" href="shopList.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                가게리스트
                            </a>
                            <a class="nav-link" href="reportList.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                신고리스트
                            </a>
                        </div>
                    </div>
                    <!-- 맨 아래 로그인 확인 창 -->
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <!-- 메인 -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                	<!-- 위쪽 타이틀 -->
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4 jb-1000">가게 수정</h3></div>
                                    <div class="card-body">
                                    	<!-- form -->
                                        <form>
                                        	<div class="form-floating mb-3">
                                                <input class="form-control" id="inputShopName" type="text" placeholder="name@example.com" />
                                                <label for="inputShopName">상호명</label>
                                            </div>
                                             <div class="row mb-3">
                                                <div class="col-md-9">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="sample4_postcode" type="text" placeholder="우편번호" />
                                                        <label for="inputFirstName">우편번호</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                	<!-- 주소 Api 연결 버튼 -->
                                                    <div class="d-grid"><a class="btn btn-warning btn-lg btn-block" onclick="sample4_execDaumPostcode()">주소찾기</a></div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="sample4_roadAddress" type="text" placeholder="도로명주소" />
                                                <label for="inputShopAddressDtail">도로명주소</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="sample4_jibunAddress" type="text" placeholder="지번주소" />
                                                <label for="inputShopAddressDtail">지번주소</label>
                                            </div>
                                            <span id="guide" style="color:#999;display:none"></span>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="sample4_detailAddress" type="text" placeholder="상세주소" />
                                                <label for="inputShopAddressDtail">상세주소</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="sample4_extraAddress" type="text" placeholder="참고항목" />
                                                <label for="inputShopAddressDtail">참고항목</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputShopTel" type="tel" placeholder="name@example.com" />
                                                <label for="inputShopTel">전화번호</label>
                                            </div>
                                            <div class="mb-3">
                                                <select class="form-select ps-2">
                                                	<option>가격대</option>
                                                	<option>1만원 미만</option>
                                                	<option>1만원 이상 3만원 미만</option>
                                                	<option>3만원 이상 5만원 미만</option>
                                                	<option>5만원 이상</option>
                                                </select>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="radio-inline" for="foodType">
                                                <label class="jb-600">음식유형</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                <input type="radio" name="foodType"/> 한식&nbsp;&nbsp;&nbsp;
	                                                <input type="radio" name="foodType"/> 양식&nbsp;&nbsp;&nbsp;
	                                                <input type="radio" name="foodType"/> 중식&nbsp;&nbsp;&nbsp;
	                                                <input type="radio" name="foodType"/> 일식&nbsp;&nbsp;&nbsp;
	                                                <input type="radio" name="foodType"/> 세계음식&nbsp;&nbsp;&nbsp;
	                                                <input type="radio" name="foodType"/> 뷔페&nbsp;&nbsp;&nbsp;
	                                                <input type="radio" name="foodType"/> 카페&nbsp;&nbsp;&nbsp;
	                                                <input type="radio" name="foodType"/> 주점&nbsp;&nbsp;&nbsp;
                                                </label>
                                            </div>
                                            <div class="mb-3">
                                                <select class="form-select ps-2">
                                                	<option>주차</option>
                                                	<option>유료주차 가능</option>
                                                	<option>무료주차 가능</option>
                                                	<option>주차 불가능</option>
                                                </select>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputShopTime" type="text" placeholder="name@example.com" />
                                                <label for="inputShopTime">영업시간</label>
                                            </div>
                                            <div class="row mb-3">
                                            	<div class="col-md-10 col-md-offset-10">
                                                <label class="radio-inline" for="holiday">
                                                	<label class="jb-600">휴일</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                <input type="checkbox" name="holiday"/> 월&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                <input type="checkbox" name="holiday"/> 화&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                <input type="checkbox" name="holiday"/> 수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                <input type="checkbox" name="holiday"/> 목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                <input type="checkbox" name="holiday"/> 금&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                <input type="checkbox" name="holiday"/> 토&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                <input type="checkbox" name="holiday"/> 일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </label>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <textarea class="form-control" id="content" placeholder="name@example.com" style="height: 100px" ></textarea>
                                                <label for="content">설명</label>
                                            </div>
                                            <div class="form-group mb-3">
											    <label for="exampleInputFile" class="jb-600">파일 업로드</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											    <input type="file" id="exampleInputFile">
											</div>
											<!-- 메뉴 -->
											<div class="row mb-3">
												<div class="col-md-1">
													<label class="jb-600">메뉴</label>
												</div>
                                                <div class="col-md-5">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputMenuName" type="text" placeholder="Enter your first name" />
                                                        <label for="inputMenuName">메뉴명</label>
                                                    </div>
                                                </div>
                                                 <div class="col-md-4">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputMenuPrice" type="text" placeholder="Enter your first name" />
                                                        <label for="inputMenuPrice">메뉴가격</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="d-grid"><a class="btn btn-warning btn-lg btn-block" >추가</a></div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
												<div class="col-md-1">
													<label class="jb-600"></label>
												</div>
                                                <div class="col-md-5">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputMenuName" type="text" placeholder="Enter your first name" />
                                                        <label for="inputMenuName">메뉴명</label>
                                                    </div>
                                                </div>
                                                 <div class="col-md-4">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputMenuPrice" type="text" placeholder="Enter your first name" />
                                                        <label for="inputMenuPrice">메뉴가격</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="d-grid"><a class="btn btn-warning btn-lg btn-block" >삭제</a></div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-warning btn-block" href="shopList.do">수정</a></div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- footer -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!-- 부트스트랩 -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <!-- 파일 내 스크립트 연동 -->
        <script src="${path}/resources/manager/js/scripts.js"></script>
        <!-- datatable 연동 -->
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <!-- 파일 내 테이블 연동 -->
        <script src="${path}/resources/manager/js/datatables-simple-demo.js"></script>
        <!-- 주소 Api연동 -->
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <!-- 파일 내 주소 스크립트 연동 -->
        <script src="${path}/resources/manager/js/addressApiEx.js"></script>
    </body>
</html>