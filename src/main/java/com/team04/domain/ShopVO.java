package com.team04.domain;

import java.io.File;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ShopVO {
	
	/* 멤버변수 시작 */
	private int shopNumber;			// 가게번호
	private String shopTitle;		// 상호명
	private String shopTel;			// 가게 전화번호
	private String shopPriceRange;	// 가격대
	private String shopFood;		// 음식유형
	private String shopPark;		// 주차여부
	private String shopTime;		// 영업시간
	private String shopHoliday;		// 휴일
	private String shopContent;		// 가게설명
	private Date shopCreateDate;	// 내용 입력 날짜
	private Date shopModifyDate;	// 내용 수정 날짜
	private String shopAddress;		// 가게 주소
	
	// 가게 주소 담을 변수
	private String shopAddrDoroManager;		//도로명주소
	private String shopAddrJibunManager;		//지번주소
	private String shopAddrDetailManager;		//상세주소
	
	// 필터용 주소 입력
	private String shopAddressSi;
	private String shopAddressGu;
	private String shopAddressDong;

	// 저장된 파일 이름
	private String shopRealfname;
	
	// 파일 업로드를 위한 변수
	MultipartFile shopFile;
	/* 멤버변수 끝 */
	
	// 기본 생성자 - 인자없는
	public ShopVO() {

	}
	
	// 생성자 - 인자있는
	public ShopVO(int shopNumber, String shopTitle, String shopTel, String shopPriceRange, String shopFood,
			String shopPark, String shopTime, String shopHoliday, String shopContent, Date shopCreateDate,
			Date shopModifyDate, String shopAddress, String shopAddressSi, String shopAddressGu, String shopAddressDong,
			String shopRealfname, MultipartFile shopFile, 
			String shopAddrDoroManager, String shopAddrJibunManager, String shopAddrDetailManager) {
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
		this.shopFile = shopFile;
		this.shopAddrDoroManager = shopAddrDoroManager;
		this.shopAddrJibunManager = shopAddrJibunManager;
		this.shopAddrDetailManager = shopAddrDetailManager;
	}
	
	// setter & getter
	public MultipartFile getShopFile() {
		return shopFile;
	}
	public void setShopFile(MultipartFile shopFile) {
		this.shopFile = shopFile;
		/* 파일 업로드 작업*/
		if(!shopFile.isEmpty()) {
			
			// 실제로 저장되는 파일명
			shopRealfname = shopFile.getOriginalFilename();
			
			// 저장
			File shopF = new File("C:\\study\\spring\\semi\\semi\\src\\main\\webapp\\resources\\manager\\upload\\" + shopRealfname);
			
			// 예외처리
			try {
				shopFile.transferTo(shopF);
			} catch (Exception e) {
				e.toString();
				e.printStackTrace();
			}
		}
	}
	
	/*주소 담을 변수*/
	
	public String getShopAddrDoroManager() {
		return shopAddrDoroManager;
	}


	public void setShopAddrDoroManager(String shopAddrDoroManager) {
		this.shopAddrDoroManager = shopAddrDoroManager;
	}

	public String getShopAddrJibunManager() {
		return shopAddrJibunManager;
	}

	public void setShopAddrJibunManager(String shopAddrJibunManager) {
		this.shopAddrJibunManager = shopAddrJibunManager;
	} 

	public String getShopAddrDetailManager() {
		return shopAddrDetailManager;
	}

	public void setShopAddrDetailManager(String shopAddrDetailManager) {
		this.shopAddrDetailManager = shopAddrDetailManager;
	}
	/*주소 담을 변수*/

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
