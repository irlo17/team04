package com.team04.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team04.dao.BookmarkDAOImpl;
import com.team04.domain.BookmarkVO;
import com.team04.domain.HeartVO;
import com.team04.domain.MylistVO;
import com.team04.domain.PagingVO;

@Service("bookmarkService")
public class BookmarkServiceImpl implements BookmarkService {

	@Autowired
	private BookmarkDAOImpl bookmarkDAO;

	
	/** 공개 여부가 "yes"인 즐겨찾기 전체 개수
	 * @return int
	 */
	@Override
	public int bookmarkListCount() {
		return bookmarkDAO.bookmarkListCount();
	}
	
	 @Override 
	 public List<BookmarkVO> bookmarkGetList( HashMap map ) { 

		 return bookmarkDAO.bookmarkGetList( map ); }



	@Override
	public List<BookmarkVO> bookmarkGetBestList(){
		return bookmarkDAO.bookmarkGetBestList();
	}

	/** 나만의 즐겨찾기 총 개수 구하기
	 * 	- 페이징을 위해 DB에 입력된 회원의 즐겨찾기 총 개수를 구함
	 * @param memberEmail
	 * @return int 개수 리턴
	 */
	@Override
	public int bookmarkMylistTotalCount(PagingVO paging) {
		return bookmarkDAO.bookmarkMylistTotalCount(paging);
	}

	public List<BookmarkVO> bookmarkGetMylistPaging(PagingVO paging){
		return bookmarkDAO.bookmarkGetMylistPaging(paging);
	}
	public List<BookmarkVO> bookmarkGetMylist(String memberEmail){
		return bookmarkDAO.bookmarkGetMylist(memberEmail);
	}

	public List<MylistVO> bookmarkGetMylistDetail(String listNumber){
		return bookmarkDAO.bookmarkGetMylistDetail(listNumber);
	}


	public BookmarkVO bookmarkGetDetail(String listNumber) {
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

	

	public void mylistAdd(BookmarkVO vo) {
		bookmarkDAO.mylistAdd(vo);
	}

	@Override
	public BookmarkVO imageSelectBestBookmark(int listNumber) {

		return bookmarkDAO.imageSelectBestBookmark(listNumber);
	}


	public BookmarkVO pictureSaveHeart(HeartVO vo) {
	
		return bookmarkDAO.pictureSaveHeart(vo);
	}

	public BookmarkVO pictureRemoveHeart(HeartVO vo) {
		
		return bookmarkDAO.pictureRemoveHeart(vo);

	}
	

}
