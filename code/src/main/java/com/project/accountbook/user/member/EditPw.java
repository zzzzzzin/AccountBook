package com.project.accountbook.user.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.user.member.repository.MemberInfoDAO;

@WebServlet("/user/member/edit-pw.do")
public class EditPw extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/edit-pw.jsp");
		dispatcher.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	    HttpSession session = req.getSession();
	    String id = (String) session.getAttribute("id"); 

	    String nowPw = req.getParameter("nowPw");
	    String editPw = req.getParameter("editPw");
	    String checkPw = req.getParameter("checkPw");
	    
	    MemberInfoDAO dao = new MemberInfoDAO();
	    String realPw = dao.getPw(id);
	    
	    if (realPw != null && nowPw.equals(realPw) && editPw.equals(checkPw) ) {
	    	dao.editPw(id ,editPw);
	    }

	    RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/info.jsp");
	    dispatcher.forward(req, resp);
	}
}