package com.team04.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team04.domain.ShopVO;
import com.team04.service.ListingDetailsService;

@Controller
public class ListingDetailsController {

	@Autowired
	private ListingDetailsService listingDetailsService; 
	
	@RequestMapping("listingDetails.do")
	public String listingDetailsGetList(String shopNumber, Model m) {
		System.out.println("이동완료");
		List<ShopVO> list = listingDetailsService.listingDetailsGetList(shopNumber);
		List<ShopVO> mlist = listingDetailsService.listingDetailsShopInfo(shopNumber);
		
		m.addAttribute("reviewInfo", list);
		m.addAttribute("shopInfo1",mlist);
		return "listingDetails";
	}
	
}
