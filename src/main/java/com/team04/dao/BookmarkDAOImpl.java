package com.team04.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team04.domain.BookmarkVO;
import com.team04.domain.MylistVO;

@Repository("bookmarkDAO")
public class BookmarkDAOImpl implements BookmarkDAO {
 
	@Autowired
	private SqlSessionTemplate mybatis;

	  /**공개 즐겨찾기 목록 & 검색
	 *인자:HashMap map으로 제목이나 닉네임을 가져와 검색,인자를 안주면 전체 공개목록 검색
	 *리턴형:List<BookmarkVO>
	 */
	@Override public List<BookmarkVO> bookmarkGetList(HashMap map) {
	  System.out.println("===> Mybatis bookmarkGetList() 호출"); 
	  return mybatis.selectList("BookmarkDAO.bookmarkGetList",map); }
	   

	/**좋아요 수 증가&감소(미완성)
	 *
	 */
	@Override
	public void bookmarkUpdateLike(int listNum) {
		System.out.println("===> Mybatis bookmarkUpdateLike() 호출"); 
		  mybatis.selectList("BookmarkDAO.bookmarkUpdateLike",listNum); 
	}
	
	@Override
	public void bookmarkUpdateLikeMa(int listNum) {
		System.out.println("===> Mybatis bookmarkUpdateLikeMa() 호출"); 
		  mybatis.selectList("BookmarkDAO.bookmarkUpdateLikeMa",listNum); 
	}
	
	/**공개목록 좋아요 순으로 출력(미완성)
	 *
	 */
	@Override
	public List<BookmarkVO> bookmarkGetBestList(){
		System.out.println("===> Mybatis bookmarkGetBestList() 호출"); 
		return mybatis.selectList("BookmarkDAO.bookmarkGetBestList");
	}   
	/**나의 즐겨찾기 목록 보기 (미완성)
	 *
	 */
	@Override
	public List<BookmarkVO> bookmarkGetMylist(String memberEmail){
		System.out.println("===> Mybatis bookmarkGetMylist() 호출"); 
		return mybatis.selectList("BookmarkDAO.bookmarkGetMylist",memberEmail );
	}
	
	/**나의 즐겨찾기 상세목록 보기
	 *인자:String listNumber 나의 즐겨찾기 목록에서 리스트 번호를 받아옴
	 *리턴형:List<MylistVO>
	 */
	@Override
	public List<MylistVO> bookmarkGetMylistDetail(String listNumber){
		System.out.println("===> Mybatis bookmarkGetMylistDetail() 호출"); 
		return mybatis.selectList("BookmarkDAO.bookmarkGetMylistDetail",listNumber);
	}
	
	
}
