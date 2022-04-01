package com.team04.dao;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.ShopVO;



public interface ListingDetailsDAO {

	public List<ShopVO> listingDetailsGetList(String shopNumber);
	
	public List<ShopVO> listingDetailsShopInfo(String shopNumber);
	
	public void listingDetailsReviewInsert(HashMap map);
		
	
}
