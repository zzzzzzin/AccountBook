package com.project.accountbook.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.repository.BoardDAO;

@WebServlet("/board/attendanceBoard.do")
public class AttendanceBoard extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		BoardDAO dao = new BoardDAO();
		ArrayList<PostDTO> attendanceList = dao.list("4");

		req.setAttribute("attendanceList", attendanceList);//
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/attendance-board.jsp");
		dispatcher.forward(req, resp);

	}
}
