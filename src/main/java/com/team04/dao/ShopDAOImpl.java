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

	public void shopInsert(ShopVO shopVO) {
		System.out.println("===> mybatis shopInsert()함수 호출");
		mybatis.insert("shopDAO.shopInsert", shopVO);
	}

	@Override
	public void shopUpdate(ShopVO shopVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void shopDelete(ShopVO shopVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ShopVO shopGet(ShopVO shopVO) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 메소드명 : shopGetList()
	 * 인자 : 없음
	 * 리턴형 : ShopVO를 담은 List
	 * 사용 : ShopMapper(이름 : shopDAO)에 있는 shopGetList를 호출
	 * 		즉, 가게 전체 리스트를 조회하여 리턴하는 함수
	 */
	@Override
	public List<ShopVO> shopGetList() {
		System.out.println("===> mybatis shopGetList()함수 호출");
		return mybatis.selectList("shopDAO.shopGetList");

	}

}
