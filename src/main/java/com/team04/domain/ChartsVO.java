package com.team04.domain;

public class ChartsVO {

	// ====멤버변수====
	// 월별 즐겨찾기 리스트 생성수 차트와 관련된 변수
	private int cntList;
	private String monthList;
	// 월별 회원가입 수 차트와 관련된 변수
	private int cntMember;
	private String month;
	// 음식종류별 가게 수 차트와 관련된 변수
	private String shopFood;
	private int cntShop;
	
	// 생성된 총 즐겨찾기 리스트 수
	private int totalCntBookmark;
	// 회원가입한 총 회원 수
	private int totalCntMember;
	// 총 가게 수
	private int totalCntShop;
	
	
	// 기본생성자
	public ChartsVO() {
		
	}

	// 생성자 - 인자있는
	public ChartsVO(int cntMember, String month, String shopFood, int cntShop
			, int cntList, String monthList, int totalCntMember, int totalCntBookmark, int totalCntShop) {
		super();
		this.cntMember = cntMember;
		this.month = month;
		this.shopFood = shopFood;
		this.cntShop = cntShop;
		this.cntList = cntList;
		this.monthList = monthList;
		this.totalCntMember = totalCntMember;
		this.totalCntBookmark = totalCntBookmark;
		this.totalCntShop = totalCntShop;
	}
	
	// setter & getter
	public int getCntMember() {
		return cntMember;
	}
	public void setCntMember(int cntMember) {
		this.cntMember = cntMember;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}

	public String getShopFood() {
		return shopFood;
	}

	public void setShopFood(String shopFood) {
		this.shopFood = shopFood;
	}

	public int getCntShop() {
		return cntShop;
	}

	public void setCntShop(int cntShop) {
		this.cntShop = cntShop;
	}

	public int getCntList() {
		return cntList;
	}

	public void setCntList(int cntList) {
		this.cntList = cntList;
	}

	public String getMonthList() {
		return monthList;
	}

	public void setMonthList(String monthList) {
		this.monthList = monthList;
	}

	public int getTotalCntMember() {
		return totalCntMember;
	}

	public void setTotalCntMember(int totalCntMember) {
		this.totalCntMember = totalCntMember;
	}

	public int getTotalCntBookmark() {
		return totalCntBookmark;
	}

	public void setTotalCntBookmark(int totalCntBookmark) {
		this.totalCntBookmark = totalCntBookmark;
	}

	public int getTotalCntShop() {
		return totalCntShop;
	}

	public void setTotalCntShop(int totalCntShop) {
		this.totalCntShop = totalCntShop;
	}
	
	
	
}
