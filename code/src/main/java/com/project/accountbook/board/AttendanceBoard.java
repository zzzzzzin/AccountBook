package com.project.accountbook.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.post.model.AttendanceDTO;
import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.repository.BoardDAO;

@WebServlet("/board/attendanceBoard.do")
public class AttendanceBoard extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PostDTO postDto = new PostDTO();
		postDto.setSeqBoard("4"); // 예시로 게시판 번호를 4로 설정
		BoardDAO dao = new BoardDAO();
		ArrayList<AttendanceDTO> attendanceList = dao.selectAttendanceDTOs(postDto);

		

		req.setAttribute("attendanceList", attendanceList);//
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/attendance-board.jsp");
		dispatcher.forward(req, resp);

	}
}
