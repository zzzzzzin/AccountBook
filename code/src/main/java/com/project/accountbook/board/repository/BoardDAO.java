package com.project.accountbook.board.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

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

	// 삽입(C)
	public int insert(PostDTO dto) {

		try {

			String sql = "";

			pstat = conn.prepareStatement(sql);

		} catch (Exception e) {

		}

		return 0;
	}

	// 조회(R)
//------------------------------------------------------------------------------------------------ 공지 게시판
	public ArrayList<NoticeDTO> selectNoticeDTOs(PostDTO pDto) {
        ArrayList<NoticeDTO> list = new ArrayList<>();

        try {
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.47:1521:xe", "jspProject", "java1234");

            if (pDto.getSeqBoard().equals("1")) {
                String sql = "SELECT * FROM vwNotice ORDER BY seq DESC";
                
                stat = conn.createStatement();
                rs = stat.executeQuery(sql);
                
                while (rs.next()) {
                	NoticeDTO dto = new NoticeDTO();
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
                return list;
            }

//            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return null;
    }
	

//------------------------------------------------------------------------------------------------ 자유 게시판
	public ArrayList<FreeDTO> selectFreeDTOs(PostDTO pDto) {
        ArrayList<FreeDTO> list = new ArrayList<>();

        try {
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.47:1521:xe", "jspProject", "java1234");

            if (pDto.getSeqBoard().equals("2")) {
                String sql = "SELECT * FROM vwFree ORDER BY seq DESC";
                
                stat = conn.createStatement();
                rs = stat.executeQuery(sql);
                
                while (rs.next()) {
                	FreeDTO dto = new FreeDTO();
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
                
                return list;
            }

//            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return null;
    }
//------------------------------------------------------------------------------------------------ 건의 게시판
	public ArrayList<ReportDTO> selectReportDTOs(PostDTO pDto) {
        ArrayList<ReportDTO> list = new ArrayList<>();

        try {
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.47:1521:xe", "jspProject", "java1234");

            if (pDto.getSeqBoard().equals("3")) {
                String sql = "SELECT * FROM vwReport ORDER BY seq DESC";
                
                stat = conn.createStatement();
                rs = stat.executeQuery(sql);
                
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
                
                return list;
                
            }

//            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return null;
    }
//------------------------------------------------------------------------------------------------ 출석 게시판
	public ArrayList<AttendanceDTO> selectAttendanceDTOs(PostDTO pDto) {
        ArrayList<AttendanceDTO> list = new ArrayList<>();

        try {
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.47:1521:xe", "jspProject", "java1234");

            if (pDto.getSeqBoard().equals("4")) {
                String sql = "SELECT * FROM vwAttendance ORDER BY seq DESC";
                
                stat = conn.createStatement();
                rs = stat.executeQuery(sql);
                
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
                return list;
            }

//            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return null;

		// 수정(U)

		// 삭제(D)

	}

	// 수정(U)

	// 삭제(D)

	
	//글쓰기
	public int write(PostDTO dto) {
		try {

			String sql = "insert into tblPost values ((SELECT NVL(MAX(seq), 0) + 1 FROM tblPost), ?, ?, ?, ?, ?, null, 0, 0, 0, 0, ?, ?)";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSeqBoard());
			pstat.setString(2, dto.getSeqUser());
			pstat.setString(3, dto.getTitle());
			pstat.setString(4, dto.getContent());
			pstat.setString(5, dto.getWriteDate());
			pstat.setInt(6, dto.getSecretCheck());
			pstat.setInt(7, dto.getBlindCheck());

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("BoardDAO.write");
			e.printStackTrace();
		}
		return 0;
	}
}// BoardDAO
















