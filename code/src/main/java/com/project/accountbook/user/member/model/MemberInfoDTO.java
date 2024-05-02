package com.project.accountbook.user.member.model;

/*
tblMemberFinance
tblSurvey
*/
public class MemberInfoDTO {
	//회원 금융 정보
	private String idMember;
	private String seqProperty;
	private String seqDebt;
	
	//챌린지
	private int monthlyPaycheck;
	private int savingsGoals;
	private String seqCompressionIntensity;
	private String seqSavingsPeriod;

	
	
	public String getIdMember() {
		return idMember;
	}
	public void setIdMember(String idMember) {
		this.idMember = idMember;
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
	@Override
	public String toString() {
		return "MemberInfoDTO [idMember=" + idMember + ", seqProperty=" + seqProperty + ", seqDebt=" + seqDebt
				+ ", monthlyPaycheck=" + monthlyPaycheck + ", savingsGoals=" + savingsGoals
				+ ", seqCompressionIntensity=" + seqCompressionIntensity + ", seqSavingsPeriod=" + seqSavingsPeriod
				+ "]";
	}
	
}
