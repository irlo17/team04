package com.team04.service;

import java.util.List;

import com.team04.domain.MenuVO;

//Menu(메뉴테이블) Service 인터페이스
public interface MenuService {

	// 메뉴 추가
	void menuInsert(MenuVO menuVO);
	
	// 메뉴 수정
	void menuUpdate(MenuVO menuVO);
	
	// 메뉴 삭제
	void menuDelete(MenuVO menuVO);
	
	// 메뉴 상세 조회
	MenuVO menuGet(MenuVO menuVO);
	
	// 메뉴 전체 리스트 조회
	List<MenuVO> menuGetList(MenuVO menuVO);
	
}
