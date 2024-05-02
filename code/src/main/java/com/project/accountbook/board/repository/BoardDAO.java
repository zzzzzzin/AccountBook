package com.project.accountbook.board.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.project.accountbook.board.post.model.AttendanceDTO;
import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.post.model.ReportDTO;
import com.project.accountbook.util.DBUtil;

public class BoardDAO {

	private DBUtil db;
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public BoardDAO() {
		this.conn = DBUtil.open("192.168.10.47", "jspProject", "java1234");
	}

//	public BoardDAO() {
//		this.conn = DBUtil.open("localhost", "c##test123", "java1234");
//	}

	// 삽입(C)
	public int insert(PostDTO dto) {

		try {

			String sql = "";

			pstat = conn.prepareStatement(sql);

		} catch (SQLException e) {

		}

		return 0;
	}

	// 조회(R) AttendanceDTO
//------------------------------------------------------------------------------------------------ 건의 게시판
	public ArrayList<ReportDTO> selectReportDTOs(PostDTO pDto) {
        ArrayList<ReportDTO> list = new ArrayList<>();

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.47:1521:xe", "jspProject", "java1234");

            if (pDto.getSeqBoard().equals("3")) {
                String sql = "SELECT * FROM vwReport";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
                    ReportDTO dto = new ReportDTO();
                    dto.setSeq(rs.getInt("seq"));
                    dto.setNickname(rs.getString("nickname"));
                    dto.setTitle(rs.getString("title"));
                    dto.setDate((rs.getString("writedate").substring(0, Math.min(rs.getString("writedate").length(), 10))));
                    dto.setViewCount(rs.getInt("viewcount"));
                    dto.setLikeCount(rs.getInt("likecount"));
                    dto.setReportCount(rs.getString("reportCount"));
                    dto.setSecretCheck(rs.getString("secretCheck"));
                    dto.setBlindCheck(rs.getString("blindCheck"));
                    list.add(dto);
                }
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return list;
    }
//------------------------------------------------------------------------------------------------ 출석 게시판
	public ArrayList<AttendanceDTO> selectAttendanceDTOs(PostDTO pDto) {
        ArrayList<AttendanceDTO> list = new ArrayList<>();

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.47:1521:xe", "jspProject", "java1234");

            if (pDto.getSeqBoard().equals("4")) {
                String sql = "SELECT * FROM vwAttendance";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
                    AttendanceDTO dto = new AttendanceDTO();
                    dto.setSeq(rs.getInt("seq"));
                    dto.setNickname(rs.getString("nickname"));
                    dto.setTitle(rs.getString("title"));
                    dto.setDate((rs.getString("writedate").substring(0, Math.min(rs.getString("writedate").length(), 10))));
                    dto.setViewCount(rs.getInt("viewcount"));
                    dto.setLikeCount(rs.getInt("likecount"));
                    dto.setReportCount(rs.getString("reportCount"));
                    dto.setSecretCheck(rs.getString("secretCheck"));
                    dto.setBlindCheck(rs.getString("blindCheck"));
                    list.add(dto);
                }
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return list;

		// 수정(U)

		// 삭제(D)

	}

}// BoardDAO
