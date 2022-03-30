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

    <title>회원가입 </title>
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
                  <h3>SIGN UP</h3>
               	</div>
               	
               	<!-- FORM -->
                <form id="member_frm" action="memberInsert.do" method="post" name="member_frm">
                
                <!-- NICKNAME -->
                  <div class="form-group first">
                    <label for="memberNickname">닉네임&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="text" class="form-control form_nick" id="memberNickname" name="memberNickname" autofocus > 
                  </div>
                  
                  <!-- EMAIL -->
                  <div class="form-group first">
                  	<div class="email_check col-md-9">
                    	<label for="memberEmail">이메일&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    	<input type="email" class="form-control" id="memberEmail" name="memberEmail">
                    </div>
                    <!-- email_check는 css에서 사용됨 -->
                    <div class='email_check col-md-3'>
                    	<!-- emailCheck.do로 넘어간다. -->
                    	<button type="button" id="btn_emailCheak"class="btn_check btn-pill btn-danger"><span class="text-white btn_text">중복확인</span></button>
                   	</div>
                  </div>
                  
                  <!-- PW -->
                  <div class="form-group">
                    <label for="memberPassword">비밀번호&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="password" class="form-control" id="memberPassword" name="memberPassword" >
                  </div>
                  
                 <!-- PW CHECK -->
                  <div class="form-group last mb-4">
                    <label for="passwordCheck">비밀번호 재확인 &nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="password" class="form-control" id="passwordCheck" >
                  </div>
                  
                  <!-- NAME -->
                  <div class="form-group first">
                    <label for="memberName">이름&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="text" class="form-control" id="memberName" name="memberName" >
                  </div>
                  
                  <!-- BIRTH -->
                  <div class="form-group first">
                    <label for="memberBirth">생년월일&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label> 
                    <input type="date" class="form-control" id="memberBirth" name="memberBirth" required>
                  </div>
                  

                  <!-- TEL -->
                  <div class="form-group first">
                    <label for="memberTel">휴대전화&nbsp; &nbsp; &nbsp; &nbsp;<span class="error_box"></span></label>
                    <input type="tel" class="form-control" id="memberTel" name="memberTel" >
                  </div>
                  
                  <div class="d-flex mb-5 align-items-center">
                    <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption"><a href="#">이용약관</a>에 동의합니다.</span>
                    <input type="checkbox" id="termsService"/>
                    <span class="error_box"></span>
                    <div class="control__indicator"></div>
                  </label>
                    <span class="ml-auto"><a href="loginForm.do" class="forgot-pass">로그인하기</a></span> 
                  </div>

                  <input type="button" value="가입하기" id="btn_signUp" class="btn btn-pill text-white btn-block btn-danger">
                  <!-- <span class="d-block text-center my-4 text-muted"> or register with</span>
                  
                  <div class="social-login text-center">
                    <a href="#" class="facebook">
                      <span class="icon-facebook mr-3"></span> 
                    </a>
                    <a href="#" class="twitter">
                      <span class="icon-twitter mr-3"></span> 
                    </a>
                    <a href="#" class="google">
                      <span class="icon-google mr-3"></span> 
                    </a>
                  </div> -->
                </form>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  	<!-- 안정은 : js추가 -->
    <script src="./resources/member/js/jquery-3.3.1.min.js"></script>
    <script src="./resources/member/js/popper.min.js"></script>
    <script src="./resources/member/js/bootstrap.min.js"></script>
    <script src="./resources/member/js/main.js"></script>
    <script src="./resources/member/js/member.js"></script>
  </body>
</html>