package com.team04.service;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.BookmarkVO;
import com.team04.domain.MylistVO;

public interface BookmarkService {

	public List<BookmarkVO> bookmarkGetList(HashMap map);
		
	public void bookmarkUpdateLike(int listNum);
	
	public void bookmarkUpdateLikeMa(int listNum);
	
	public List<BookmarkVO> bookmarkGetBestList();
		
	public List<BookmarkVO> bookmarkGetMylist(String memberEmail);	
	public List<MylistVO> bookmarkGetMylistDetail(String listNumber);	
	
	public BookmarkVO bookmarkGetDetail(String listNumber);
	 
	public void bookmarkModify(BookmarkVO vo);
	
	public void bookmarkDelete(String listNumber);
	
	public void mylistInsert(MylistVO vo);
	
	public void mylistDelete(MylistVO vo);
	
	public int totalPageGet();
	
	public void mylistAdd(BookmarkVO vo);
}
