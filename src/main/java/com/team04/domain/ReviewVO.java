package com.team04.domain;

public class ReviewVO {

	private int reviewNumber;
	private String reviewDate;
	private String reviewGrade;
	private String reviewContent;
	private int shopNumber;
	private String memberEmail;
	private String reviewFname;
	private String reviewRealfname;
	
	
	
	
	
	
	public ReviewVO() {
	}
	
	
	
	
	
	
	public ReviewVO(int reviewNumber, String reviewDate, String reviewGrade, String reviewContent, int shopNumber,
			String memberEmail, String reviewFname, String reviewRealfname) {
		super();
		this.reviewNumber = reviewNumber;
		this.reviewDate = reviewDate;
		this.reviewGrade = reviewGrade;
		this.reviewContent = reviewContent;
		this.shopNumber = shopNumber;
		this.memberEmail = memberEmail;
		this.reviewFname = reviewFname;
		this.reviewRealfname = reviewRealfname;
	}






	public int getReviewNumber() {
		return reviewNumber;
	}
	public void setReviewNumber(int reviewNumber) {
		this.reviewNumber = reviewNumber;
	}
	public String getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getReviewGrade() {
		return reviewGrade;
	}
	public void setReviewGrade(String reviewGrade) {
		this.reviewGrade = reviewGrade;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getShopNumber() {
		return shopNumber;
	}
	public void setShopNumber(int shopNumber) {
		this.shopNumber = shopNumber;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getReviewFname() {
		return reviewFname;
	}
	public void setReviewFname(String reviewFname) {
		this.reviewFname = reviewFname;
	}
	public String getReviewRealfname() {
		return reviewRealfname;
	}
	public void setReviewRealfname(String reviewRealfname) {
		this.reviewRealfname = reviewRealfname;
	}
	
	

	
	
	
	
	
	
}
