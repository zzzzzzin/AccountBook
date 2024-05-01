package com.project.accountbook.board.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.project.accountbook.board.post.model.AttendanceDTO;
import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.util.DBUtil;

public class BoardDAO {

	private DBUtil db;
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

//	public BoardDAO() {
//		this.conn = DBUtil.open("192.168.10.47", "jspProject", "java1234");
//	}

	public BoardDAO() {
		this.conn = DBUtil.open("localhost", "c##test123", "java1234");
	}

	// 삽입(C)
	public int insert(PostDTO dto) {

		try {
			
			String sql = "";

			pstat = conn.prepareStatement(sql);

		} catch (SQLException e) {

		}

		return 0;
	}

	// 조회(R)
	public List<AttendanceDTO> selectAll() {

		ArrayList<AttendanceDTO> list = new ArrayList<>();
		try {

			String sql = "select * from vwAttendance";
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);

			
			while (rs.next()) {
				AttendanceDTO dto = new AttendanceDTO(
				        //rs.getString("seq"), 
				       // rs.getString("seqBoard"), 
				        //rs.getString("seqUser"), 
				       // rs.getString("title"), 
				       // rs.getString("content"), 
				       // rs.getString("writeDate"),
				        //rs.getString("editDate"), 
				        //rs.getInt("viewCount"), 
				        //rs.getInt("likeCount"), 
				       // rs.getInt("dislikeCount"), 
				       // rs.getInt("reportCount"), 
				        //rs.getInt("secretCheck"),
				        //rs.getInt("blindCheck"), 
				        //rs.getString("seqPost"), 
				       // rs.getString("fileName"), 
				        //rs.getString("fileLink")
				        
				        rs.getInt("seq"), 
				        rs.getString("nickname"), 
				        rs.getString("title"), 
				        rs.getString("date"), 
				        rs.getInt("viewCount"),
				        rs.getInt("likeCount")

				    );
				String seq = rs.getString("seq");
				String seqUser = rs.getString("nickname");
				String title = rs.getString("title");
				String writeDate = rs.getString("date");
				String date = writeDate.substring(0, Math.min(writeDate.length(), 10));
				int viewCount = rs.getInt("viewCount");
				int likeCount = rs.getInt("likeCount");
				
				//dto.setSeqPost("seq");
				//dto.setSeqUser("seqUser");
				//dto.setTitle("title");
				//dto.setWriteDate(date);
				//dto.setViewCount(viewCount);
				//dto.setLikeCount(likeCount);
				
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	// 수정(U)

	// 삭제(D)

}// BoardDAO
