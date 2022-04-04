package com.team04.service;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.BookmarkVO;
import com.team04.domain.MylistVO;
import com.team04.domain.PagingVO;

public interface BookmarkService {

	public List<BookmarkVO> bookmarkGetList(HashMap map);
		
	public void bookmarkUpdateLike(int listNum);
	
	public void bookmarkUpdateLikeMa(int listNum);
	
	public List<BookmarkVO> bookmarkGetBestList();
	
	/** 나만의 즐겨찾기 총 개수 구하기
	 * 	- 페이징을 위해 DB에 입력된 회원의 즐겨찾기 총 개수를 구함
	 */
	public int bookmarkMylistTotalCount(PagingVO paging);
	
	public List<BookmarkVO> bookmarkGetMylistPaging(PagingVO paging);	

	public List<BookmarkVO> bookmarkGetMylist(String memberEmail);	
	
	public List<MylistVO> bookmarkGetMylistDetail(String listNumber);	
	
	public BookmarkVO bookmarkGetDetail(String listNumber);
	 
	public void bookmarkModify(BookmarkVO vo);
	
	public void bookmarkDelete(String listNumber);
	
	public void mylistUpdate(MylistVO vo);
	
	public void mylistDelete(MylistVO vo);
	
	public int totalPageGet();
	
	public void mylistAdd(BookmarkVO vo);
}
