
/**
*	유효성 검사 정규식
 */
var RegexNick = /^[가-힣a-zA-Z0-9]{1,10}$/;
var RegexEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
var RegexPW = /^[a-z0-9_-]{6,18}$/;
var RegexName = /^[가-힣]+$/;
var RegexTel = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{3,4})$/;

// 이메일 중복검사 확인 여부
var emailCheak = false;

// 에러박스 문구
var blank = "필수 입력 사항입니다.";

/*********************************************************************
	이메일 중복 버튼 클릭 이벤트
*/
$('#btn_emailCheak').click(function(){
	$('label[for="memberEmail"] .error_box').html("");
	var memberEmail = $.trim($("#memberEmail").val());
	
	// 입력값이 없을 때 에러박스
	if(memberEmail == ''){

		$('label[for="memberEmail"] .error_box').html(blank);
		return false;

	}
	// 형식에 맞지 않을 때 나오는 에러박스
	if( !RegexEmail.test(memberEmail) ){

		$('label[for="memberEmail"] .error_box').html("이메일 형식이 올바르지 않습니다.");
		return;
	}
	
	// 이메일 중복 검사 - DB와 비교
 	  $.ajax({
    	type : 'post',
    	url : 'emailCheck.do',
    	data : { memberEmail : $('#memberEmail').val() },
    	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
    	success : function(result){
    		
    		// 중복 검사 후 나오는 결과 에러박스에 출력
    		if(result == 'N'){
	        		$('label[for="memberEmail"] .error_box').html("사용할 수 없는 이메일입니다.");
				}else{
	        		$('label[for="memberEmail"] .error_box').css('color','#28a745');
	        		$('label[for="memberEmail"] .error_box').html("사용 가능한 이메일입니다.");
	        		emailCheak = true;
				}
    	},
    	error : function(err){
			alert('실패');
    		console.log(err);
    	}
    }); //end of ajax
}); // end of $('#btn_emailCheak').click


/*********************************************************************
	회원가입 버튼 클릭 -> 필수 입력 사항 + 유효성 검사
*/
$('#btn_signUp').click(function(){

	// input에 입력된 값을 공백제거하고 변수에 담기
	var memberNickname = $.trim($("#memberNickname").val());
	var memberEmail = $.trim($("#memberEmail").val());
	var memberPassword = $.trim($("#memberPassword").val());
	var passwordCheck = $.trim($("#passwordCheck").val());
	var memberName = $.trim($("#memberName").val());
	var memberBirth = $.trim($("#memberBirth").val());
	var memberTel = $.trim($("#memberTel").val());
	
	/* 닉네임 */
	if(memberNickname == ''){
		$('label[for="memberNickname"] .error_box').html(blank);
		$('#memberNickname').focus();
    		return;
		}else{
		$('label[for="memberNickname"] .error_box').html("");
		}		
	
	if( !RegexNick.test(memberNickname) ){

		$('label[for="memberNickname"] .error_box').html("닉네임 형식이 올바르지 않습니다.");
		return;
	}else{
		$('label[for="memberNickname"] .error_box').html("");
		}
	
	
	/* 이메일 */
	if(memberEmail == ''){
		$('label[for="memberEmail"] .error_box').html(blank);
		$('#memberEmail').focus();
    		return;
		}else{
		$('label[for="memberEmail"] .error_box').html("");
		}	
	
	if( !RegexEmail.test(memberEmail) ){

		$('label[for="memberEmail"] .error_box').html("이메일 형식이 올바르지 않습니다.");
		return;
	}else{
		$('label[for="memberEmail"] .error_box').html("");
		}
	
	/* 비밀번호 */
	if(memberPassword == ''){
		$('label[for="memberPassword"] .error_box').html(blank);
		$('#memberPassword').focus();
    		return;
		}else{
		$('label[for="memberPassword"] .error_box').html("");
		}
	
	if( !RegexPW.test(memberPassword) ){

		$('label[for="memberPassword"] .error_box').html("비밀번호는 영문(대소문자)과 숫자를 혼합하여 작성해 주십시오.");
		return;
	}else{
		$('label[for="memberPassword"] .error_box').html("");
		}
	
	/* 비밀번호 재확인 */
	if(passwordCheck == ''){
		$('label[for="passwordCheck"] .error_box').html("필수 입력 사항입니다.");
		$('#passwordCheck').focus();
    		return;
		}else{
		$('label[for="passwordCheck"] .error_box').html("");
		}
	
	
	/* 비밀번호 일치 여부 확인 */
	if(memberPassword != passwordCheck){
		$('label[for="passwordCheck"] .error_box').html("비밀번호가 일치하지 않습니다.");
		$('#passwordCheck').focus();
		return;
	}
	
	/* 이름 */
	if(memberName == ''){
		$('label[for="memberName"] .error_box').html(blank);
		$('#memberName').focus();
    		return;
		}else{
		$('label[for="memberName"] .error_box').html("");
		}
	if( !RegexName.test(memberName) ){

		$('label[for="memberName"] .error_box').html("이름 형식이 올바르지 않습니다.");
		return;
	}else{
		$('label[for="memberName"] .error_box').html("");
		}
		
	/* 생년월일 */
	if(memberBirth == ''){
		$('label[for="memberBirth"] .error_box').html(blank);
		$('#memberBirth').focus();
    		return;
		}else{
		$('label[for="memberBirth"] .error_box').html("");
		}
	
		
	
	/* 휴대전화 */
	if(memberTel == ''){
		$('label[for="memberTel"] .error_box').html(blank);
		$('#memberTel').focus();
    		return false;
		}else{
		$('label[for="memberTel"] .error_box').html("");
		}
	if( !RegexTel.test(memberTel) ){

		$('label[for="memberTel"] .error_box').html("전화번호 형식이 올바르지 않습니다.");
		return;
	}else{
		$('label[for="memberTel"] .error_box').html("");
		}
	
	
	// 이메일 중복 여부 체크 했는지 확인
	if( !emailCheak ){
		$('label[for="memberEmail"] .error_box').html("이메일 중복 여부를 확인해주세요.");
		return;
	}else{
		$('label[for="memberEmail"] .error_box').html("");
	}
	
	//이용약관에 체크 했는지 확인
	if( !$("#termsService").is(':checked') ){
		// 체크 X
		$('#termsService').next().html("이용 약관에 동의해주세요.");
		return;
	}else{
		// 체크 O
		alert("회원가입 성공!");
		document.member_frm.submit();
	}
});
/*********************************************************************
	로그인 버튼 클릭
*/
$('#btnLogin').click(function(){
	var memberEmail = $.trim($("#memberEmail").val());
	var memberPassword = $.trim($("#memberPassword").val());
	
	/* 이메일 */
	if(memberEmail == ''){
		$('#memberEmail').focus();
    		return;
		}
	
	/* 비밀번호 */
	if(memberPassword == ''){
		$('#memberPassword').focus();
    		return;
		}
		
	alert('로그인 성공!');
	document.loginForm.submit();
	
}); //end of #btnLogin 

