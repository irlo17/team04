package com.team04.dao;

import com.team04.domain.MemberVO;

public interface MemberDAO {
	
	/** email 중복 체크
	 * 	- DB에 동일한 이메일이 있는지 레코드 검색
	 */
	MemberVO emailCheck( MemberVO vo );
	
	/** 회원가입
	 * 	- DB에 회원의 정보를 입력
	 */
	int memberInsert(MemberVO vo);
	
	/** 로그인
	 * 	- DB에 입력된 이메일과 비밀번호가 일치하는 레코드 검색
	 */
	MemberVO loginCheck(MemberVO vo);
	
}
