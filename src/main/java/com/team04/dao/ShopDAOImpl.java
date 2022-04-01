package com.team04.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team04.domain.ShopVO;


// Shop(가게 테이블) Repository 구현 클래스
@Repository
public class ShopDAOImpl implements ShopDAO{
	
	// mybatis(=SqlSession)내의 함수들을 사용하기 위한 멤버변수 선언
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override

	public List<ShopVO> shopGetList(ShopVO vo) {
		System.out.println("===> Mybatis shopGetList() 호출");
		return mybatis.selectList("shopDAO.shopGetList", vo);
	}

	/**
	 * 메소드명 : shopInsertManager()
	 * 인자 : ShopVO shopVO (= form태그에 붙여진 파라메터를 담아둔 VO)
	 * 리턴형 : 없음
	 * 사용 : ShopMapper(이름 : shopDAO)에 있는 shopInsertManager를 호출하여
	 * 		DB에 ShopVO내용을 저장
	 */
	public void shopInsertManager(ShopVO shopVO) {
		System.out.println("===> mybatis shopInsertManager()함수 호출");
		mybatis.insert("shopDAO.shopInsertManager", shopVO);
	}

	@Override
	public void shopUpdateManager(ShopVO shopVO) {
		// TODO Auto-generated method stub
		
	}

	/**
	 * 메소드명 : shopDeleteManager()
	 * 인자 : ShopVO shopVO (= shopNumber(PK)가 담긴 값)
	 * 리턴형 : 없음
	 * 사용 : ShopMapper(이름 : shopDAO)에 있는 shopDeleteManager를 호출하여
	 * 		DB에 shopNumber(PK)가 같은 것을 삭제
	 */
	@Override
	public void shopDeleteManager(ShopVO shopVO) {
		System.out.println("===> mybatis shopDeleteManager()함수 호출");
		mybatis.delete("shopDAO.shopDeleteManager", shopVO);
	}

	/**
	 * 메소드명 : shopDeleteManager()
	 * 인자 : ShopVO shopVO (= shopNumber(PK)가 담긴 값)
	 * 리턴형 : 없음
	 * 사용 : ShopMapper(이름 : shopDAO)에 있는 shopGetManager를 호출하여
	 * 		DB에 shopNumber(PK)가 같은 것을 ShopVO형태로 담아 가지고 옴
	 */
	@Override
	public ShopVO shopGetManager(ShopVO shopVO) {
		System.out.println("===> mybatis shopGetManager() 함수 호출");
		return mybatis.selectOne("shopDAO.shopGetManager", shopVO);
	}

	/**
	 * 메소드명 : shopGetListManager()
	 * 인자 : 없음
	 * 리턴형 : ShopVO를 담은 List
	 * 사용 : ShopMapper(이름 : shopDAO)에 있는 shopGetList를 호출
	 * 		즉, 가게 전체 리스트를 조회하여 리턴하는 함수
	 */
	@Override
	public List<ShopVO> shopGetListManager() {
		System.out.println("===> mybatis shopGetListManager()함수 호출");
		return mybatis.selectList("shopDAO.shopGetListManager");

	}

}
