package com.project.accountbook.user.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.user.repository.UserDAO;

/**
 * FriendInvitation 서블릿은 사용자가 친구 초대 기능을 수행하는 페이지를 처리합니다.
 */
@WebServlet("/user/member/friend-invitation.do")
public class FriendInvitation extends HttpServlet {

	/**
	 * GET 요청을 처리하여 친구 초대 페이지로 이동합니다.
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 데이터 가져오기
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");

		UserDAO dao = new UserDAO();

		HashMap<String, String> map = dao.getAPIKey("1");

		req.setAttribute("key", map.get("key"));

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/friend-invitation.jsp");
		dispatcher.forward(req, resp);

	}
}
