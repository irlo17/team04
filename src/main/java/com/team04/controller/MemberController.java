package com.team04.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team04.domain.MemberVO;
import com.team04.service.MemberService;

/**
 * @author 안정은
 *
 */
@Controller
public class MemberController {
	


	  @RequestMapping("/{step}.do")
	  public String viewPage(@PathVariable String step) {
		  return step;
		  }


	@Autowired
	private MemberService memberService;



	/**	회원가입
	 * 	- 회원가입 form에 입력된 값들을 MemberVO에 넣고 넘기기
	 * @param MemberVO vo
	 * @return 로그인폼 페이지로 이동
	 */
	@RequestMapping("memberInsert.do")
	public String memberInsert(MemberVO vo) {
		memberService.memberInsert(vo);

		return "redirect:loginForm.do";

	}//end of memberInsert()



	/**	email 중복 체크
	 * 	- DB에 동일한 이메일이 있는지 확인
	 * @param MemberVO vo (memberEmail)
	 * @return String message : "Y"이면 이메일 사용 가능
	 */
	@RequestMapping(value="emailCheck.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public String emailCheck(MemberVO vo) {
		MemberVO result = memberService.emailCheck(vo);	// 사용가능한 이메일이면 null값이 넘어옴
		String message = "";	// 이메일 사용 가능 여부를 담을 변수

		if(result == null) { // 검색되는 레코드가 없으면 이메일 사용 가능

			message = "Y";
		}// end of if

		return message;
	}//end of emailCheck()



	/**	로그인 하기
	 * 	- DB에 입력된 레코드 중에서 이메일과 패스워드가 같은 레코드 검색
	 * 	- 하나의 레코드가 검색되어야함
	 * @param MemberVO vo (memberEmail, memberPassword)
	 * @return (페이지 이동)
	 * 		- 로그인 성공
	 * 			(1) 관리자가 아닐 때 : 검색된 이메일과 닉네임을 HttpSession에 저장 -> main.do로 이동
	 * 			(2) 관리자일 때 : 검색된 이메일과 닉네임을 HttpSession에 저장
	 * 		- 로그인 실패
	 */
	@RequestMapping("loginCheck.do")
	public String loginCheck(MemberVO vo, HttpSession session){
		MemberVO result = memberService.loginCheck(vo);

		if(result == null){
			System.out.println("로그인 실패");
			return "redirect:loginForm.do";

		}else{
			if(result.getMemberAdmin().equals("N")) {
				System.out.println("로그인 성공");
				session.setAttribute("lognick", result.getMemberNickname());
				session.setAttribute("logemail", result.getMemberEmail());
				
				return "redirect:main.do";
			}else {
				System.out.println("로그인 성공");
				session.setAttribute("lognick", result.getMemberNickname());
				session.setAttribute("logemail", result.getMemberEmail());
				session.setAttribute("admin", result.getMemberAdmin());
				return "redirect:main.do";
			}//end of if(2) - 관리자 유무
		}//end of if(1)

	}//end of loginCheck()

	
	@RequestMapping("rememberEmail.do")
	public String rememberEmail(MemberVO vo, HttpServletResponse response) {
		
		Cookie cookie = new Cookie("memberEmail",vo.getMemberEmail());
		cookie.setDomain("localhost");
		cookie.setPath("/");
		// 30초간 저장
		cookie.setMaxAge(30*60);
		cookie.setSecure(true);
		response.addCookie(cookie);
		
		return "redirect:main.do";
	}


	/** main 페이지에서 .login-btn 버튼을 눌렀을 때
	 * @return
	 * 		- 세션에 로그인 정보 X : loginForm.do로 이동
	 * 		- 세션에 로그인 정보 O : 마이페이지(회원정보)로 이동
	 */
	@RequestMapping("login.do")
	public String login(HttpSession session) {

		if(session.getAttribute("lognick") == null) {
			//(1) 세션에 로그인 정보 X
			return "redirect:loginForm.do";
		}
			// (2) 세션에 로그인 정보 O
			return "redirect:mypageMember.do";

	}// end of login()



