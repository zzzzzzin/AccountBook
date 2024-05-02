package com.project.accountbook.card.model;

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
	private int SeqCardInformation;
	
	//카드 혜택 카테고리
	private String ccName;
	
	//카드/가계부 카테고리 연결
	private int caaSeqCardCategory;
	private int seqAccCategory;
	
	
	public String getCiName() {
		return ciName;
	}
	
	public void setCiName(String ciName) {
		this.ciName = ciName;
	}
	
	public String getExplanation() {
		return explanation;
	}
	
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	
	public int getAnnualFee() {
		return annualFee;
	}
	
	public void setAnnualFee(int annualFee) {
		this.annualFee = annualFee;
	}
	
	public String getOverseasUse() {
		return overseasUse;
	}
	
	public void setOverseasUse(String overseasUse) {
		this.overseasUse = overseasUse;
	}
	
	public String getCardCompany() {
		return cardCompany;
	}
	
	public void setCardCompany(String cardCompany) {
		this.cardCompany = cardCompany;
	}
	
	public String getFileLink() {
		return fileLink;
	}
	
	public void setFileLink(String fileLink) {
		this.fileLink = fileLink;
	}
	
	public int getSeqCardType() {
		return seqCardType;
	}
	
	public void setSeqCardType(int seqCardType) {
		this.seqCardType = seqCardType;
	}
	
	public int getLcbseqCardCategory() {
		return lcbseqCardCategory;
	}
	
	public void setLcbseqCardCategory(int lcbseqCardCategory) {
		this.lcbseqCardCategory = lcbseqCardCategory;
	}
	
	public int getSeqCardInformation() {
		return SeqCardInformation;
	}
	
	public void setSeqCardInformation(int seqCardInformation) {
		SeqCardInformation = seqCardInformation;
	}
	
	public String getCcName() {
		return ccName;
	}
	
	public void setCcName(String ccName) {
		this.ccName = ccName;
	}
	
	public int getCaaSeqCardCategory() {
		return caaSeqCardCategory;
	}
	
	public void setCaaSeqCardCategory(int caaSeqCardCategory) {
		this.caaSeqCardCategory = caaSeqCardCategory;
	}
	
	public int getSeqAccCategory() {
		return seqAccCategory;
	}
	
	public void setSeqAccCategory(int seqAccCategory) {
		this.seqAccCategory = seqAccCategory;
	}
	
}
