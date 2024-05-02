package com.project.accountbook.user.model;

/*tblMember, tblAdmin(id, pw, nickname)
tblUser(회원가입 시 insert 필요)
tblProfileimg
tblMemberPriv
*/
public class UserDTO {
//회원, 관리자
	private String id;
	private String pw;
	private String name;
	private String nickname;
	private String phoneNumber;
	private String ssn;
	
	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	
	
	public String getIdMember() {
		return idMember;
	}

	public void setIdMember(String idMember) {
		this.idMember = idMember;
	}

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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	public String getSeqSurvey() {
		return seqSurvey;
	}

	public void setSeqSurvey(String seqSurvey) {
		this.seqSurvey = seqSurvey;
	}

	public String getSeqProfileimg() {
		return seqProfileimg;
	}

	public void setSeqProfileimg(String seqProfileimg) {
		this.seqProfileimg = seqProfileimg;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileLink() {
		return fileLink;
	}

	public void setFileLink(String fileLink) {
		this.fileLink = fileLink;
	}

	public String getSeqPriv() {
		return seqPriv;
	}

	public void setSeqPriv(String seqPriv) {
		this.seqPriv = seqPriv;
	}

	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", nickname=" + nickname + ", phoneNumber="
				+ phoneNumber + ", ssn=" + ssn + ", gender=" + gender + ", reportCount=" + reportCount + ", seqSurvey="
				+ seqSurvey + ", seqProfileimg=" + seqProfileimg + ", fileName=" + fileName + ", fileLink=" + fileLink
				+ ", seqPriv=" + seqPriv + "]";
	}
}