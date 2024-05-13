package com.project.accountbook.account.model;

import lombok.Data;

/**
 * 가계부 내용을 담는 DTO 클래스입니다.
 */
@Data
public class AccountInfoDTO {
	
	//가계부 내용
	private String content;
	private String accInfoDate;
	private int price;
	private String location;
	private String seqAcc;
	private String seqReasonChangeCategory;
	private String seqFixedFluctuationCheck;
	private String seqDepositWithdrawalStatus;
	private String DepositWithdrawalStatus;
	private String seqAccCategoryList;
	
	private int beforeAcUsage;
	private int nowAcUsage;
	
	private int totalPrice;
	private int totalSaving;
	
	//가계부
	private String idMember;
	
	//구매 위시 목록
	private String productName;
	//seqAcc 위에 존재
	
	//고정 입출금 여부
	private String fdwContent;
	private String seqFixedFluctuationPeriod;
	
	//고정 입출금 기간
	private int ffpPeriod;
	
	//가계부 카테고리 목록
	private String seqAccCategory;
	private String seqAccInfo;
	
	//가계부 카테고리
	private String acName;
		
	//뉴스
	private String title;
	private String link;
	private String pubDate;
	private String description;
			
	//변동 사유 카테고리
	private String seqReasonsChangeList;
	private String seqMyCard;
	
	//카드 정보
	private String cfName;
	private String fileLink;
	
	//나의 카드
	private String alias;
	private String paymentMethod;
	private String cardNumber;		
}
