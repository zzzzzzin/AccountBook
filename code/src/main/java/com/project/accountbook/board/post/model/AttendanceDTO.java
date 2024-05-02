package com.project.accountbook.board.post.model;

public class AttendanceDTO {
	
	private int seq;
	private String nickname;
	private String title;
	private String date;
	private int viewCount;
	private int likeCount;
	
	
	public AttendanceDTO(int seq, String nickname, String title, String date, int viewCount, int likeCount) {
		super();
		this.seq = seq;
		this.nickname = nickname;
		this.title = title;
		this.date = date;
		this.viewCount = viewCount;
		this.likeCount = likeCount;
		
	}
	public AttendanceDTO() {
		// TODO Auto-generated constructor stub
	}
	
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
	@Override
	public String toString() {
		return "AttendanceDTO [seq=" + seq + ", nickname=" + nickname + ", title=" + title + ", date=" + date
				+ ", viewCount=" + viewCount + ", likeCount=" + likeCount + "]";
	}
	
	


}
