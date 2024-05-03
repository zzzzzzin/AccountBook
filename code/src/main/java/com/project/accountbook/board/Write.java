package com.project.accountbook.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.post.model.PostDTO;

@WebServlet("/board/write.do")
public class Write extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PostDTO dto = new PostDTO();
		
		dto.

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/write.jsp");
		dispatcher.forward(req, resp);

	}
}
