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
import com.project.accountbook.user.model.UserDTO;

@WebServlet("/user/member/friend-invitation.do")
public class FriendInvitation extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 데이터 가져오기
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");

		MemberInfoDAO dao = new MemberInfoDAO();

		String key = dao.getKakaoKey();

		req.setAttribute("key", key);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/friend-invitation.jsp");
		dispatcher.forward(req, resp);

	}
}
