package com.team04.service;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.BookmarkVO;
import com.team04.domain.HeartVO;
import com.team04.domain.MylistVO;
import com.team04.domain.PagingVO;

public interface BookmarkService {

	public List<BookmarkVO> bookmarkGetList(HashMap map);
	
	
	/** 공개 여부가 "yes"인 즐겨찾기 전체 개수
	 */
	public int bookmarkListCount();
		
	
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
	
	
	
	public void mylistAdd(BookmarkVO vo);
	
	public BookmarkVO imageSelectBestBookmark(int listNumber);
	
	public BookmarkVO pictureSaveHeart(HeartVO vo);
	
	public BookmarkVO pictureRemoveHeart(HeartVO vo);
}
