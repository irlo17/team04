package com.team04.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team04.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	
	public void reviewUpdate(ReviewVO vo) {
		
	}
	
	public void reviewDelete(ReviewVO vo) {
		
	}
	
	public List<ReviewVO> reviewGetList(String email){
		
		System.out.println("===> Mybatis reviewGetList() 호출");
		return mybatis.selectList("reviewDAO.reviewGetList",email);
	}
	
	
	
}
