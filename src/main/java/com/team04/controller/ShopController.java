package com.team04.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team04.domain.ShopVO;
import com.team04.service.ShopService;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
		
	//가게 리스트 출력
	@RequestMapping("listing.do")
	public String shopList(ShopVO vo, Model m) {
		
		List<ShopVO> list = shopService.shopGetList(vo);
		m.addAttribute("shopList", list); //jsp쪽으로 보내는 키값
		return "listing";
	}

}
