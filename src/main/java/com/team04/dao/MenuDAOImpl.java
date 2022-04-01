package com.team04.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team04.domain.MenuVO;

// Menu(메뉴 테이블) DAO 구현 클래스
@Repository
public class MenuDAOImpl implements MenuDAO {

	// DB를 연결하기위한 mybatis 연결
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void menuInsertManager(MenuVO menuVO) {
		System.out.println("===> mybatis menuInsertManager()함수 호출");
		mybatis.insert("menuDAO.menuInsertManager", menuVO);
	}

	@Override
	public void menuUpdateManager(MenuVO menuVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void menuDeleteManager(MenuVO menuVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public MenuVO menuGetManager(MenuVO menuVO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MenuVO> menuGetListManager(MenuVO menuVO) {
		System.out.println("===> mybatis menuGetListManager()함수 요청됨");
		return mybatis.selectList("menuDAO.menuGetListManager", menuVO);
	}

}
