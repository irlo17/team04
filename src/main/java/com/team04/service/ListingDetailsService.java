package com.team04.service;

import java.util.HashMap;
import java.util.List;

import com.team04.domain.MylistVO;
import com.team04.domain.ReportVO;
import com.team04.domain.ShopVO;

public interface ListingDetailsService {

	List<ShopVO> listingDetailsGetList(String shopNumber);
	
	 List<ShopVO> listingDetailsShopInfo(String shopNumber);
	
	 
	  void listingDetailsReviewInsert(HashMap map) ;
	
	  List<ShopVO> listingDetailsOnlyShopInfo(String shopNumber);
			 
	void listingDetailsAddList( HashMap map );

	
	List<MylistVO> listingDetailsTotalList(HashMap map);
	
	Integer listingDetailsShopListCount(HashMap map);
	
	List<ReportVO> listingDetailsReport(HashMap map);
	
}
