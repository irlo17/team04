package com.team04.domain;

public class MylistVO {

	private int listNumber;
	private int shopNumber;
	
	
	//나의 즐겨찾기 상세목록 검색을 위한 컬럼 추가
	private String shopTitle;		// 상호명
	private String shopTel;			// 가게 전화번호
	private String shopPriceRange;	// 가격대
	private String shopFood;		// 음식유형
	private String shopAddressSi;
	private String shopRealfname;
	
	
	
	//constructor-----------------------------------------------------------------------
	public MylistVO() {
		
	}
	
	public MylistVO(int listNumber, int shopNumber, String shopTitle, String shopTel, String shopPriceRange,
			String shopFood, String shopAddressSi, String shopRealfname) {
		super();
		this.listNumber = listNumber;
		this.shopNumber = shopNumber;
		this.shopTitle = shopTitle;
		this.shopTel = shopTel;
		this.shopPriceRange = shopPriceRange;
		this.shopFood = shopFood;
		this.shopAddressSi = shopAddressSi;
		this.shopRealfname = shopRealfname;
	}





	//getter&setter------------------------------------------------------------
	public int getListNumber() {
		return listNumber;
	}
	public void setListNumber(int listNumber) {
		this.listNumber = listNumber;
	}
	public int getShopNumber() {
		return shopNumber;
	}
	public void setShopNumber(int shopNumber) {
		this.shopNumber = shopNumber;
	}


	public String getShopTitle() {
		return shopTitle;
	}


	public void setShopTitle(String shopTitle) {
		this.shopTitle = shopTitle;
	}


	public String getShopTel() {
		return shopTel;
	}


	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}


	public String getShopPriceRange() {
		return shopPriceRange;
	}


	public void setShopPriceRange(String shopPriceRange) {
		this.shopPriceRange = shopPriceRange;
	}


	public String getShopFood() {
		return shopFood;
	}


	public void setShopFood(String shopFood) {
		this.shopFood = shopFood;
	}


	public String getShopAddressSi() {
		return shopAddressSi;
	}


	public void setShopAddressSi(String shopAddressSi) {
		this.shopAddressSi = shopAddressSi;
	}
 
	public String getShopRealfname() {
		return shopRealfname;
	}

 
	public void setShopRealfname(String shopRealfname) {
		this.shopRealfname = shopRealfname;
	}
	
	
	
}