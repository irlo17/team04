package com.team04.dao;

import java.util.List;

import com.team04.domain.ReviewVO;

public interface ReviewDAO {

	public void reviewUpdate(ReviewVO vo);
	
	public void reviewDelete(ReviewVO vo);
	
	public List<ReviewVO> reviewGetList(String email);
	
	
}
