package com.team04.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.team04.domain.BookmarkVO;
import com.team04.domain.HeartVO;
import com.team04.domain.MylistVO;
import com.team04.domain.PagingVO;
import com.team04.service.BookmarkServiceImpl;

@Controller
public class BookmarkController {

	@Autowired
	private BookmarkServiceImpl bookmarkService;

	
	
	  @RequestMapping("totalbookmark.do") 
	  public String bookmarkGetList( String searchCondition, String searchKeyword, Model model, PagingVO vo) {
		
		  HashMap map = new HashMap(); 

		  map.put("searchCondition",searchCondition);
		  map.put("searchKeyword",searchKeyword);
		  vo.setCountPerPage(10);
		  vo.setPageTotalCount(bookmarkService.bookmarkListCount());
		  vo.setStartRow(vo.getPage());
		  vo.setEndRow(vo.getPage());
		  map.put("startRow", vo.getStartRow());
		  map.put("endRow", vo.getEndRow());
		  List<BookmarkVO> list = bookmarkService.bookmarkGetList( map );
		  model.addAttribute("bookmarkList", list);
		  model.addAttribute("paging", vo);
		  return "totalbookmark";
	  }



		/*
		 * @RequestMapping("UpdateLike.do") private String bookmarkUpdateLike(String
		 * listNumber ) { int listNum=Integer.parseInt(listNumber);
		 * bookmarkService.bookmarkUpdateLike(listNum); return
		 * "redirect:totalbookmark.do"; }
		 *
		 * @RequestMapping("UpdateLikeMa.do") private String bookmarkUpdateLikeMa(String
		 * listNumber ) { int listNum=Integer.parseInt(listNumber);
		 * bookmarkService.bookmarkUpdateLikeMa(listNum); return
		 * "redirect:totalbookmark.do"; }
		 */


	  @RequestMapping("main.do")
		private String bookmarkGetBestList( Model m) {
		  List<BookmarkVO> list= bookmarkService. bookmarkGetBestList();
		  ArrayList listNumber = new  ArrayList();
		  for(BookmarkVO vo:list) {
			  listNumber.add(bookmarkService.imageSelectBestBookmark(vo.getListNumber()));
		  }
		  m.addAttribute("bookmarkList", list);
		  m.addAttribute("fileName", listNumber);
		  return "main";
	  }



	 /** 페이징 추가 - 안정은
	 * @return
	 */
	@RequestMapping("mylist.do")
	  private String bookmarkGetMylistPaging(Model model,HttpSession session,PagingVO vo) {
		vo.setMemberEmail((String)session.getAttribute("logemail"));
		vo.setCountPerPage(10);
		vo.setPageTotalCount(bookmarkService.bookmarkMylistTotalCount(vo));
		vo.setStartRow(vo.getPage());
		vo.setEndRow(vo.getPage());
		List<BookmarkVO> list= bookmarkService.bookmarkGetMylistPaging(vo);
		model.addAttribute("paging", vo);
		model.addAttribute("bookmarkList", list);
		  return "mylist";
	  }

	  @RequestMapping("bookmarkDetail.do")
	  private String bookmarkGetDetail(String listNumber,Model model, PagingVO vo) {
		  vo.setListNumber(listNumber);
		  vo.setCountPerPage(6);
		  vo.setPageTotalCount(bookmarkService.bookmarkGetMylistTotalCount(vo));
		  vo.setStartRow(vo.getPage());
		  vo.setEndRow(vo.getPage());
		  List<MylistVO> list= bookmarkService.bookmarkGetMylistDetailPaging(vo);
		  model.addAttribute("paging", vo);
		  model.addAttribute("bookmarkList", list);
		  return "bookmarkDetail";
	  }



	  //bookmarkGetMylistDetail 페이징 추가

	  @RequestMapping("mylistDetail.do")
	  private String bookmarkGetMylistDetail(String listNumber,Model model, PagingVO vo ) {
		  vo.setListNumber(listNumber);
		  vo.setCountPerPage(6);
		  vo.setPageTotalCount(bookmarkService.bookmarkGetMylistTotalCount(vo));
		  vo.setStartRow(vo.getPage());
		  vo.setEndRow(vo.getPage());
		  List<MylistVO> list= bookmarkService.bookmarkGetMylistDetailPaging(vo);
		  
		  model.addAttribute("bookmarkList", list);
		  model.addAttribute("paging", vo);
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
		  bookmarkService.bookmarkModify(vo);
		  return "redirect:mylist.do";
	  }

