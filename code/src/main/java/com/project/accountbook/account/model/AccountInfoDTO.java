package com.project.accountbook.account.model;

/*
tblAccInfo
tblAcc
tblPurchaseWishList
tblFixedDepositWithdrawalCheck
tblAccCategoryList
*/
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
	
	//가계부
	private String idMember;
	
	//구매 위시 목록
	private String productName;
	//seqAcc 위에 존재
	
	//고정 입출금 여부
	private String fdwContent;
	private String seqFixedFluctuationPeriod;
	
	//가계부 카테고리 목록
	private String seqAccCategory;
	private String seqAccInfo;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAccInfoDate() {
		return accInfoDate;
	}
	public void setAccInfoDate(String accInfoDate) {
		this.accInfoDate = accInfoDate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSeqAcc() {
		return seqAcc;
	}
	public void setSeqAcc(String seqAcc) {
		this.seqAcc = seqAcc;
	}
	public String getSeqReasonChangeCategory() {
		return seqReasonChangeCategory;
	}
	public void setSeqReasonChangeCategory(String seqReasonChangeCategory) {
		this.seqReasonChangeCategory = seqReasonChangeCategory;
	}
	public String getSeqFixedFluctuationCheck() {
		return seqFixedFluctuationCheck;
	}
	public void setSeqFixedFluctuationCheck(String seqFixedFluctuationCheck) {
		this.seqFixedFluctuationCheck = seqFixedFluctuationCheck;
	}
	public String getSeqDepositWithdrawalStatus() {
		return seqDepositWithdrawalStatus;
	}
	public void setSeqDepositWithdrawalStatus(String seqDepositWithdrawalStatus) {
		this.seqDepositWithdrawalStatus = seqDepositWithdrawalStatus;
	}
	public String getIdMember() {
		return idMember;
	}
	public void setIdMember(String idMember) {
		this.idMember = idMember;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getFdwContent() {
		return fdwContent;
	}
	public void setFdwContent(String fdwContent) {
		this.fdwContent = fdwContent;
	}
	public String getSeqFixedFluctuationPeriod() {
		return seqFixedFluctuationPeriod;
	}
	public void setSeqFixedFluctuationPeriod(String seqFixedFluctuationPeriod) {
		this.seqFixedFluctuationPeriod = seqFixedFluctuationPeriod;
	}
	public String getSeqAccCategory() {
		return seqAccCategory;
	}
	public void setSeqAccCategory(String seqAccCategory) {
		this.seqAccCategory = seqAccCategory;
	}
	public String getSeqAccInfo() {
		return seqAccInfo;
	}
	public void setSeqAccInfo(String seqAccInfo) {
		this.seqAccInfo = seqAccInfo;
	}
	
	@Override
	public String toString() {
		return "AccountInfoDTO [content=" + content + ", accInfoDate=" + accInfoDate + ", price=" + price
				+ ", location=" + location + ", seqAcc=" + seqAcc + ", seqReasonChangeCategory="
				+ seqReasonChangeCategory + ", seqFixedFluctuationCheck=" + seqFixedFluctuationCheck
				+ ", seqDepositWithdrawalStatus=" + seqDepositWithdrawalStatus + ", idMember=" + idMember
				+ ", productName=" + productName + ", fdwContent=" + fdwContent + ", seqFixedFluctuationPeriod="
				+ seqFixedFluctuationPeriod + ", seqAccCategory=" + seqAccCategory + ", seqAccInfo=" + seqAccInfo + "]";
	}
	
}
