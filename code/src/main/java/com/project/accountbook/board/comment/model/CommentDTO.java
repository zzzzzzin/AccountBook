package com.project.accountbook.board.comment.model;

import java.util.List;

import lombok.Data;

//tblComments(전체), tblReplyComments(seqComments)
@Data
public class CommentDTO {
	
	
    private int replyCount;
    private String nickname;
    
	private List<CommentDTO> replyComments;

    private String idMember;

	private String profileImage;
	//댓글
	private int seqPost;
	private int seqUser;
	private String content;
	private String writeDate;
	private int likeCount;
	private int dislikeCount;
	private int reportCount;
	
	//대댓글
	private int seqComments;
	
	private String seq;
	
		
}
