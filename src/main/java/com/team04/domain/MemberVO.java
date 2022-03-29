package com.team04.domain;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {

	private String memberEmail;
	private String memberNickname;
	private String memberPassword;
	private String memberName;
	private String memberBirth;
	private String memberTel;
	private String memberFname;		// 파일명
	private String memberRealfname; // 저장된 파일이름
	
	MultipartFile memberFile;
	

	
	// getter, setter
	public MultipartFile getMemberFile() {
		return memberFile;
	}
	
	public void setMemberFile(MultipartFile memberFile) {
		this.memberFile = memberFile;
		
		/*
		 * 파일 업로드 작업
		 */
		if(!memberFile.isEmpty()) // 파일이 들어왔을 때만 작업
		{
			this.memberFname = memberFile.getOriginalFilename();
			
			// 실제로 저장되는 파일명
			UUID memberUuid = UUID.randomUUID();
			memberRealfname = memberUuid.toString()+"_"+memberFname;
			
			// 저장
			File memberF = new File("C:\\spring\\webwork\\team04\\src\\main\\webapp\\resources\\upload\\"+memberRealfname);
			
			//예외처리 필수
			try {
				memberFile.transferTo(memberF);
			} catch (Exception e) {
				e.printStackTrace();
			}//t~c 
		}// end of if
	}
	
	
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberBirth() {
		return memberBirth;
	}
	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}
	public String getMemberTel() {
		return memberTel;
	}
	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}
	public String getMemberFname() {
		return memberFname;
	}
	public void setMemberFname(String memberFname) {
		this.memberFname = memberFname;
	}
	public String getMemberRealfname() {
		return memberRealfname;
	}
	public void setMemberRealfname(String memberRealfname) {
		this.memberRealfname = memberRealfname;
	}
	
}
