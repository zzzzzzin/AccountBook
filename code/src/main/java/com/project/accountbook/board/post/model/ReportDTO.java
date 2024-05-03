package com.project.accountbook.board.post.model;

public class ReportDTO {
	
	private int seq;
	private String nickname;
	private String title;
	private String date;
	private int viewCount;
	private int likeCount;
	private String reportCount;
	private String secretCheck;
	private String blindCheck;
	

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public String getReportCount() {
		return reportCount;
	}

	public void setReportCount(String reportCount) {
		this.reportCount = reportCount;
	}

	public String getSecretCheck() {
		return secretCheck;
	}

	public void setSecretCheck(String secretCheck) {
		this.secretCheck = secretCheck;
	}

	public String getBlindCheck() {
		return blindCheck;
	}

	public void setBlindCheck(String blindCheck) {
		this.blindCheck = blindCheck;
	}

	@Override
	public String toString() {
		return "ReportDTO [seq=" + seq + ", nickname=" + nickname + ", title=" + title + ", date=" + date
				+ ", viewCount=" + viewCount + ", likeCount=" + likeCount + ", reportCount=" + reportCount
				+ ", secretCheck=" + secretCheck + ", blindCheck=" + blindCheck + "]";
	}

	

	
	
	


}
