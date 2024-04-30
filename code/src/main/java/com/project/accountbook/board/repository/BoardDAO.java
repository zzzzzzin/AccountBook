package com.project.accountbook.board.repository;

import java.sql.Connection;
import java.sql.DriverManager;
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
		Connection conn = null; // Connection == DB연결
		PreparedStatement pstmt = null; // PreparedStatement == 미리 컴파일된 SQL 문을 나타내는 객체
		ResultSet rs = null; // ResultSet == 데이터베이스에서 가져온 결과 집합을 나타내는 객체
		
		
		try {

			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@192.168.10.47:1521:xe"
					, "jspProject"
					, "java1234"); // db에 접속 
									
			System.out.println("접속 성공!");
			//조건 검색 2.
			//   ?
			pstmt = conn.prepareStatement("select * from \"MEMBER\" where \"NUM\" = ?");
			pstmt.setInt(1, 2); // 1(parameterIndex) , 2(번 회원) 찾기
			// 첫번째 ? 의 값에는 2가 들어간다.
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				PostDTO dto = new PostDTO(
						rs.getInt(1), 							// num
						rs.getString(2), 						// memberid
						rs.getString("MEMBERPW"), 				// memberpw
						rs.getString(4)			 				// nicname
					);
				vo.setRegdate(rs.getDate("REGDATE"));			//regdate
				System.out.println(vo);
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
