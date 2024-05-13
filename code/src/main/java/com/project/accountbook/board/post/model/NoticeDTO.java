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
	
}
