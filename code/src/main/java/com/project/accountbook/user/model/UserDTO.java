package com.project.accountbook.user.model;

import lombok.Data;

/*tblMember, tblAdmin(id, pw, nickname)
tblUser(회원가입 시 insert 필요)
tblProfileimg
tblMemberPriv
*/
@Data
public class UserDTO {
	//회원, 관리자
	private String id;
	private String pw;
	private String name;
	private String nickname;
	private String phoneNumber;
	private String ssn;
	private String joinDate;
	private int monthsSinceJoin;	
	
	private int monthlyPaycheck;
	
	private int savingsGoals;
	private String seqCompressionIntensity;
	private String seqSavingsPeriod;
	private int spPeriod;

	private String gender;
	private int reportCount;
	private String seqSurvey;
	private String seqProfileimg;
	//사용자 테이블
	private String idMember;
	//프로필 이미지
	private String fileName;
	private String fileLink;
	//권한
	private String seqPriv;
	
	}