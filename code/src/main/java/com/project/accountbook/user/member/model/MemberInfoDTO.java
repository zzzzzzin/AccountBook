package com.project.accountbook.user.member.model;

/*
tblMemberFinance
tblSurvey
*/
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

	public int getSavingPeriod() {
		return savingPeriod;
	}

	public void setSavingPeriod(int savingPeriod) {
		this.savingPeriod = savingPeriod;
	}

	//나의 카드
	private String cardNumber;
	private String alias;
	private String validity;
	private String mcIdMember;
	private String seqCardInformation;
	
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
	
	
	public String getMfIdMember() {
		return mfIdMember;
	}
	
	public void setMfIdMember(String mfIdMember) {
		this.mfIdMember = mfIdMember;
	}
	
	public String getSeqProperty() {
		return seqProperty;
	}
	
	public void setSeqProperty(String seqProperty) {
		this.seqProperty = seqProperty;
	}
	
	public String getSeqDebt() {
		return seqDebt;
	}
	
	public void setSeqDebt(String seqDebt) {
		this.seqDebt = seqDebt;
	}
	
	public int getMonthlyPaycheck() {
		return monthlyPaycheck;
	}
	
	public void setMonthlyPaycheck(int monthlyPaycheck) {
		this.monthlyPaycheck = monthlyPaycheck;
	}
	
	public int getSavingsGoals() {
		return savingsGoals;
	}
	
	public void setSavingsGoals(int savingsGoals) {
		this.savingsGoals = savingsGoals;
	}
	
	public String getSeqCompressionIntensity() {
		return seqCompressionIntensity;
	}
	
	public void setSeqCompressionIntensity(String seqCompressionIntensity) {
		this.seqCompressionIntensity = seqCompressionIntensity;
	}
	
	public String getSeqSavingsPeriod() {
		return seqSavingsPeriod;
	}
	
	public void setSeqSavingsPeriod(String seqSavingsPeriod) {
		this.seqSavingsPeriod = seqSavingsPeriod;
	}
	
	public String getCardNumber() {
		return cardNumber;
	}
	
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	
	public String getAlias() {
		return alias;
	}
	
	public void setAlias(String alias) {
		this.alias = alias;
	}
	
	public String getValidity() {
		return validity;
	}
	
	public void setValidity(String validity) {
		this.validity = validity;
	}
	
	public String getMcIdMember() {
		return mcIdMember;
	}
	public void setMcIdMember(String mcIdMember) {
		this.mcIdMember = mcIdMember;
	}
	
	public String getSeqCardInformation() {
		return seqCardInformation;
	}
	
	public void setSeqCardInformation(String seqCardInformation) {
		this.seqCardInformation = seqCardInformation;
	}
	
	public String getName() {
		return Name;
	}
	
	public void setName(String name) {
		
		Name = name;
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
	
	public int getSeqReasonsChangeList() {
		return seqReasonsChangeList;
	}
	
	public void setSeqReasonsChangeList(int seqReasonsChangeList) {
		this.seqReasonsChangeList = seqReasonsChangeList;
	}
	
	public int getSeqMyCard() {
		return seqMyCard;
	}
	
	public void setSeqMyCard(int seqMyCard) {
		this.seqMyCard = seqMyCard;
	}
	
	
}
