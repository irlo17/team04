package com.team04.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team04.domain.MemberVO;
import com.team04.service.MemberService;

@Controller
public class MemberController {
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	@Autowired
	private MemberService memberService;
	private HttpSession mypageSess;
	
	/**	회원가입 
	 * 	- 회원가입 form에 입력된 값들을 MemberVO에 넣고 넘기기
	 * @param MemberVO vo
	 * @return 로그인폼 페이지로 이동
	 */
	@RequestMapping("memberInsert.do")
	public String memberInsert(MemberVO vo) {
		memberService.memberInsert(vo);
		return "redirect:loginForm.do";
	}
	
	/**	email 중복 체크
	 * 	- DB에 동일한 이메일이 있는지 확인
	 * @param MemberVO vo (memberEmail)
	 * @return String message : "N"이면 이메일 사용 불가능
	 */
	@RequestMapping(value="emailCheck.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public String emailCheck(MemberVO vo) {
		System.out.println("컨트롤러 : "+vo.getMemberEmail());
		MemberVO result = memberService.emailCheck(vo);	// 사용가능한 이메일이면 null값이 넘어옴
		String message = "";	// 이메일 사용 가능 여부를 담을 변수
		
		if(result != null) // 검색되는 레코드가 있으면 이메일 사용 불가능
		{
			message = "N";
		}
		
		return message;
	}
	
	/**	로그인 하기
	 * 	- DB에 입력된 레코드 중에서 이메일과 패스워드가 같은 레코드 검색
	 * 	- 하나의 레코드가 검색되어야함
	 * @param MemberVO vo (memberEmail, memberPassword)
	 * @return (페이지 이동)
	 * 		- 로그인 성공	: HttpSession에 검색된 이메일과 닉네임을 저장
	 * 		- 로그인 실패
	 */
	@RequestMapping("loginCheck.do")
	public String loginCheck(MemberVO vo, HttpSession session){
		MemberVO result = memberService.loginCheck(vo);
		
		if(result == null){
			System.out.println("로그인 실패");
			return "redirect:loginForm.do";
		}else{
			System.out.println("로그인 성공");
			System.out.println(result.getMemberEmail());
			session.setAttribute("lognick", result.getMemberNickname());
			session.setAttribute("logemail", result.getMemberEmail());
			return "redirect:main.do";
		}
	}
	
	/** main 페이지에서 .login-btn 버튼을 눌렀을 때
	 * @return
	 * 		- 세션에 로그인 정보 O : 마이페이지로 이동
	 * 		- 세션에 로그인 정보 X : loginForm.do로 이동
	 */
	@RequestMapping("login.do")
	public String login(HttpSession session) {
		
		if(session.getAttribute("lognick") != null) {
			// (1) 세션에 로그인 정보 O 
			return "redirect:main.do";	// 현재 마이페이지가 없기 때문에 main으로 이동
		}
			//(2) 세션에 로그인 정보 X 
			return "redirect:loginForm.do";
	}// end of login()
	
	
	
}
