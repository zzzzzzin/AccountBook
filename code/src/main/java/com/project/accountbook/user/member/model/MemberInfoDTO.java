package com.project.accountbook.user.member.model;

import lombok.Data;

/*
tblMemberFinance
tblSurvey
*/
@Data
public class MemberInfoDTO {
	
	//회원 금융 정보
	private String mfIdMember;
	private String seqProperty;
	private String seqDebt;
	
	//챌린지
	private int monthlyPaycheck;
	private int savingsGoals;
	private int savingPeriod;
	private String seqCompressionIntensity;
	private String seqSavingsPeriod;

	//나의 카드
	private String cardNumber;
	private String alias;
	private String validity;
	private String mcIdMember;
	private String seqCardInformation;
	private String seq;

	//카드 정보
	private String Name;
	private String explanation;
	private int annualFee;
	private String overseasUse;
	private String cardCompany;
	private String fileLink;
	private int seqCardType;
	
	//카드 혜택 목록
	private int seqReasonsChangeList;
	private int seqMyCard;
	
}