	/** 비밀번호 찾기
	 * 	- DB에 입력한 이메일, 이름, 휴대전화와 값이 같은 레코드가 있는지 검색
	 * @param MemberVO vo
	 * @return String message : "N"이면 존재하지 않는 회원 -> 비밀번호 재설정 불가능
	 */
	@RequestMapping(value="pwSearch.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public String pwSearch(MemberVO vo, HttpSession session) {
		MemberVO result = memberService.pwSearch(vo);
		String message = "";	// 회원 정보 유무를 담을 변수
		
		if(result == null) {
			// 회원정보가 없다는 뜻
			message = "N";
		}

		/*	존재하는 회원이면 해당 이메일을 세션에 저장
				- 추후에 저장한 이메일을 비밀번호 재설정에서 사용함 */
		session.setAttribute("email", vo.getMemberEmail());

		return message;

	}//end of pwSearch()



	/** 비밀번호 재설정
	 *  - 로그인 -> 비밀번호 찾기 (회원정보 검색) -> 비밀번호 재설정 페이지가 나옴
	 * @param MemberVO vo : 패스워드 입력값이 넘어옴
	 * 		- session을 통해서 이메일 정보를 가져옴
	 * @return 비밀번호 변경이 완료되면 로그인폼 페이지로 넘어감
	 */
	@RequestMapping("pwChange.do")
	public String pwChange(MemberVO vo, HttpSession session) {
		vo.setMemberEmail(session.getAttribute("email").toString());
		memberService.pwChange(vo);

		return "redirect:loginForm.do";

	}//end of pwChange()



	/** 마이페이지 회원 정보에 출력될 회원 레코드 검색
	 * - DB에서 이메일이 동일한 회원의 정보 찾기
	 * 		- HttpSession 로그인한 이메일의 정보
	 * 		- Model 화면에 출력하기 위해
	 * 		- MemberVO member 결과로 나온 레코드의 정보를 담음
	 * 		- MemberVO vo 이메일의 정보를 담고 mapper로 이동
	 * @return
	 */
	@RequestMapping("mypageMember.do")
	public String mypageMember(MemberVO vo, HttpSession session, Model model) {
		vo.setMemberEmail(session.getAttribute("logemail").toString());
		System.out.println(vo.getMemberEmail());
		MemberVO member = memberService.memberSearch(vo);
		model.addAttribute("MemberVO", member);

		return "mypageMember";

	}//end of mypageMember()




	/**	회원 정보 수정
	 * - DB에 동일한 이메일을 가진 회원의 정보를 수정
	 * @param MemberVO vo
	 * @return mypageMember.do
	 */
	@RequestMapping("memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		memberService.memberUpdate(vo);

		return "redirect:mypageMember.do";

	}//end if memberUpdate()



	/** 로그아웃
	 * 	- 세션에 저장된 회원의 이메일과 닉네임을 삭제
	 * @return 
	 * 		- 메인
	 */
	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String admin = session.getAttribute("admin").toString();
		
		if(admin == null) {
			// 관리자가 아니면
			System.out.println(session.getAttribute("logemail") + "님 로그아웃");
			session.invalidate();
			return "main";
			
		}else {
			System.out.println(session.getAttribute("logemail") + "님(관리자) 로그아웃");
			session.invalidate();
			return "mamberListManager";
		}


	}//end of logout()



	/** 회원 탈퇴
	 * 	- DB에 저장된 회원의 레코드를 삭제
	 * @param MemberVO vo
	 * 			- input hidden으로 넘어온 이메일과 패스워드 정보로 회원의 레코드 삭제
	 * 			- 세션에 저장된 로그인 정보 삭제
	 * @return 
	 * 		- 관리자 O
	 * 		- 관리자 X
	 */
	@RequestMapping("memberDelete.do")
	public String memberDelete(MemberVO vo,HttpServletRequest request) {
		memberService.memberDelete(vo);
		System.out.println(vo.getMemberEmail() + "님 회원 탈퇴 성공");
		HttpSession session = request.getSession();
		
		session.invalidate(); // 세션에 저장된 로그인 정보를 삭제

		return "main";	// 회원 탈퇴 시 메인 페이지로 이동

	}//end of memberDelete()

	// 관리자 -> 회원탈퇴
	@RequestMapping("memberDeleteManager.do")
	public String memberDeleteManager(MemberVO vo) {
		memberService.memberDeleteManager(vo);
		
		return "memberListManager";
	}
	


}//end of class
