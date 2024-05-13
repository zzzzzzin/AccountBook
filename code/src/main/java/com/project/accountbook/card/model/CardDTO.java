package com.project.accountbook.card.model;

import lombok.Data;

@Data
public class CardDTO {

	//카드 정보
	private String ciName;
	private String explanation;
	private int annualFee;
	private String overseasUse;
	private String cardCompany;
	private String fileLink;
	private int seqCardType;
	
	//카드 혜택 목록
	private int lcbseqCardCategory;
	private int seqCardInformation;

	//카드 혜택 카테고리
	private String ccName;
	
	//카드/가계부 카테고리 연결
	private int caaSeqCardCategory;
	private int seqAccCategory;
	
	//카드 할인율
	private int discountRate;
	private int seq;
	private String name;
	
	//카드정보
	private String cardNumber;
	private String alias;
	private String enddate;

	private String category;

	
}