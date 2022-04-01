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
		/* 가게 정보를 가져오기위해서 했는데 메뉴판뛰울려고 사용 */
		List<ShopVO> mlist = listingDetailsService.listingDetailsShopInfo(shopNumber);
		m.addAttribute("menuInfo",mlist);
		/* 오직 가게정보만 담김 */
		List<ShopVO> shopInfoList = listingDetailsService.listingDetailsOnlyShopInfo(shopNumber);
		m.addAttribute("shopInfoList",shopInfoList);
		
		return "listingDetails";
	}

	
	@RequestMapping("reviewInsert.do")
	public String listingDetailsReviewInsert( HttpServletRequest httpServletRequest ,ReviewVO vo , Model m,HttpSession session) {
		
		
		//세션으로 이메일을 가져옴
		String logemail = (String) session.getAttribute("logemail");
		//파라미터로 맛평가랑 가게번호를 가져온다
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
		
		// 이것은 
		
		List<ShopVO> list = listingDetailsService.listingDetailsGetList(shopNumber);
		m.addAttribute("reviewInfo", list);
		/* 가게 정보를 가져오기위해 */
		List<ShopVO> mlist = listingDetailsService.listingDetailsShopInfo(shopNumber);
		m.addAttribute("menuInfo",mlist);
		/* 오직 가게정보만 담김 */
		List<ShopVO> shopInfoList = listingDetailsService.listingDetailsOnlyShopInfo(shopNumber);
		m.addAttribute("shopInfoList",shopInfoList);
		
		
		return "listingDetails";
	}
	
	
	
}
