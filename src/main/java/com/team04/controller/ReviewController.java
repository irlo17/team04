package com.team04.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team04.domain.ReviewVO;
import com.team04.service.ReviewService;


@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	// 리뷰 보기 클릭시 리뷰페이지 보여주기
	 /*이메일 세션으로 받아야함 일단 내가넣어주기 파라미터로 했음
	  *  	리턴형 :String
	  *  	재정의된 reviewService의 reviewGetList함수에 인자를 이메일을 넣어
	  *  	값을 list에 넣는다.
	  * */
	@RequestMapping("review.do")   
	public String reviewShow(String email ,Model m) {
		/*
		 * HashMap map = new HashMap();
		 * 
		 * map.put("email", email);
		 */
		System.out.println(email);
		List<ReviewVO> list = reviewService.reviewGetList(email);
		m.addAttribute("reviewList",list);
		return "review";
		
	}
	@RequestMapping("listingDetatils.do")
	public String listingDetails() {
		
		
		return "listingDetails";
	}
	
	@RequestMapping("reviewUpdate.do")
	public String reviewUpdate() {
		
		
		return "listingDetatils";
	}
	
	@RequestMapping("reviewDelete.do")
	public String reviewDelete() {
		
		
		return "listingDetatils";
	}
	
	
}
