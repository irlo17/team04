package com.team04.service;

import java.util.List;

import com.team04.domain.ShopVO;

// Shop(가게 테이블) Service 인터페이스
public interface ShopService {
	
	List<ShopVO> shopGetList(ShopVO vo);

	// 가게 추가
	void shopInsertManager(ShopVO shopVO);
	
	// 가게 수정
	void shopUpdateManager(ShopVO shopVO);
	
	// 가게 삭제
	void shopDeleteManager(ShopVO shopVO);
	
	// 가게 상세 조회
	ShopVO shopGetManager(ShopVO shopVO);
	
	// 가게 전체 리스트 조회
	List<ShopVO> shopGetListManager();
	
}
