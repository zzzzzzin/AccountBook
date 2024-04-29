package com.project.accountbook.board.comment.model;

//tblComments(전체), tblReplyComments(seqComments)
public class CommentDTO {
	
	//댓글
	private String seqPost;
	private String seqUser;
	private String content;
	private String writeDate;
	private int likeCount;
	private int dislikeCount;
	private int reportCount;
	
	//대댓글
	private String seqComments;

	
	public String getSeqPost() {
		return seqPost;
	}

	public void setSeqPost(String seqPost) {
		this.seqPost = seqPost;
	}

	public String getSeqUser() {
		return seqUser;
	}

	public void setSeqUser(String seqUser) {
		this.seqUser = seqUser;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
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

	public String getSeqComments() {
		return seqComments;
	}

	public void setSeqComments(String seqComments) {
		this.seqComments = seqComments;
	}

	@Override
	public String toString() {
		return "CommentDTO [seqPost=" + seqPost + ", seqUser=" + seqUser + ", content=" + content + ", writeDate="
				+ writeDate + ", likeCount=" + likeCount + ", dislikeCount=" + dislikeCount + ", reportCount="
				+ reportCount + ", seqComments=" + seqComments + "]";
	}
		
}
