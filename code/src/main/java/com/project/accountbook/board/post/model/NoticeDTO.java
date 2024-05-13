package com.project.accountbook.board.post.model;

import lombok.Data;

@Data
public class NoticeDTO {
	
	private int seq;
	private String nickname;
	private String title;
	private String date;
	private int viewCount;
	private int likeCount;
	private String reportCount;
	private String secretCheck;
	private String blindCheck;
	
	// 공지 게시판
	public NoticeDTO(int seq, String nickname, String title, String date, int viewCount, int likeCount,
			String reportCount, String secretCheck, String blindCheck) {
		super();
		this.seq = seq;
		this.nickname = nickname;
		this.title = title;
		this.date = date;
		this.viewCount = viewCount;
		this.likeCount = likeCount;
		this.reportCount = reportCount;
		this.secretCheck = secretCheck;
		this.blindCheck = blindCheck;
	}

	
	
}
