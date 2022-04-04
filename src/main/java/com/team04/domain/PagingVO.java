package com.team04.domain;

public class PagingVO {
	
	private int mylistPage;			// 현재 페이지 번호
	private int mylistPerPageNum;	// 한 페이지당 보여줄 게시글의 개수
	
	public int getPageStart() {
		
		return (this.mylistPage-1)*mylistPerPageNum;
	
	}
	
	// 기본 생성자
	public PagingVO() {}
	
	// 인자 있는 생성자
	public PagingVO(int mylistPage, int mylistPerPageNum) {
		super();
		this.mylistPage = 1; 
		this.mylistPerPageNum = 10;
	}
	
	
	public int getMylistPage() {
		return mylistPage;
	}

	public void setMylistPage(int mylistPage) {
		
		if(mylistPage <= 0) {
			this.mylistPage = 1;
		}else {
			this.mylistPage = mylistPage;
		}//end of if
	}
	
	public int getMylistPerPageNum() {
		return mylistPerPageNum;
	}
	public void setMylistPerPageNum(int pageCount) {
		int cnt = this.mylistPerPageNum;
		
		if(pageCount != cnt) {
			this.mylistPerPageNum = cnt;
		}else {
			this.mylistPerPageNum = pageCount;
		}// end of if
	}
	
	
}
