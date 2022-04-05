package com.team04.dao;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.BookmarkVO;
import com.team04.domain.HeartVO;
import com.team04.domain.MylistVO;
import com.team04.domain.PagingVO;


	public interface BookmarkDAO {


	
	/** 공개 여부가 "yes"인 즐겨찾기 전체 개수
	 */
	public int bookmarkListCount();
	
	/**즐겨찾기 목록 출력 
	 * 1.기본 출력: 공개된 즐겨찾기 전체 목록 출력.
	 * 2.검색시 출력: 제목과 닉네임으로 검색.
	 * @param HashMap map
	 * @return List<BookmarkVO>
	 */

	//즐겨찾기 공개 리스트 출력 및 검색

	public List<BookmarkVO> bookmarkGetList(HashMap map);


	//좋아요 +1 (미완)
	public void bookmarkUpdateLike(int num);


	//좋아요-1 (미완)
	public void bookmarkUpdateLikeMa(int num);

	//공개리스트 베스트 순으로 뽑기
	public List<BookmarkVO> bookmarkGetBestList();

	/** 나만의 즐겨찾기 총 개수 구하기
	 * 	- 페이징을 위해 DB에 입력된 회원의 즐겨찾기 총 개수를 구함
	 */
	public int bookmarkMylistTotalCount(PagingVO paging);

	public List<BookmarkVO> bookmarkGetMylistPaging(PagingVO paging);

	public List<BookmarkVO> bookmarkGetMylist(String memberEmail);

	//나의 북마크 리스트 상세 출력
	public List<MylistVO> bookmarkGetMylistDetail(String listNumber);

	//공개 즐겨찾기 리스트 상세 출력
	public BookmarkVO bookmarkGetDetail(String listNumber);

	//즐겨찾기 제목 및 공개여부 수정
	public void bookmarkModify (BookmarkVO vo) ;

	//즐겨찾기 삭제
	public void bookmarkDelete(String listNumber);

	//즐겨찾기 상세 목록 가게 수정
	public void mylistUpdate(MylistVO vo);

	//즐겨찾기 상세 목록 가게 삭제
	public void mylistDelete(MylistVO vo);

	//즐겨찾기 페이징(미완)
	public int totalbookmarkCount();

	//즐겨찾기 제목 추가
	public void mylistAdd(BookmarkVO vo);

	//베스트 공개 즐겨찾기 이미지 출력
	public BookmarkVO imageSelectBestBookmark(int listNumber);

	public HeartVO findHeart(HashMap<String, Long> number);
	}
