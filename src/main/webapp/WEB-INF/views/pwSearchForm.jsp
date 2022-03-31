<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="./resources/member/fonts/icomoon/style.css">

    <link rel="stylesheet" href="./resources/member/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./resources/member/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="./resources/member/css/style.css">
    
    <!-- userStyle : 안정은 -->
    <link rel="stylesheet" href="./resources/member/css/userStyle.css">

    <title>비밀번호 찾기</title>
  </head>
  <body>
  	
  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3><strong>비밀번호 찾기</strong></h3>
                 <span class="error_box pwSearch"></span>
                  <p class="mb-4"></p>
                </div>
                <form id="" action="pwSearch" method="post" name="">
                
                <!-- EMAIL -->
                  <div class="form-group first">
                    	<label for="memberEmail">이메일</label>
                    	<input type="email" class="form-control" id="memberEmail" name="memberEmail">
                  </div>
                  
                 <!-- NAME -->
                  <div class="form-group last mb-4">
                    <label for="member_name">이름&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="text" class="form-control" id="member_name" name="member_name">
                  </div>
                  
                  <!-- TEL -->
                  <div class="form-group last mb-4">
                    	<label for="member_tel">휴대전화&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    	<input type="tel" class="form-control" id="member_tel" name="member_tel">
                  </div>
                  
                  <!-- TEL -->
                  <div class="form-group last mb-4">
                  	<div class="email_check col-md-9">
   	                	<label for="" >인증번호</label>
       	            	<input type="text" class="form-control" id="">
           	      	</div>
   	      			<div class='email_check col-md-3'>
                   		<button type="button" id="btn_pwSearch"class="btn_check btn-pill btn-danger"><span class="text-white btn_text">중복확인</span></button>
                	</div>
                  </div>
                  
                  <!-- TEL -->
                  <div class="form-group last mb-4">
                  	<div class="email_check col-md-9">
   	                	<label for="" >인증번호</label>
       	            	<input type="text" class="form-control" id="">
           	      	</div>
   	      			<div class='email_check col-md-3'>
                   		<button type="button" id="btn_pwSearch"class="btn_check btn-pill btn-danger"><span class="text-white btn_text">중복확인</span></button>
                	</div>
                  </div>
                  
                  <!-- BTN PW CHANGE -->              
                  <input type="submit" value="비밀번호 재설정" class="btn btn-pill text-white btn-block btn-danger">
                  <div class="d-flex mb-5 align-items-center">
                    <label class="control control--checkbox mb-0">
                    	<span class="caption"></span>
                    </label>
                    
                    <!-- BTN LOGIN -->
                    <span class="ml-auto"><a href="loginForm.do" class="forgot-pass">로그인 하기</a></span> 
                  </div>

                </form>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>


  
  
    <script src="./resources/member/js/jquery-3.3.1.min.js"></script>
    <script src="./resources/member/js/popper.min.js"></script>
    <script src="./resources/member/js/bootstrap.min.js"></script>
    <script src="./resources/member/js/main.js"></script>
    <script src="./resources/member/js/member.js"></script>
  </body>
</html>