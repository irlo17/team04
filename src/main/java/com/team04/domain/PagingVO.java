package com.team04.domain;

public class PagingVO {
	
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage;	// 한페이지당 레코드 수
	private int startRow;			// 시작하는 행
	private int endRow;				// 끝나는 행
	private int page;				// 현재 페이지
	private String memberEmail;		// 회원 이메일
	
	//**********************************bookmarkGetMylistDetailPaging
	private String listNumber;
	
	public String getListNumber() {
		return listNumber;
	}
	public void setListNumber(String listNumber) {
		this.listNumber = listNumber;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getTotalRecCount() {
		return totalRecCount;
	}
	public void setTotalRecCount(int totalRecCount) {
		this.totalRecCount = totalRecCount;
	}
	public int getPageTotalCount() {
		return pageTotalCount;
	}
	public void setPageTotalCount(int totalRecCount) {
		pageTotalCount = (totalRecCount/getCountPerPage()) + (totalRecCount%getCountPerPage()>0?1:0);
	}
	public int getCountPerPage() {
		return countPerPage;
	}
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int page) {
		startRow = page*getCountPerPage()-(getCountPerPage()-1);;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int page) {
		endRow = page*getCountPerPage();
	}

	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
}
