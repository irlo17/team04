package com.team04.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team04.domain.BookmarkVO;
import com.team04.domain.MylistVO;
import com.team04.service.BookmarkServiceImpl;

@Controller
public class BookmarkController {

	@Autowired
	private BookmarkServiceImpl bookmarkService;
	
	
	  @RequestMapping("totalbookmark.do") 
	  public String bookmarkGetList( String searchCondition, String searchKeyword, Model model) {
		
		  HashMap map = new HashMap(); map.put("searchCondition",searchCondition);
		  map.put("searchKeyword",searchKeyword);
		  List<BookmarkVO> list = bookmarkService.bookmarkGetList( map );
		  model.addAttribute("bookmarkList", list); 
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
	 
	  @RequestMapping("main.do")
	  private String bookmarkGetBestList(Model m) {
		
		  
		  List<BookmarkVO> list= bookmarkService. bookmarkGetBestList();
		  
		  m.addAttribute("bookmarkList", list); 
		  return "main";
	  }
	  
	  @RequestMapping("mylist.do")
	  private String bookmarkGetMylist(Model model,HttpSession session) {
		  
		 String memberEmail=(String)session.getAttribute("logemail");
		  List<BookmarkVO> list= bookmarkService.bookmarkGetMylist(memberEmail);
		  
		  model.addAttribute("bookmarkList", list); 
		  return "mylist";
	  }
	  
	  
	  @RequestMapping("bookmarkDetail.do")
	  private String bookmarkGetDetail(String listNumber,Model model ) {
		  
		  List<MylistVO> list= bookmarkService.bookmarkGetMylistDetail(listNumber);
		  model.addAttribute("bookmarkList", list); 
		  return "bookmarkDetail";
	  }
	  
	  
	  
	  
	  
	  @RequestMapping("mylistDetail.do")
	  private String bookmarkGetMylistDetail(String listNumber,Model model ) {
		  
		  List<MylistVO> list= bookmarkService.bookmarkGetMylistDetail(listNumber);
		  model.addAttribute("bookmarkList", list); 
		  return "mylistDetail";
	  }
	  
	  @RequestMapping("modify1.do")
	  public String bookmarkModify(String listNumber, Model model ) {
		 
			BookmarkVO vo= bookmarkService.bookmarkGetDetail(listNumber);
			model.addAttribute("bookmark", vo); 
		  
		  return "modify1";
	  }
	  
	  @RequestMapping("ModifyListname.do")
	  public String bookmarkModifylistName(BookmarkVO vo) {
		  
		  System.out.println(vo.getListNumber());
		  bookmarkService.bookmarkModify(vo);
		  
		  return "redirect:mylist.do";
	  }
	  
	  @RequestMapping("deleteBookmark.do")
	  public String bookmarkDelete(String listNumber) {
		
		  bookmarkService.bookmarkDelete(listNumber);
		 //int pageTotalCount= bookmarkService.totalbookmarkPage();
		  
		  return "redirect:mylist.do";
	  }
	  
	  @RequestMapping("detailModify.do")
	  public String mylistModifydetail(String listNumber,Model model,HttpSession session) {
		  String memberEmail= (String)session.getAttribute("logemail");
		  List<MylistVO> list1= bookmarkService.bookmarkGetMylistDetail(listNumber);
		  List<BookmarkVO> list2= bookmarkService.bookmarkGetMylist(memberEmail);
		  model.addAttribute("bookmarkModify", list1); 
		  model.addAttribute("bookmarkList", list2); 
		  
		return "detailModify";  
	  }
	  
	  @RequestMapping("mylistUpdate.do")
	  public String mylistUpdate(MylistVO vo) {
		  bookmarkService.mylistInsert(vo);
		  
		return "redirect:detailModify.do";  
	  }
	 
	  @RequestMapping("mylistDelete.do")
	  public String mylistDelete(MylistVO vo) {
		  bookmarkService.mylistDelete(vo);
		  
			return "redirect:detailModify.do";  
		  }
	  
	  @RequestMapping("addPageView.do")
	  public String addPageView() {
		  
		  return "mylistadd";
	  }
	  
	  @RequestMapping("mylistadd.do")
	  public String mylistAdd(BookmarkVO vo, HttpSession session) {
		  vo.setMemberEmail((String)session.getAttribute("logemail"));
		  bookmarkService.mylistAdd(vo);
		  
		  return "redirect:mylist.do";
	  }

}