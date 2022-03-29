package com.team04.domain;

import java.util.Date;

public class ShopVO {
	
	private int shopNumber;
	private String shopTitle;
	private String shopTel;
	private String shopPriceRange;
	private String shopFood;
	private String shopPark;
	private String shopTime;
	private String shopHoliday;
	private String shopContent;
	private Date shopCreateDate;
	private Date shopModifyDate;
	private String shopAddress;
	private String shopAddressSi;
	private String shopAddressGu;
	private String shopAddressDong;
	private String shopRealfname;
		
	public ShopVO() {

	}

	public ShopVO(int shopNumber, String shopTitle, String shopTel, String shopPriceRange, String shopFood,
			String shopPark, String shopTime, String shopHoliday, String shopContent, Date shopCreateDate,
			Date shopModifyDate, String shopAddress, String shopAddressSi, String shopAddressGu, String shopAddressDong,
			String shopRealfname) {
		super();
		this.shopNumber = shopNumber;
		this.shopTitle = shopTitle;
		this.shopTel = shopTel;
		this.shopPriceRange = shopPriceRange;
		this.shopFood = shopFood;
		this.shopPark = shopPark;
		this.shopTime = shopTime;
		this.shopHoliday = shopHoliday;
		this.shopContent = shopContent;
		this.shopCreateDate = shopCreateDate;
		this.shopModifyDate = shopModifyDate;
		this.shopAddress = shopAddress;
		this.shopAddressSi = shopAddressSi;
		this.shopAddressGu = shopAddressGu;
		this.shopAddressDong = shopAddressDong;
		this.shopRealfname = shopRealfname;
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
	public String getShopPark() {
		return shopPark;
	}
	public void setShopPark(String shopPark) {
		this.shopPark = shopPark;
	}
	public String getShopTime() {
		return shopTime;
	}
	public void setShopTime(String shopTime) {
		this.shopTime = shopTime;
	}
	public String getShopHoliday() {
		return shopHoliday;
	}
	public void setShopHoliday(String shopHoliday) {
		this.shopHoliday = shopHoliday;
	}
	public String getShopContent() {
		return shopContent;
	}
	public void setShopContent(String shopContent) {
		this.shopContent = shopContent;
	}
	public Date getShopCreateDate() {
		return shopCreateDate;
	}
	public void setShopCreateDate(Date shopCreateDate) {
		this.shopCreateDate = shopCreateDate;
	}
	public Date getShopModifyDate() {
		return shopModifyDate;
	}
	public void setShopModifyDate(Date shopModifyDate) {
		this.shopModifyDate = shopModifyDate;
	}
	public String getShopAddress() {
		return shopAddress;
	}
	public void setShopAddress(String shopAddress) {
		this.shopAddress = shopAddress;
	}
	public String getShopAddressSi() {
		return shopAddressSi;
	}
	public void setShopAddressSi(String shopAddressSi) {
		this.shopAddressSi = shopAddressSi;
	}
	public String getShopAddressGu() {
		return shopAddressGu;
	}
	public void setShopAddressGu(String shopAddressGu) {
		this.shopAddressGu = shopAddressGu;
	}
	public String getShopAddressDong() {
		return shopAddressDong;
	}
	public void setShopAddressDong(String shopAddressDong) {
		this.shopAddressDong = shopAddressDong;
	}
	public String getShopRealfname() {
		return shopRealfname;
	}
	public void setShopRealfname(String shopRealfname) {
		this.shopRealfname = shopRealfname;
	}
	
	
}
