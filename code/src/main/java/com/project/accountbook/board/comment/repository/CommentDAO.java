package com.project.accountbook.board.comment.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.project.accountbook.board.comment.model.CommentDTO;
import com.project.accountbook.util.DBUtil;

public class CommentDAO {
    private Connection conn;
    private Statement stat;
    private PreparedStatement pstat;
    private ResultSet rs;

    public CommentDAO() {
        this.conn = DBUtil.open("125.241.245.222", "webproject", "java1234");
    }
    
    //댓글 조회
    public List<CommentDTO> getCommentsByPostSeq(String postSeq) {
        List<CommentDTO> comments = new ArrayList<>();
        try {
            String sql = "SELECT c.seq, c.seqPost, c.seqUser, c.content, c.writeDate, c.likeCount, c.dislikeCount, c.reportCount, m.nickname, p.fileLink AS profileImage, u.idMember " +
                    "FROM tblComments c " +
                    "INNER JOIN tblUser u ON c.seqUser = u.seq " +
                    "INNER JOIN tblMember m ON u.idMember = m.id " +
                    "LEFT JOIN tblProfileimg p ON m.seqProfileimg = p.seq " +
                    "WHERE c.seqPost = ? " +
                    "ORDER BY c.seq";
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, postSeq);
            rs = pstat.executeQuery();

            while (rs.next()) {
                CommentDTO comment = new CommentDTO();
                comment.setIdMember(rs.getString("idMember"));
                comment.setSeq(rs.getString("seq"));
                comment.setSeqPost(rs.getInt("seqPost"));
                comment.setSeqUser(rs.getInt("seqUser"));
                comment.setContent(rs.getString("content"));
                comment.setWriteDate(rs.getString("writeDate"));
                comment.setLikeCount(rs.getInt("likeCount"));
                comment.setDislikeCount(rs.getInt("dislikeCount"));
                comment.setReportCount(rs.getInt("reportCount"));
                comment.setNickname(rs.getString("nickname"));
                comment.setProfileImage(rs.getString("profileImage"));
                comments.add(comment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return comments;
    }
    //(seqcomments.nextVal
    
    //댓글 작성
    public int addComment(CommentDTO commentDto) {
        try {
            String sql = "INSERT INTO tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) " +
                         "VALUES ((SELECT NVL(MAX(seq), 0) + 1 FROM tblcomments), ?, ?, ?, SYSDATE, 0, 0, 0 )";
            pstat = conn.prepareStatement(sql);
            pstat.setInt(1, commentDto.getSeqPost());
            pstat.setInt(2, commentDto.getSeqUser());
            pstat.setString(3, commentDto.getContent());
            
            return pstat.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
 // 답글 조회
    public List<CommentDTO> getReplyCommentsByCommentSeq(String commentSeq) {
        List<CommentDTO> replyComments = new ArrayList<>();
        try {
            String sql = "SELECT trc.*, tm.nickname, tp.fileLink AS profileImage " +
                         "FROM tblReplyComments trc " +
                         "JOIN tblUser tu ON trc.seqUser = tu.seq " +
                         "JOIN tblMember tm ON tu.idMember = tm.id " +
                         "LEFT JOIN tblProfileimg tp ON tm.seqProfileimg = tp.seq " +
                         "WHERE trc.seqComments = ?";
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, commentSeq);
            rs = pstat.executeQuery();

            while (rs.next()) {
                CommentDTO replyComment = new CommentDTO();
                replyComment.setSeq(rs.getString("seq"));
                replyComment.setSeqComments(rs.getInt("seqComments"));
                replyComment.setSeqUser(rs.getInt("seqUser"));
                replyComment.setContent(rs.getString("content"));
                replyComment.setWriteDate(rs.getString("writeDate"));
                replyComment.setLikeCount(rs.getInt("likeCount"));
                replyComment.setDislikeCount(rs.getInt("dislikeCount"));
                replyComment.setReportCount(rs.getInt("reportCount"));
                replyComment.setNickname(rs.getString("nickname"));
                replyComment.setProfileImage(rs.getString("profileImage"));
                replyComments.add(replyComment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return replyComments;
    }
    //답글 작성
    public int addReplyComment(CommentDTO replyComment) {
        try {
            String sql = "INSERT INTO tblReplyComments (seq, seqComments, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) " +
                         "VALUES (seqReplyComments.nextval, ?, ?, ?, SYSDATE, 0, 0, 0)";

            pstat = conn.prepareStatement(sql);
            pstat.setInt(1, replyComment.getSeqComments());
            pstat.setInt(2, replyComment.getSeqUser());
            pstat.setString(3, replyComment.getContent());

            return pstat.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    
    
    //댓글 수정 
    public int updateComment(String commentSeq, String editedContent) {
        try {
            String sql = "UPDATE tblComments SET content = ? WHERE seq = ?";
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, editedContent);
            pstat.setString(2, commentSeq);
            return pstat.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    //댓글 삭제 
    public int deleteComment(String commentSeq) {
        try {
            String sql = "DELETE FROM tblComments WHERE seq = ?";
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, commentSeq);
            return pstat.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    
    //답글 수정
    public int updateReplyComment(String replyCommentSeq, String editedContent) {
        try {
            String sql = "UPDATE tblReplyComments SET content = ? WHERE seq = ?";
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, editedContent);
            pstat.setString(2, replyCommentSeq);
            return pstat.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    
    //답글 작성자 확인
 // 답글 작성자 확인
    public boolean isReplyCommentAuthor(String replyCommentSeq, int seqUser) {
        try {
            String sql = "SELECT COUNT(*) FROM tblReplyComments WHERE seq = ? AND seqUser = ?";
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, replyCommentSeq);
            pstat.setInt(2, seqUser);
            rs = pstat.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
 // 답글 삭제
    public int deleteReplyComment(String replyCommentSeq) {
        try {
            String sql = "DELETE FROM tblReplyComments WHERE seq = ?";
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, replyCommentSeq);
            return pstat.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    
}