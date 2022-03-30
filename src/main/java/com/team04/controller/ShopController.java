package com.team04.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {
		
	//가게 리스트 출력
	@RequestMapping("listing.do")
	public String shopList() {
		
		return "listing";
	}

}
