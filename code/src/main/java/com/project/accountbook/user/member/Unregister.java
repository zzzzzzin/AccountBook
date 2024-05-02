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

@WebServlet("/user/member/unregister.do")
public class Unregister extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/unregister.jsp");
		dispatcher.forward(req, resp);

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1. 인증 티켓 > 탈퇴할 id
		//2. DB 작업 > update
		//3. 결과
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		
		MemberInfoDAO dao = new MemberInfoDAO();
		
		int result = dao.unregister(id);
		
		if (result == 1) {
			
			//탈퇴 성공
			session.invalidate();
			
			resp.sendRedirect("/account/index.do");
			
		} else {
			
			resp.setCharacterEncoding("UTF-8");
			
			PrintWriter writer = resp.getWriter();
			writer.print(OutputUtil.redirect("실패했습니다."));
			writer.close();
			
		}
		
	}
}