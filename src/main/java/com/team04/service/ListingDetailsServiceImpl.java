package com.team04.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team04.dao.ListingDetailsDAO;
import com.team04.domain.MylistVO;
import com.team04.domain.ReportVO;
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
	 
	 public List<ShopVO> listingDetailsOnlyShopInfo(String shopNumber) {
		 
		 return listingDetailsDAO.listingDetailsOnlyShopInfo(shopNumber);
	 }
		
	 public void listingDetailsAddList(HashMap map) {
			/* System.out.println("넌 서비스란다" + map.get("shopNumber")); */
		 listingDetailsDAO.listingDetailsAddList(map);
	 }
	 
	public List<MylistVO> listingDetailsTotalList(HashMap map){
		return listingDetailsDAO.listingDetailsTotalList(map);
	}
	
	public Integer listingDetailsShopListCount(HashMap map){
		return listingDetailsDAO.listingDetailsShopListCount(map);
	}
	
	public List<ReportVO> listingDetailsReport(HashMap map){
		return listingDetailsDAO.listingDetailsReport(map);
	}
	 
	 
	
}
