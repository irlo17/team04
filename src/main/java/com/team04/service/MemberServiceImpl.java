package com.team04.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team04.dao.MemberDAOImpl;
import com.team04.domain.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAOImpl memberDAO;

	/**	email 중복 체크
	 * 	- DB에 동일한 이메일이 있는지 레코드 검색
	 * 	- MemberDAO의 emailCheck() 호출
	 * @param MemberVO vo
	 * @return String 
	 * 			- "Y" : 사용 가능한 이메일
	 * 			- "N" : 사용 불가능한 이메일 (중복된 이메일)
	 */
	@Override
	public MemberVO emailCheck(MemberVO vo) 
	{
		MemberVO result = memberDAO.emailCheck(vo);
		return memberDAO.emailCheck(vo);
	}

	/**	회원가입
	 *  - DB에 회원의 정보를 입력
	 * 	- MemberDAO의 memberInsert() 호출
	 * @param MemberVO vo
	 * @return int ( 입력 성공 시 1을 리턴 )
	 */
	@Override
	public int memberInsert(MemberVO vo) 
	{
		return memberDAO.memberInsert(vo);
	}
	
	/** 로그인
	 *	- DB에 입력된 이메일과 비밀번호가 일치하는 레코드 검색
	 * 	- MemberDAO의 loginCheck() 호출
	 * @param MemberVO vo
	 * @return MemberVO vo
	 */
	@Override
	public MemberVO loginCheck(MemberVO vo) 
	{
		return memberDAO.loginCheck(vo);
	}
	
}
