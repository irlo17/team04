package com.team04.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team04.domain.BookmarkVO;

@Repository("bookmarkDAO")
public class BookmarkDAOImpl implements BookmarkDAO {
 
	@Autowired
	private SqlSessionTemplate mybatis;

	  @Override public List<BookmarkVO> bookmarkGetList(HashMap map) {
	  System.out.println("===> Mybatis bookmarkGetList() 호출"); 
	  return mybatis.selectList("BookmarkDAO.bookmarkGetList",map); }
	   

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
	
}
