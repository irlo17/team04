package com.team04.dao;

import java.util.List;

import com.team04.domain.ReportVO;

// report(신고테이블) Repository 인터페이스
public interface ReportDAO {

	// 신고 추가
	void reportInsert(ReportVO reportVO);
	
	// 신고 수정
	void reportUpdate(ReportVO reportVO);
	
	// 신고 삭제
	void reportDelete(ReportVO reportVO);
	
	// 신고 상세 조회
	ReportVO reportGet(ReportVO reportVO);
	
	// 신고 전체 리스트 조회
	List<ReportVO> reportGetList(ReportVO reportVO);
	
}
