package com.team04.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team04.dao.BookmarkDAOImpl;
import com.team04.domain.BookmarkVO;
import com.team04.domain.MylistVO;

@Service("bookmarkService")
public class BookmarkServiceImpl implements BookmarkService {

	@Autowired 
	private BookmarkDAOImpl bookmarkDAO;
	
	 @Override 
	 public List<BookmarkVO> bookmarkGetList( HashMap map ) { 
		 return bookmarkDAO.bookmarkGetList( map ); }
	    
  
	@Override
	public void bookmarkUpdateLike(int listNum) {
		bookmarkDAO.bookmarkUpdateLike(listNum);

	}
	
	@Override
	public void bookmarkUpdateLikeMa(int listNum) {
		bookmarkDAO.bookmarkUpdateLike(listNum);

	}
	
	@Override
	public List<BookmarkVO> bookmarkGetBestList(){
		return bookmarkDAO.bookmarkGetBestList();
	}
 
	public List<BookmarkVO> bookmarkGetMylist(String memberEmail){
		return bookmarkDAO.bookmarkGetMylist(memberEmail);
	}
	public List<MylistVO> bookmarkGetMylistDetail(String listNumber){
		return bookmarkDAO.bookmarkGetMylistDetail(listNumber);
	}

	
	public BookmarkVO bookmarkGetDetail(String listNumber) {
		System.out.println("service단 호출");
		return bookmarkDAO.bookmarkGetDetail(listNumber);
	} 
	 
	public void bookmarkModify(BookmarkVO vo) {
		bookmarkDAO.bookmarkModify(vo);
	}
	
	public void bookmarkDelete(String listNumber) {
		bookmarkDAO.bookmarkDelete(listNumber);
	}
	
	public void mylistUpdate(MylistVO vo) {
		bookmarkDAO.mylistUpdate(vo);
	}
	
	public void mylistDelete(MylistVO vo) {
		bookmarkDAO.mylistDelete(vo);
	}

	private int totalRecCount; // 전체 레코드 수
	private int pageTotalCount; // 전체 페이지 수
	private int countPerPage = 3; // 한페이지당 레코드 수
	
	public int totalPageGet() {
		 
		totalRecCount=bookmarkDAO.totalbookmarkCount(); 
		return pageTotalCount=(int)Math.ceil(totalRecCount/3.0); 
		 
	}
	
	/*
	 * public List <BoardVO> getArticleList(String pNum) throws BoardException { //
	 * int pageNum=1; //페이지 수가 null이라도 1을 지정 // if(pNum!=null) pageNum =
	 * Integer.parseInt(pNum); // int startRow =
	 * pageNum*countPerPage-(countPerPage-1); // int endRow = pageNum*countPerPage;
	 * // // List <BoardVO> mList = bookmarkDAO.selectList(startRow, endRow); //
	 * return mList; }
	 */
	
	
	
	public void mylistAdd(BookmarkVO vo) {
		bookmarkDAO.mylistAdd(vo);
	}


	

}
