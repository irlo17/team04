package com.team04.dao;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.BookmarkVO;
import com.team04.domain.MylistVO;
import com.team04.domain.PagingVO;



	
	public interface BookmarkDAO {

	
	
	
	/**즐겨찾기 목록 출력 
	 * 1.기본 출력: 공개된 즐겨찾기 전체 목록 출력.
	 * 2.검색시 출력: 제목과 닉네임으로 검색.
	 * @param HashMap map
	 * @return List<BookmarkVO>
	 */
	public List<BookmarkVO> bookmarkGetList(HashMap map);
	
	
	/** 전체 즐겨찾기 목록 좋아요
	 * :하트 클릭시 좋아요 수 증가
	 * BookmarkVO vo로 제목과 글번호를 가져와 수 증가.
	 * 
	 * @param vo
	 */
	public void bookmarkUpdateLike(int num);
	
	
	/**좋아요 다시 클릭하여 취소하기
	 * @param num
	 */
	public void bookmarkUpdateLikeMa(int num);
	
	public List<BookmarkVO> bookmarkGetBestList();
	
	/** 나만의 즐겨찾기 총 개수 구하기
	 * 	- 페이징을 위해 DB에 입력된 회원의 즐겨찾기 총 개수를 구함
	 */
	public int bookmarkMylistTotalCount(PagingVO paging);

	public List<BookmarkVO> bookmarkGetMylistPaging(PagingVO paging);

	public List<BookmarkVO> bookmarkGetMylist(String memberEmail);
	
	public List<MylistVO> bookmarkGetMylistDetail(String listNumber);
	
	public BookmarkVO bookmarkGetDetail(String listNumber);
	
	public void bookmarkModify (BookmarkVO vo) ;
	
	public void bookmarkDelete(String listNumber);
	
	public void mylistUpdate(MylistVO vo);
	
	public void mylistDelete(MylistVO vo);
	
	public int totalbookmarkCount();
	
	public void mylistAdd(BookmarkVO vo);
	} 
