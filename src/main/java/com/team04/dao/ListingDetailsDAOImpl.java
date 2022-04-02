package com.team04.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team04.domain.MylistVO;
import com.team04.domain.ShopVO;

@Repository("listingDetailsDAO")
public class ListingDetailsDAOImpl implements ListingDetailsDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public List<ShopVO> listingDetailsGetList(String shopNumber) {

		return mybatis.selectList("listingDetailsDAO.listingDetailsGetList", shopNumber);

	}

	public List<ShopVO> listingDetailsShopInfo(String shopNumber) {

		return mybatis.selectList("listingDetailsDAO.listingDetailsShopInfo", shopNumber);
	}

	public void listingDetailsReviewInsert(HashMap map) {
		mybatis.insert("listingDetailsDAO.listingDetailsReviewInsert", map);
	}

	public List<ShopVO> listingDetailsOnlyShopInfo(String shopNumber) {

		return mybatis.selectList("listingDetailsDAO.listingDetailsOnlyShopInfo", shopNumber);
	}

	public void listingDetailsAddList(HashMap map) {
		System.out.println("넌 다오란다   " + map.get("shopNumber"));
		mybatis.insert("listingDetailsDAO.listingDetailsAddList", map);
	}

	public List<MylistVO> listingDetailsTotalList(String logemail){
		return mybatis.selectList("listingDetailsDAO.listingDetailsTotalList",logemail);
	}
	

}