	  @RequestMapping("deleteBookmark.do")
	  public String bookmarkDelete(String listNumber) {
		  bookmarkService.bookmarkDelete(listNumber);
		  return "redirect:mylist.do";
	  }

	  @RequestMapping("detailModify.do")
	  public String mylistModifydetail(String listNumber,Model model,HttpSession session,PagingVO vo ) {
		  String memberEmail= (String)session.getAttribute("logemail");
		  vo.setListNumber(listNumber);
		  vo.setCountPerPage(6);
		  vo.setPageTotalCount(bookmarkService.bookmarkGetMylistTotalCount(vo));
		  vo.setStartRow(vo.getPage());
		  vo.setEndRow(vo.getPage());
		  List<MylistVO> list1= bookmarkService.bookmarkGetMylistDetailPaging(vo);
		  List<BookmarkVO> list2= bookmarkService.bookmarkGetMylist(memberEmail);
		  model.addAttribute("bookmarkModify", list1);
		  model.addAttribute("paging", vo);
		  model.addAttribute("bookmarkList", list2);	// 모달창 (페이징 없음)

		return "detailModify";
	  }

	  @RequestMapping("mylistUpdate.do")
	  public String mylistUpdate(MylistVO vo) {
		  bookmarkService.mylistUpdate(vo);
		return "redirect:mylist.do";
	  }

	  @RequestMapping("mylistDelete.do")
	  public String mylistDelete(MylistVO vo) {
		  bookmarkService.mylistDelete(vo);
			return "redirect:mylist.do";
		  }

	  @RequestMapping("addPageView.do")
	  public String addPageView() {

		  return "mylistadd";
	  }


	  @RequestMapping("mylistadd.do")
	  public String mylistAdd(BookmarkVO vo, HttpSession session) {
		  vo.setMemberEmail((String)session.getAttribute("logemail"));
		  bookmarkService.mylistAdd(vo);

		  return "redirect:mylist.do?page=1";
	  }


	// 빈하트 클릭시 하트 저장
	  @ResponseBody
	  @RequestMapping(value = "saveHeart.do")
	  public String save_heart(int listNumber, HttpSession session,Model model) {

		  
		  HeartVO hvo = new HeartVO();
	      // 게시물 번호 세팅
		  hvo.setListNumber(listNumber);
	      // 좋아요 누른 사람 nick을 userid로 세팅
		  hvo.setMemberEmail((String) session.getAttribute("logemail"));
		  
	      // +1된 하트 갯수를 담아오기위함
		  BookmarkVO bvo= bookmarkService.pictureSaveHeart(hvo);
		  model.addAttribute("likeCount", bvo);
		  
	      return "totalbookmark";
	  }

	  @RequestMapping(value="UpdateLike.do")
	  public String liketbUpdate(long listNumber, Model model,  HttpSession session) {

		String memberEmail=(String)session.getAttribute("logemail");
	  	HeartVO heart = new HeartVO();
	  	// 좋아요가 되있는지 찾기위해 게시글번호와 회원번호를 보냄.
	  	//heart = bookmarkService.findHeart(listNumber,listNumber);
	  	// 찾은 정보를 heart로 담아서 보냄
	  	model.addAttribute("heart",heart);
	  	return "redirect:totalbookmark.do";

	  }

	  // 꽉찬하트 클릭시 하트 해제
	  @ResponseBody
	  @RequestMapping(value = "removeHeart.do")
	  public String remove_heart( int listNumber, HttpSession session,Model model) {
	      
		  HeartVO hvo = new HeartVO();
	      // 게시물 번호 세팅
	      hvo.setListNumber(listNumber);
	      // 좋아요 누른 사람 nick을 userid로 세팅
	      hvo.setMemberEmail((String) session.getAttribute("logemail"));
	      // -1된 하트 갯수를 담아오기위함
	      BookmarkVO bvo=  bookmarkService.pictureRemoveHeart(hvo);
	      model.addAttribute("likeCount", bvo);

	      return "totalbookmark";
	  }

}
