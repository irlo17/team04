package com.team04.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team04.dao.ShopDAOImpl;
import com.team04.domain.ShopVO;

@Service
public class ShopServiceImpl implements ShopService{
	
	@Autowired
	private ShopDAOImpl shopDAO;
	
	public List<ShopVO> shopGetList(ShopVO vo) {
		
		return shopDAO.shopGetList(vo);
	}

}
