package com.project.accountbook.board;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.post.model.AttendanceDTO;

@WebServlet("/board/attendanceBoard.do")
public class AttendanceBoard extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<AttendanceDTO> attendanceList = new ArrayList<>();
		
		try {
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "c##test123", "java1234");
            String sql = "SELECT * FROM vwAttendance";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
            	AttendanceDTO  dto = new AttendanceDTO ();
                // 결과셋에서 데이터 가져와서 DTO에 설정
                dto.setSeq(rs.getInt("seq"));
                dto.setNickname(rs.getString("nickname"));
                dto.setTitle(rs.getString("title"));
                dto.setDate(rs.getString("date"));
                dto.setViewCount(rs.getInt("a"));
                dto.setLikeCount(rs.getInt("b"));
                // DTO를 리스트에 추가
                attendanceList.add(dto);
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
		//request.setAttribute("attendanceList", attendanceList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/attendance-board.jsp");
		dispatcher.forward(req, resp);

	}
}
