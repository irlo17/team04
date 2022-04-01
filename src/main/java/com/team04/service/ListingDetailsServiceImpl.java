package com.team04.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team04.dao.ListingDetailsDAO;
import com.team04.domain.ShopVO;

@Service("listingDetailsService")
public class ListingDetailsServiceImpl implements ListingDetailsService{

	@Autowired
	private ListingDetailsDAO listingDetailsDAO;
	
	
	public List<ShopVO> listingDetailsGetList(String shopNumber) {
		
	
		return listingDetailsDAO.listingDetailsGetList(shopNumber);
	}	
		
	 public List<ShopVO> listingDetailsShopInfo(String shopNumber){
		 
		 return listingDetailsDAO.listingDetailsShopInfo(shopNumber);
	 }
	 
	 public void listingDetailsReviewInsert(HashMap map) {
		 listingDetailsDAO.listingDetailsReviewInsert(map);
		 
	 }
		
	
}
