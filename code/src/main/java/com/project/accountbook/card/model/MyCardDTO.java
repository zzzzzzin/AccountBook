package com.project.accountbook.card.model;

//tblMyCard
public class MyCardDTO {
	
	private String cardNumber;
	private String alias;
	private String validity;
	private String idMember;
	private String seqCardInformation;
	
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
	public String getIdMember() {
		return idMember;
	}
	public void setIdMember(String idMember) {
		this.idMember = idMember;
	}
	public String getSeqCardInformation() {
		return seqCardInformation;
	}
	public void setSeqCardInformation(String seqCardInformation) {
		this.seqCardInformation = seqCardInformation;
	}
	
	@Override
	public String toString() {
		return "MyCardDTO [cardNumber=" + cardNumber + ", alias=" + alias + ", validity=" + validity + ", idMember="
				+ idMember + ", seqCardInformation=" + seqCardInformation + "]";
	}	

}
