package com.team04.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team04.dao.ShopDAOImpl;
import com.team04.domain.ShopVO;

// Shop(가게 테이블) Service 구현 클래스
@Service
public class ShopServiceImpl implements ShopService{
	
	// ShopDAOImpl 에 있는 함수를 사용하기 위한 멤버변수 선언
	@Autowired
	private ShopDAOImpl shopDAO;
	
	public List<ShopVO> shopGetList(ShopVO vo) {
		
		return shopDAO.shopGetList(vo);
	}

	/**
	 * 메소드명 : shopInsert()
	 * 인자 : ShopVO shopVO (= 스프링이 자동으로 ShopVO에 담은 값들을 받아옴)
	 * 리턴형 : 없음
	 * 사용 : 지번주소를 나누어서 각각 주소_시, 주소_구, 주소_동에 담고,
	 * 		가게 주소를 도로명주소+상세주소로 담음
	 * 		그리고 ShopDAOImpl에 있는 함수 shopInsert()를 호출하여,
	 * 		ShopVO에 담은 값들을 DB에 insert 하도록 하는 변수
	 */
	@Override
	public void shopInsert(ShopVO shopVO) {
		
		// 작성된 지번주소를 변수에 담기
		String jibun = shopVO.getShopAddrJibun();
		// 지번주소의 공백으로 자른 문자열을 배열에 하나씩 담기
		String[] addr = jibun.split(" ");
		// 시 = 광역시, 도(addr배열의 첫번째)
		shopVO.setShopAddressSi(addr[0]);
		// 구 = 도에 속한 시, 광역시의 구(addr배열의 두번째)
		shopVO.setShopAddressGu(addr[1]);
		// 동 = 동 (작성된 참고사항을 동에 담기)
		shopVO.setShopAddressDong(shopVO.getShopAddrCamgo());
		// 작성된 도로명주소와 상세주소를 가게 주소로 담기
		shopVO.setShopAddress(shopVO.getShopAddrDoro() + " " + shopVO.getShopAddrDetail());
		
		// shopDAO에서 shopInsert함수 호출
		shopDAO.shopInsert(shopVO);
	}

	@Override
	public void shopUpdate(ShopVO shopVO) {
		
	}

	@Override
	public void shopDelete(ShopVO shopVO) {
		
	}

	@Override
	public ShopVO shopGet(ShopVO shopVO) {
		
		return null;
	}

	/**
	 * 메소드명 : shopGetList()
	 * 인자 : 없음
	 * 리턴형 : ShopVO를 담은 List
	 * 사용 : ShopDAOImpl에 있는 함수 shopGetList()를 호출하여,
	 * 		보내온 List형을 다시 리턴하는 함수
	 */
	@Override
	public List<ShopVO> shopGetList() {
		return shopDAO.shopGetList();
	}
	
	

}
