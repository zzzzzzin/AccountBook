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

/**
 * Info 서블릿은 사용자 정보를 조회합니다.
 */
@WebServlet("/user/member/info.do")
public class Info extends HttpServlet {

	/**
	 * GET 요청을 처리하여 사용자 정보 페이지로 이동합니다.
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 가져오기
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		MemberInfoDAO dao = new MemberInfoDAO();
		
		UserDTO dto = dao.getMemberInfo(id);
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/info.jsp");
		dispatcher.forward(req, resp);
	}
}