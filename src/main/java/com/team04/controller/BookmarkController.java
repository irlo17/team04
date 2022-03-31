package com.team04.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team04.domain.BookmarkVO;
import com.team04.service.BookmarkServiceImpl;

@Controller
public class BookmarkController {

	@Autowired
	private BookmarkServiceImpl bookmarkService;
	
	
	  @RequestMapping("totalbookmark.do") 
	  public String bookmarkGetList( String searchCondition, String searchKeyword, Model m) {
		
		  HashMap map = new HashMap(); map.put("searchCondition",searchCondition);
		  map.put("searchKeyword",searchKeyword);
		  List<BookmarkVO> list = bookmarkService.bookmarkGetList( map );
		  m.addAttribute("bookmarkList", list); 
		  return "totalbookmark"; 
	  }
	  
	  
	  @RequestMapping("UpdateLike.do")
	 private  String  bookmarkUpdateLike(String listNumber ) {
		 
		  System.out.println(listNumber);
		  int listNum=Integer.parseInt(listNumber); 
		 bookmarkService.bookmarkUpdateLike(listNum);
		 
		 return "redirect:totalbookmark.do";
	 }
	  
	  @RequestMapping("UpdateLikeMa.do")
		 private  String  bookmarkUpdateLikeMa(String listNumber ) {
			 
			  System.out.println(listNumber);
			  int listNum=Integer.parseInt(listNumber); 
			 bookmarkService.bookmarkUpdateLikeMa(listNum);
			 
			 return "redirect:totalbookmark.do";
		 } 
	 
}
