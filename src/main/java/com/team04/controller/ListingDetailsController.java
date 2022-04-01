package com.team04.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team04.domain.ReviewVO;
import com.team04.domain.ShopVO;
import com.team04.service.ListingDetailsService;

@Controller
public class ListingDetailsController {

	@Autowired
	private ListingDetailsService listingDetailsService; 
	
	@RequestMapping("listingDetails.do")
	public String listingDetailsGetList(String shopNumber, Model m) {
		/* System.out.println("이동완료"); */
		
		
		
		/* 가게 전체 리뷰를 가져오기위해*/
		List<ShopVO> list = listingDetailsService.listingDetailsGetList(shopNumber);
		m.addAttribute("reviewInfo", list);
		/* 가게 정보를 가져오기위해 */
		List<ShopVO> mlist = listingDetailsService.listingDetailsShopInfo(shopNumber);
		m.addAttribute("shopInfo1",mlist);
		
		return "listingDetails";
	}
	
	
	@RequestMapping("reviewInsert.do")
	public String listingDetailsReviewInsert( HttpServletRequest httpServletRequest ,ReviewVO vo , Model m,HttpSession session) {
		
		String logemail = (String) session.getAttribute("logemail");
		String reviewGrade = httpServletRequest.getParameter("reviewGrade");
		
		String shopNumber = (httpServletRequest.getParameter("shopNumber"));
		
		
		
		System.out.println(shopNumber);
		HashMap map = new HashMap();
		
		 map.put("reviewContent", vo.getReviewContent());
		 map.put("reviewFname", vo.getReviewFname()); 
		 map.put("reviewRealfname", vo.getReviewRealfname());
		 
		
		map.put("reviewGrade", reviewGrade);
		map.put("logemail", logemail);
		map.put("shopNumber", shopNumber);
		
		listingDetailsService.listingDetailsReviewInsert(map);
		
		List<ShopVO> list = listingDetailsService.listingDetailsGetList(shopNumber);
		m.addAttribute("reviewInfo", list);
		/* 가게 정보를 가져오기위해 */
		List<ShopVO> mlist = listingDetailsService.listingDetailsShopInfo(shopNumber);
		m.addAttribute("shopInfo1",mlist);
		
		
		return "listingDetails";
	}
	
	
	
}
