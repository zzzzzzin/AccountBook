package com.project.accountbook.board.post.model;

import java.util.Date;

/*
tblPost
tblAttachedFile
*/
public class PostDTO {
	
	//게시글
	private String seqBoard;
	private String seqUser;
	private String title;
	private String content;
	private Date writeDate;
	private Date editDate;
	private int viewCount;
	private int likeCount;
	private int dislikeCount;
	private int reportCount;
	private int secretCheck;
	private int blindCheck;
	
	//첨부파일
	private String seqPost;
	private String fileName;
	private String fileLink;
	
	public String getSeqBoard() {
		return seqBoard;
	}
	public void setSeqBoard(String seqBoard) {
		this.seqBoard = seqBoard;
	}
	public String getSeqUser() {
		return seqUser;
	}
	public void setSeqUser(String seqUser) {
		this.seqUser = seqUser;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date date) {
		this.writeDate = date;
	}
	public Date getEditDate() {
		return editDate;
	}
	public void setEditDate(Date editDate) {
		this.editDate = editDate;
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
	public int getDislikeCount() {
		return dislikeCount;
	}
	public void setDislikeCount(int dislikeCount) {
		this.dislikeCount = dislikeCount;
	}
	public int getReportCount() {
		return reportCount;
	}
	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}
	public int getSecretCheck() {
		return secretCheck;
	}
	public void setSecretCheck(int secretCheck) {
		this.secretCheck = secretCheck;
	}
	public int getBlindCheck() {
		return blindCheck;
	}
	public void setBlindCheck(int blindCheck) {
		this.blindCheck = blindCheck;
	}
	public String getSeqPost() {
		return seqPost;
	}
	public void setSeqPost(String seqPost) {
		this.seqPost = seqPost;
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
	
	@Override
	public String toString() {
		return "PostDTO [seqBoard=" + seqBoard + ", seqUser=" + seqUser + ", title=" + title + ", content=" + content
				+ ", writeDate=" + writeDate + ", editDate=" + editDate + ", viewCount=" + viewCount + ", likeCount="
				+ likeCount + ", dislikeCount=" + dislikeCount + ", reportCount=" + reportCount + ", secretCheck="
				+ secretCheck + ", blindCheck=" + blindCheck + ", seqPost=" + seqPost + ", fileName=" + fileName
				+ ", fileLink=" + fileLink + "]";
	}
	
}
