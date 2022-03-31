package com.team04.dao;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.BookmarkVO;



	
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
	
	}
