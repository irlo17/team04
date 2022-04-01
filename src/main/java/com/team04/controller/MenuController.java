package com.team04.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team04.domain.MenuVO;
import com.team04.service.MenuService;

// Menu(메뉴테이블) Controller
@Controller
public class MenuController {

	// Menu(메뉴테이블) Service 연결
	@Autowired
	private MenuService menuService;
	
	/*
	 * 요청 : menuInsertManager.do
	 * 메소드명 : menuInsertManager()
	 * 인자 : 
	 * 리턴형 : String (= 뷰페이지명)
	 * 사용 : ajax로 요청되어 menu에 insert하도록 menuService의 menuInsertManager()함수 호출
	 * 		그와 동시에 뷰페이지에 메뉴 전체 리스트를 보내주어야 함
	 */
	@RequestMapping(value="menuInsertManager.do", produces="application/text;charset=utf-8")
	@ResponseBody
	public List<MenuVO> menuInsertManager(MenuVO menuVO, Model m) {
		// 메뉴테이블에 추가
		menuService.menuInsertManager(menuVO);
		
		// 메뉴 전체 테이블 검색 후 뷰페이지로 전송
		//m.addAttribute("menuListManager", menuService.menuGetListManager(menuVO));
		List<MenuVO> list = menuService.menuGetListManager(menuVO);
		
		return list;
	}
	
}
