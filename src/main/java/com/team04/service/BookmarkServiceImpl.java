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
	
	/*
	 * public List<BookmarkVO> bookmarkGetList() { return
	 * bookmarkDAO.bookmarkGetList(); }
	 */

	
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
}
