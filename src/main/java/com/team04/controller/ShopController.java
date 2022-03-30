package com.team04.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team04.domain.ShopVO;
import com.team04.service.ShopServiceImpl;

// Shop(가게 테이블) Controller 
@Controller
public class ShopController {
	
	// ShopService내에 있는 함수를 사용하기 위한 멤버변수 선언
	@Autowired
	private ShopServiceImpl shopService;
	
	
	/**
	 * 메소드명 : shopList()
	 * 인자 : Model m (= 뷰페이지에 보내줄 값을 담을 객체)
	 * 리턴형 : String (= 뷰페이지 명)
	 * 사용 : ShopServiceImpl에 있는 함수 shopGetList()를 호출하여,
	 * 		받아온 List를 뷰페이지로 넘겨주는 함수
	 */
	@RequestMapping("shopList.do")
	public String shopList(Model m) {
		List<ShopVO> list = shopService.shopGetList();
		m.addAttribute("shopList", list);
		return "shopList";
	}
	
	/**
	 * 메소드명 : shopInsert()
	 * 인자 : ShopVO shopVO (= DB로 보낼 값을 자동으로 담도록 인자로 설정)
	 * 리턴형 : String (= redirect 하여 가게 리스트로 보내기 위함)
	 * 사용 : ShopServiceImpl에 있는 함수 shopInsert()를 호출하여,
	 * 		DB에 ShopVO에 담겨있는 내용을 insert하는 함수
	 */
	@RequestMapping("shopInsert.do")
	public String shopInsert(ShopVO shopVO) {
		shopService.shopInsert(shopVO);
		return "redirect:shopList.do";
	}

}
