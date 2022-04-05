package com.team04.domain;

public class HeartVO {
	int likeNumber;
	int listNumber;
	String memberEmail;
	int like_count;
	
	
	
	public HeartVO() {
	
	}
	public HeartVO(int likeNumber, int listNumber, String memberEmail, int like_count) {
		super();
		this.likeNumber = likeNumber;
		this.listNumber = listNumber;
		this.memberEmail = memberEmail;
		this.like_count = like_count;
	}
	
	
	
	
	public int getLikeNumber() {
		return likeNumber;
	}
	public void setLikeNumber(int likeNumber) {
		this.likeNumber = likeNumber;
	}
	public int getListNumber() {
		return listNumber;
	}
	public void setListNumber(int listNumber) {
		this.listNumber = listNumber;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}

	
	
	
}
