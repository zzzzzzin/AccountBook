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

@WebServlet("/board/reportBoard.do")
public class ReportBoard extends HttpServlet {

	
	BoardDAO dao = new BoardDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		ArrayList<PostDTO> reportList = dao.list("3");
		
		req.setAttribute("reportList", reportList); // reportList 객체를 요청 객체에 추가
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/report-board.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq"); //Post seq
		String type = req.getParameter("type"); //Like, Dislike 구분
		
		if(type.equals("like")) {
			
			dao.like(seq);
			
		} else if (type.equals("dislike")) {
			
			dao.dislike(seq);
		}

		
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/discussion.jsp");
		//dispatcher.forward(req, resp);		
	
	
	}
}
