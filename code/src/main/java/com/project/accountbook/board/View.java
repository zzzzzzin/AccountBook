 package com.project.accountbook.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.repository.BoardDAO;

@WebServlet("/board/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		session.setAttribute("read", "n");
		
		//쿠키 조회수
		Cookie cookies = new Cookie("cookieread", "n");
		cookies.setMaxAge(60 * 60);
		cookies.setPath("/");
		resp.addCookie(cookies);
		//끝
		
		BoardDAO dao = new BoardDAO();
		
		ArrayList<PostDTO> noticeList = dao.viewlist("1");			
		ArrayList<PostDTO> freeList = dao.viewlist("2");	
		ArrayList<PostDTO> reportList = dao.viewlist("3");					
		ArrayList<PostDTO> attendanceList = dao.viewlist("4");
		
		
		
		req.setAttribute("noticeList", noticeList); // noticeList 객체를 요청 객체에 추가
		req.setAttribute("freeList", freeList); // freeList 객체를 요청 객체에 추가
		req.setAttribute("reportList", reportList); // reportList 객체를 요청 객체에 추가
		req.setAttribute("attendanceList", attendanceList); // attendanceList 객체를 요청 객체에 추가


		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/view.jsp");
		dispatcher.forward(req, resp);

	}
}