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
            String sql = "SELECT tc.*, tm.nickname, tp.fileLink AS profileImage " +
                         "FROM tblComments tc " +
                         "JOIN tblUser tu ON tc.seqUser = tu.seq " +
                         "JOIN tblMember tm ON tu.idMember = tm.id " +
                         "LEFT JOIN tblProfileimg tp ON tm.seqProfileimg = tp.seq " +
                         "WHERE tc.seqPost = ?";
            
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, postSeq);
            
            rs = pstat.executeQuery();
            
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
                comment.setNickname(rs.getString("nickname"));
                comment.setProfileImage(rs.getString("profileImage"));
                
                comments.add(comment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return comments;
    }
    //댓글 작성
    public int addComment(CommentDTO comment) {
        try {
            String sql = "INSERT INTO tblComments (seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) " +
                         "VALUES (?, ?, ?, SYSDATE, 0, 0, 0)";
            
            pstat = conn.prepareStatement(sql);
            pstat.setString(1, comment.getSeqPost());
            pstat.setString(2, comment.getSeqUser());
            pstat.setString(3, comment.getContent());
            
            return pstat.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return 0;
    }
}