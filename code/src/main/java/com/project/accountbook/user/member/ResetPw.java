package com.project.accountbook.user.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.user.member.repository.MemberInfoDAO;
import com.project.accountbook.util.OutputUtil;

/**
 * ResetPw 서블릿은 사용자의 비밀번호를 재설정합니다.
 */
@WebServlet("/user/member/reset-pw.do")
public class ResetPw extends HttpServlet {

	/**
     * GET 요청을 처리하여 비밀번호 재설정 페이지로 이동합니다.
     */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		req.setAttribute("id", id);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/reset-pw.jsp");
		dispatcher.forward(req, resp);

	}

	/**
     * POST 요청을 처리하여 비밀번호를 재설정합니다.
     */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String pwCheck = req.getParameter("pwCheck");

		MemberInfoDAO dao = new MemberInfoDAO();

		if (pw.equals(pwCheck)) {

			dao.resetPw(id, pw);

			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/index.jsp");
			dispatcher.forward(req, resp);
		} else {
			resp.setCharacterEncoding("UTF-8");
			
			PrintWriter writer = resp.getWriter();
			writer.print(OutputUtil.redirect("비밀번호가 일치하지 않습니다."));
			
			 writer.println("<script>window.location.reload();</script>"); 
			 
			writer.close();
			
		}
	}
}