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

    public List<CommentDTO> getCommentsByPostSeq(String seqPost) {
        List<CommentDTO> comments = new ArrayList<>();

        String query = "SELECT c.seq, c.seqPost, c.seqUser, c.content, c.writeDate, c.likeCount, c.dislikeCount, c.reportCount, " +
                "(SELECT COUNT(*) FROM tblReplyComments WHERE seqComments = c.seq) AS replyCount, " +
                "m.nickname, p.fileLink AS profileImage " +
                "FROM tblComments c " +
                "JOIN tblUser u ON c.seqUser = u.idMember " +
                "JOIN tblMember m ON u.idMember = m.id " +
                "LEFT JOIN tblProfileimg p ON m.seqProfileimg = p.seq " +
                "WHERE c.seqPost = ? " +
                "ORDER BY c.writeDate";

        try (PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, seqPost);

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    CommentDTO comment = new CommentDTO();
                    comment.setSeq(rs.getString("seq"));
                    comment.setSeqPost(rs.getString("seqPost"));
                    comment.setSeqUser(rs.getString("seqUser"));
                    comment.setContent(rs.getString("content"));
                    comment.setWriteDate(rs.getString("writeDate"));
                    comment.setLikeCount(rs.getInt("likeCount"));
                    comment.setDislikeCount(rs.getInt("dislikeCount"));
                    comment.setReportCount(rs.getInt("reportCount"));
                    comment.setReplyCount(rs.getInt("replyCount"));
                    comment.setNickname(rs.getString("nickname"));
                    comment.setProfileImage(rs.getString("profileImage"));
                    comments.add(comment);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return comments;
    }

    public List<CommentDTO> getRepliesByCommentSeq(String seqComments) {
        List<CommentDTO> replies = new ArrayList<>();

        String query = "SELECT r.seq, r.seqComments, r.seqUser, r.content, r.writeDate, r.likeCount, r.dislikeCount, r.reportCount, " +
                "m.nickname, p.fileLink AS profileImage " +
                "FROM tblReplyComments r " +
                "JOIN tblUser u ON r.seqUser = u.idMember " +
                "JOIN tblMember m ON u.idMember = m.id " +
                "LEFT JOIN tblProfileimg p ON m.seqProfileimg = p.seq " +
                "WHERE r.seqComments = ? " +
                "ORDER BY r.writeDate";

        try (PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, seqComments);

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    CommentDTO reply = new CommentDTO();
                    reply.setSeq(rs.getString("seq"));
                    reply.setSeqComments(rs.getString("seqComments"));
                    reply.setSeqUser(rs.getString("seqUser"));
                    reply.setContent(rs.getString("content"));
                    reply.setWriteDate(rs.getString("writeDate"));
                    reply.setLikeCount(rs.getInt("likeCount"));
                    reply.setDislikeCount(rs.getInt("dislikeCount"));
                    reply.setReportCount(rs.getInt("reportCount"));
                    reply.setNickname(rs.getString("nickname"));
                    reply.setProfileImage(rs.getString("profileImage"));
                    replies.add(reply);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return replies;
    }
}