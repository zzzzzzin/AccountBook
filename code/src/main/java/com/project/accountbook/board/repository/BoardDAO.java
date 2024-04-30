package com.project.accountbook.board.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.project.accountbook.board.post.model.PostDTO;

public class BoardDAO {

	private Connection conn;

	public BoardDAO(Connection conn) {
		this.conn = conn;
	}

	// 게시판
	// 전체 읽어오기
	public String getBoard() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		String maxNumStr = ""; // 최대 숫자값을 문자열 형태로 저장할 변수
		try {
			sql = "SELECT * FROM tblPost WHERE seqboard = 4";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
						
			if (rs.next()) {
				maxNumStr = rs.getString(1); // 값을 문자열로 가져옴
				maxNumStr = maxNumStr.replaceAll("[^0-9]", ""); // 숫자 이외의 문자 제거
			}
		} catch (SQLException e) {
			// SQL 예외 처리
			System.out.println(e.toString());
		} finally {
			// 리소스 닫기
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return maxNumStr; // 최대 숫자값의 문자열 형태 반환
	}// getSeqBoard 전체 읽어오기
	
	// 입력(insert) - 넘어오는 데이터는 PostDTO의 dto
	public int insertBoard(PostDTO dto) {
		
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
