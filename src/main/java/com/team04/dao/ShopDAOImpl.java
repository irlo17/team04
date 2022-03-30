package com.team04.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team04.domain.ShopVO;

@Repository
public class ShopDAOImpl implements ShopDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ShopVO> shopGetList(ShopVO vo) {
		System.out.println("===> Mybatis shopGetList() 호출");
		return mybatis.selectList("shopDAO.shopGetList",vo);
	}

}
