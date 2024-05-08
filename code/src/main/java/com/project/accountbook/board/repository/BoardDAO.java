package com.project.accountbook.board.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.project.accountbook.board.post.model.AttendanceDTO;
import com.project.accountbook.board.post.model.FreeDTO;
import com.project.accountbook.board.post.model.NoticeDTO;
import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.post.model.ReportDTO;
import com.project.accountbook.util.DBUtil;

public class BoardDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

//	public BoardDAO() {
//		this.conn = DBUtil.open("192.168.10.47", "jspProject", "java1234");
//	}
	
	public BoardDAO() {
		this.conn = DBUtil.open("125.241.245.222", "webproject", "java1234");
	}
	
	public String readSession(String id) {
		try {
			String sql ="select seq from tblUser where idMember = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				String seq = rs.getString("seq");
	            return seq;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 삽입(C)
	// 글쓰기
	public int boardWrite(PostDTO dto) {

		try {
			
			
			String sql = "INSERT INTO tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) "
					+ "VALUES ((SELECT NVL(MAX(seq), 0) + 1 FROM tblPost), ?, ?, ?, ?, SYSDATE, null, 0, 0, 0, 0, ?, 0)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSeqBoard());
			pstat.setString(2, dto.getSeqUser());
			pstat.setString(3, dto.getTitle());
			pstat.setString(4, dto.getContent());
			pstat.setInt(5, dto.getSecretCheck());
			
			System.out.println("conn: " + conn.isClosed());
			
			return pstat.executeUpdate(); // 실행 결과 반환

		} catch (Exception e) {

			e.printStackTrace();
		}

		return 0;
	}




	// 조회(R)
	public PostDTO readPost(String seq) {
	
		try {
			
			String sql = "select\r\n"
					+ "    po_seq as seq,\r\n"
					+ "    me_nickname as me_nickname,\r\n"
					+ "    ad_nickname as ad_nickname,\r\n"
					+ "    ca_seq as seqboard,\r\n"
					+ "    po_seqUser as seqUser,\r\n"
					+ "    po_title as title,\r\n"
					+ "    po_content as content,\r\n"
					+ "    po_writedate as writedate,\r\n"
					+ "    po_editdate as editdate,\r\n"
					+ "    po_viewcount as viewcount,\r\n"
					+ "    po_likecount as likecount,\r\n"
					+ "    po_dislikecount as dislikecount,\r\n"
					+ "    po_reportcount as reportcount,\r\n"
					+ "    po_secretcheck as secretcheck,\r\n"
					+ "    po_blindcheck as blindcheck,\r\n"
					+ "    us_seq as seqpost,\r\n"
					+ "    af_filename as filename,\r\n"
					+ "    af_filelink as filelink\r\n"
					+ "from vwboard where po_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			while (rs.next()) {		
				
				PostDTO dto = new PostDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setSeqBoard(rs.getString("seqboard"));
				dto.setSeqUser(rs.getString("sequser"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriteDate(rs.getString("writedate"));
				dto.setEditDate(rs.getString("editdate"));
				dto.setViewCount(rs.getInt("viewcount"));
				dto.setLikeCount(rs.getInt("likecount"));
				dto.setDislikeCount(rs.getInt("dislikecount"));
				dto.setReportCount(rs.getInt("reportcount"));
				dto.setSecretCheck(rs.getInt("secretcheck"));
				dto.setBlindCheck(rs.getInt("blindcheck"));
				dto.setad_nickName(rs.getString("ad_nickname"));
				dto.setme_nickName(rs.getString("me_nickname"));
				
				dto.setSeqPost(rs.getString("seqpost"));
				dto.setFileName(rs.getString("filename"));
				dto.setFileLink(rs.getString("filelink"));
					
				return dto;		
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public ArrayList<PostDTO> list (HashMap<String, String> map, String seq){
		
		try {
			
			String where = "";
	
			
			if(map.get("search").equals("y") && map.get("column").equals("total")) {
				
				where = String.format("WHERE ca_seq = %s AND po_content LIKE '%%%s%%' or po_title like '%%%s%%'", seq, map.get("word"), map.get("word"));
				
			} else if (map.get("search").equals("y") && map.get("column").equals("title")) {
				
				where = String.format("WHERE ca_seq = %s AND po_title like '%%%s%%'", seq, map.get("word"));
				
			} else if (map.get("search").equals("y") && map.get("column").equals("content")) {
							
				where = String.format("WHERE ca_seq = %s AND po_content LIKE '%%%s%%'", seq, map.get("word"));
				
			} else {
				
				where = String.format("where ca_seq = %s", seq);
			}
			
			String sql = "select \r\n"
					+ "    po_seq as seq,\r\n"
					+ "    me_nickname as me_nickname,\r\n"
					+ "    ad_nickname as ad_nickname,\r\n"
					+ "    ca_seq as seqboard,\r\n"
					+ "    po_seqUser as seqUser,\r\n"
					+ "    po_title as title,\r\n"
					+ "    po_content as content,\r\n"
					+ "    po_writedate as writedate,\r\n"
					+ "    po_editdate as editdate,\r\n"
					+ "    po_viewcount as viewcount,\r\n"
					+ "    po_likecount as likecount,\r\n"
					+ "    po_dislikecount as dislikecount,\r\n"
					+ "    po_reportcount as reportcount,\r\n"
					+ "    po_secretcheck as secretcheck,\r\n"
					+ "    po_blindcheck as blindcheck,\r\n"
					+ "    us_seq as seqpost,\r\n"
					+ "    af_filename as filename,\r\n"
					+ "    af_filelink as filelink\r\n"
					+ "from vwboard\r\n"
					+ where
					+ " ORDER BY seq DESC";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<PostDTO> list = new ArrayList<PostDTO>();
			
			
			while (rs.next()) {				
				PostDTO dto = new PostDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setSeqBoard(rs.getString("seqboard"));
				dto.setSeqUser(rs.getString("sequser"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriteDate(rs.getString("writedate"));
				dto.setEditDate(rs.getString("editdate"));
				dto.setViewCount(rs.getInt("viewcount"));
				dto.setLikeCount(rs.getInt("likecount"));
				dto.setDislikeCount(rs.getInt("dislikecount"));
				dto.setReportCount(rs.getInt("reportcount"));
				dto.setSecretCheck(rs.getInt("secretcheck"));
				dto.setBlindCheck(rs.getInt("blindcheck"));
				dto.setad_nickName(rs.getString("ad_nickname"));
				dto.setme_nickName(rs.getString("me_nickname"));
				
				dto.setSeqPost(rs.getString("seqpost"));
				dto.setFileName(rs.getString("filename"));
				dto.setFileLink(rs.getString("filelink"));
				
				list.add(dto);
								
			}	
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public ArrayList<PostDTO> list (String seq){
		
		try {
			
			String sql = "select\r\n"
					+ "    po_seq as seq,\r\n"
					+ "    me_nickname as me_nickname,\r\n"
					+ "    ad_nickname as ad_nickname,\r\n"
					+ "    ca_seq as seqboard,\r\n"
					+ "    po_seqUser as seqUser,\r\n"
					+ "    po_title as title,\r\n"
					+ "    po_content as content,\r\n"
					+ "    po_writedate as writedate,\r\n"
					+ "    po_editdate as editdate,\r\n"
					+ "    po_viewcount as viewcount,\r\n"
					+ "    po_likecount as likecount,\r\n"
					+ "    po_dislikecount as dislikecount,\r\n"
					+ "    po_reportcount as reportcount,\r\n"
					+ "    po_secretcheck as secretcheck,\r\n"
					+ "    po_blindcheck as blindcheck,\r\n"
					+ "    us_seq as seqpost,\r\n"
					+ "    af_filename as filename,\r\n"
					+ "    af_filelink as filelink\r\n"
					+ "from vwboard where ca_seq = ?\r\n"
					+ "order by seq desc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			ArrayList<PostDTO> list = new ArrayList<PostDTO>();
			
			
			while (rs.next()) {				
				PostDTO dto = new PostDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setSeqBoard(rs.getString("seqboard"));
				dto.setSeqUser(rs.getString("sequser"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriteDate(rs.getString("writedate"));
				dto.setEditDate(rs.getString("editdate"));
				dto.setViewCount(rs.getInt("viewcount"));
				dto.setLikeCount(rs.getInt("likecount"));
				dto.setDislikeCount(rs.getInt("dislikecount"));
				dto.setReportCount(rs.getInt("reportcount"));
				dto.setSecretCheck(rs.getInt("secretcheck"));
				dto.setBlindCheck(rs.getInt("blindcheck"));
				dto.setad_nickName(rs.getString("ad_nickname"));
				dto.setme_nickName(rs.getString("me_nickname"));
				
				dto.setSeqPost(rs.getString("seqpost"));
				dto.setFileName(rs.getString("filename"));
				dto.setFileLink(rs.getString("filelink"));
				
				list.add(dto);
								
			}	
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	

	public void like(String seq) {

		try {

			String sql = "update tblpost set likecount = likecount + 1 where seq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("BoardDAO.like");
			e.printStackTrace();
		}
		
	}

	public void dislike(String seq) {

		try {

			String sql = "update tblpost set dislikecount = dislikecount + 1 where seq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("BoardDAO.like");
			e.printStackTrace();
		}
		
	}

	public ArrayList<PostDTO> viewlist(String seq) {
		try {
			
			String sql = "select\r\n"
					+ "    po_seq as seq,\r\n"
					+ "    me_nickname as me_nickname,\r\n"
					+ "    ad_nickname as ad_nickname,\r\n"
					+ "    ca_seq as seqboard,\r\n"
					+ "    po_seqUser as seqUser,\r\n"
					+ "    po_title as title,\r\n"
					+ "    po_content as content,\r\n"
					+ "    po_writedate as writedate,\r\n"
					+ "    po_editdate as editdate,\r\n"
					+ "    po_viewcount as viewcount,\r\n"
					+ "    po_likecount as likecount,\r\n"
					+ "    po_dislikecount as dislikecount,\r\n"
					+ "    po_reportcount as reportcount,\r\n"
					+ "    po_secretcheck as secretcheck,\r\n"
					+ "    po_blindcheck as blindcheck,\r\n"
					+ "    us_seq as seqpost,\r\n"
					+ "    af_filename as filename,\r\n"
					+ "    af_filelink as filelink\r\n"
					+ "from vwboard where ca_seq = ?\r\n"
					+ "order by seq asc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			ArrayList<PostDTO> list = new ArrayList<PostDTO>();
			
			
			while (rs.next()) {				
				PostDTO dto = new PostDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setSeqBoard(rs.getString("seqboard"));
				dto.setSeqUser(rs.getString("sequser"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriteDate(rs.getString("writedate"));
				dto.setEditDate(rs.getString("editdate"));
				dto.setViewCount(rs.getInt("viewcount"));
				dto.setLikeCount(rs.getInt("likecount"));
				dto.setDislikeCount(rs.getInt("dislikecount"));
				dto.setReportCount(rs.getInt("reportcount"));
				dto.setSecretCheck(rs.getInt("secretcheck"));
				dto.setBlindCheck(rs.getInt("blindcheck"));
				dto.setad_nickName(rs.getString("ad_nickname"));
				dto.setme_nickName(rs.getString("me_nickname"));
				
				dto.setSeqPost(rs.getString("seqpost"));
				dto.setFileName(rs.getString("filename"));
				dto.setFileLink(rs.getString("filelink"));
				
				list.add(dto);
								
			}	
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	

	
}// BoardDAO