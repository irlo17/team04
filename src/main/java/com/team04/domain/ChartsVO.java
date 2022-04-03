package com.team04.domain;

public class ChartsVO {

	// 멤버변수
	private int cnt;
	private String month;
	
	// 기본생성자
	public ChartsVO() {
		
	}

	// 생성자 - 인자있는
	public ChartsVO(int cnt, String month) {
		super();
		this.cnt = cnt;
		this.month = month;
	}
	
	// setter & getter
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	
	
}
