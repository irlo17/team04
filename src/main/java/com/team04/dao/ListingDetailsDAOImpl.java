package com.team04.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team04.domain.ShopVO;


@Repository("listingDetailsDAO")
public class ListingDetailsDAOImpl implements ListingDetailsDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<ShopVO>  listingDetailsGetList(String shopNumber) {
		
		
		return mybatis.selectList("listingDetailsDAO.listingDetailsGetList",shopNumber);
		
	}
	
			public List<ShopVO> listingDetailsShopInfo(String shopNumber){
		 
		 return mybatis.selectList("listingDetailsDAO.listingDetailsShopInfo",shopNumber);
	 }
		
	
	
	
	
}
