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

/**
 * EditPw 서블릿은 사용자의 비밀번호를 변경하는 기능을 처리합니다.
 */
@WebServlet("/user/member/edit-pw.do")
public class EditPw extends HttpServlet {

	/**
	 * GET 요청을 처리하여 비밀번호 변경 페이지로 이동합니다.
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/edit-pw.jsp");
		dispatcher.forward(req, resp);

	}

	/**
	 * POST 요청을 처리하여 비밀번호를 변경합니다.
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	    HttpSession session = req.getSession();
	    String id = (String) session.getAttribute("id"); 

	    String nowPw = req.getParameter("nowPw");
	    String editPw = req.getParameter("editPw");
	    String checkPw = req.getParameter("checkPw");
	    
	    MemberInfoDAO dao = new MemberInfoDAO();
	    String realPw = dao.getPw(id);
	    
	    if (realPw != null && realPw.equals(nowPw) && editPw.equals(checkPw) ) {
	    	dao.editPw(id ,editPw);
	    }
	    
	    RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/info.jsp");
	    dispatcher.forward(req, resp);
	}
}