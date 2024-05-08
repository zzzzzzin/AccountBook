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

@WebServlet("/board/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		BoardDAO dao = new BoardDAO();
		PostDTO postDto = new PostDTO();
		
		for(int i = 0; i<=4; i++) {
			
			// 게시판 번호가 1인 
			if (i == 1) {

				ArrayList<PostDTO> noticeList = dao.viewlist("1");	
				req.setAttribute("noticeList", noticeList); // noticeList 객체를 요청 객체에 추가
			}
			
			// 게시판 번호가 2인 
			if (i == 2) {

				ArrayList<PostDTO> freeList = dao.list("2");
				req.setAttribute("freeList", freeList); // freeList 객체를 요청 객체에 추가
			}
			
			// 게시판 번호가 3인 
			if (i == 3) {

				ArrayList<PostDTO> reportList = dao.viewlist("3");			
				req.setAttribute("reportList", reportList); // reportList 객체를 요청 객체에 추가
			}
			
			// 게시판 번호가 4인 
			if (i == 4) {
				
				ArrayList<PostDTO> attendanceList = dao.viewlist("4");
				req.setAttribute("attendanceList", attendanceList); // attendanceList 객체를 요청 객체에 추가
			}
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/view.jsp");
		dispatcher.forward(req, resp);

	}
}