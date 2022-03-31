package com.team04.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team04.dao.ReportDAOImpl;
import com.team04.domain.ReportVO;

// Report(신고 테이블) Service 구현 클래스
@Service
public class ReportServiceImpl implements ReportService {

	// Report(신고 테이블)
	@Autowired
	ReportDAOImpl reportDAO;
	
	@Override
	public void reportInsert(ReportVO reportVO) {
		
	}

	@Override
	public void reportUpdate(ReportVO reportVO) {
		
	}

	@Override
	public void reportDelete(ReportVO reportVO) {
		
	}

	@Override
	public ReportVO reportGet(ReportVO reportVO) {
		return null;
	}

	
	/**
	 * 메소드명 : reportGetList()
	 * 인자 : ReportVO reportVO
	 * 리턴형 : ReportVO가 담긴 List
	 * 사용 : 모든 신고 리스트를 조회하여 ReportVO에 담아 List형으로 리턴된 것을 다시 리턴
	 */
	@Override
	public List<ReportVO> reportGetList(ReportVO reportVO) {
		return reportDAO.reportGetList(reportVO);
	}

}
