package com.project.accountbook.board.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.project.accountbook.board.post.model.PostDTO;

public class BoardDAO {

	private Connection conn;
	
	public BoardDAO() {
		
	}

	public BoardDAO(Connection conn) {
		this.conn = conn;
	}

	// 게시판
	// 출석게시판 전체 읽어오기
	public void selectAttendanceBoard() {
		
		Connection conn = null; // Connection == DB연결
		PreparedStatement pstmt = null; // PreparedStatement == 미리 컴파일된 SQL 문을 나타내는 객체
		ResultSet rs = null; // ResultSet == 데이터베이스에서 가져온 결과 집합을 나타내는 객체
		
		ArrayList<PostDTO> list = new ArrayList<>();
		
		
		try {
		
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@192.168.10.47:1521:xe"
					, "jspProject"
					, "java1234"); // db에 접속 
									
			System.out.println("접속 성공!");

			pstmt = conn.prepareStatement("select * from vwAttendance;");
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				PostDTO attendance = new PostDTO();
				
				String seq = rs.getString("번호");
				String seqUser = rs.getString("닉네임");
				String title = rs.getString("제목");
				String writeDate = rs.getString("등록날짜");
				String date = writeDate.substring(0, Math.min(writeDate.length(), 10));
				int viewCount = rs.getInt("조회수");
				int likeCount = rs.getInt("추천");

			PostDTO dto = new PostDTO(seq, seqUser, title, date); // Content는 null로 설정
			attendance.setSeqPost(seq);
			attendance.setSeqUser(seqUser);
			attendance.setTitle(title);
			attendance.setWriteDate(date);
			attendance.setViewCount(viewCount);
			attendance.setLikeCount(likeCount);
			list.add(attendance);
		}
			
		} catch (SQLException e) {
			System.out.println("SQLException");
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
			}
		}
	}// getSeqBoard 전체 읽어오기
	
	// 입력(insert) - 넘어오는 데이터는 PostDTO의 dto
	public int insertAttendanceBoard(PostDTO dto) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		
		return result; // result로 반환
		// --여기까지가 입력(insert)
		
	}


}// BoardDAO
