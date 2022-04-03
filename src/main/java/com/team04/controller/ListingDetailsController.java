package com.team04.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.multipart.Part;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team04.domain.MylistVO;
import com.team04.domain.ReviewVO;
import com.team04.domain.ShopVO;
import com.team04.service.ListingDetailsService;

@Controller
public class ListingDetailsController {

	@Autowired
	private ListingDetailsService listingDetailsService;

	/*
	 * @RequestMapping("mylist.do") public String mylist() { return "mylist"; }
	 */
	
	
		
		
	@RequestMapping("listingDetails.do")
	public String listingDetailsGetList(String shopNumber, Model m, HttpSession session) {
		/* System.out.println("이동완료"); */
		String logemail = (String) session.getAttribute("logemail");
		

		/* 가게 전체 리뷰를 가져오기위해 */
		List<ShopVO> list = listingDetailsService.listingDetailsGetList(shopNumber);
		m.addAttribute("reviewInfo", list);
		/* 가게 정보를 가져오기위해서 했는데 메뉴판뛰울려고 사용 */
		List<ShopVO> mlist = listingDetailsService.listingDetailsShopInfo(shopNumber);
		m.addAttribute("menuInfo", mlist);
		/* 오직 가게정보만 담김 */
		List<ShopVO> shopInfoList = listingDetailsService.listingDetailsOnlyShopInfo(shopNumber);
		m.addAttribute("shopInfoList", shopInfoList);


		HashMap map3 = new HashMap();
		map3.put("shopNumber", shopNumber);
		map3.put("logemail", logemail);
		List<MylistVO> totalList= listingDetailsService.listingDetailsTotalList(map3);
		m.addAttribute("totalList",totalList);
	
		
		HashMap map = new HashMap();
		map.put("logemail", logemail);
		Integer shopListCount = listingDetailsService.listingDetailsShopListCount(map);
		m.addAttribute("shopListCount",shopListCount);
		
		
		return "listingDetails";
	}

	@RequestMapping("reviewInsert.do")
	public String listingDetailsReviewInsert(HttpServletRequest httpServletRequest, ReviewVO vo, Model m, HttpSession session) {

		// 세션으로 이메일을 가져옴
		String logemail = (String) session.getAttribute("logemail");
		// 파라미터로 맛평가랑 가게번호를 가져온다
		String reviewGrade = httpServletRequest.getParameter("reviewGrade");
		String shopNumber = (httpServletRequest.getParameter("shopNumber"));

		HashMap map = new HashMap();

		map.put("reviewContent", vo.getReviewContent());
		map.put("reviewFname", vo.getReviewFname());
		map.put("reviewRealfname", vo.getReviewRealfname());

		map.put("reviewGrade", reviewGrade);
		map.put("logemail", logemail);
		map.put("shopNumber", shopNumber);
		
		
		listingDetailsService.listingDetailsReviewInsert(map);
		
	
		
		/* 메뉴판 보여줄려고 사용 */
		List<ShopVO> mlist = listingDetailsService.listingDetailsShopInfo(shopNumber);
		m.addAttribute("menuInfo", mlist);
		/* 오직 가게정보만 담김 */
		List<ShopVO> shopInfoList = listingDetailsService.listingDetailsOnlyShopInfo(shopNumber);
		m.addAttribute("shopInfoList", shopInfoList);
		
		HashMap map3 = new HashMap();
		map3.put("shopNumber", shopNumber);
		map3.put("logemail", logemail);
		List<MylistVO> totalList= listingDetailsService.listingDetailsTotalList(map3);
		m.addAttribute("totalList",totalList);
		
		
		/*이것은 사용을 안함*/
		HashMap map2 = new HashMap();
		map.put("logemail", logemail);
		Integer shopListCount = listingDetailsService.listingDetailsShopListCount(map2);
		m.addAttribute("shopListCount",shopListCount);
		
		
		
		// 리뷰 작성후 페이지 이동하면 가게 정보 메뉴판 리뷰 목록이 안보여지기 때문에 한번더 실행해줌
		// 이것은 오적 리뷰목록을 보기위해서
		List<ShopVO> list = listingDetailsService.listingDetailsGetList(shopNumber);
		m.addAttribute("reviewInfo", list);
		
		
	
		
		
		
		
		
		
		
		return "listingDetails";
	}

	
		/* ajax 사용 
		 * 		세션 : 이메일
		 * 		파라미터 : 가게번호
		 * 			
		 * 
		 * */
	@RequestMapping(value = "listingDetailsAddList.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String listingDetailsAddList(@RequestParam("shopNumber") String shopNumber, Model m, HttpSession session) {

		
		String logemail = (String) session.getAttribute("logemail");
	
		HashMap map = new HashMap();

		map.put("shopNumber", shopNumber);
		map.put("logemail", logemail);

		listingDetailsService.listingDetailsAddList(map);

	

		return "추가완료";
	}

}
