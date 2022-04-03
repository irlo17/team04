package com.team04.dao;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.MylistVO;
import com.team04.domain.ReportVO;
import com.team04.domain.ShopVO;



public interface ListingDetailsDAO {

	public List<ShopVO> listingDetailsGetList(String shopNumber);
	
	public List<ShopVO> listingDetailsShopInfo(String shopNumber);
	
	public void listingDetailsReviewInsert(HashMap map);
		
	public List<ShopVO> listingDetailsOnlyShopInfo(String shopNumber);
		
	public void listingDetailsAddList(HashMap map);
	 
	public List<MylistVO> listingDetailsTotalList(HashMap map);
	
	public Integer listingDetailsShopListCount(HashMap map);
	
	public List<ReportVO> listingDetailsReport(HashMap map);
}
