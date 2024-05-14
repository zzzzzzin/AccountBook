package com.project.accountbook.user.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.card.model.CardDTO;
import com.project.accountbook.user.member.model.MemberInfoDTO;
import com.project.accountbook.user.member.repository.MemberInfoDAO;

/**
 * MyCard 서블릿은 사용자의 카드 정보를 관리합니다.
 */
@WebServlet("/user/member/my-card.do")
public class MyCard extends HttpServlet {

	/**
	 * GET 요청을 처리하여 사용자의 카드 정보를 가져와서 페이지에 표시합니다.
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		
		MemberInfoDAO dao = new MemberInfoDAO();
		MemberInfoDTO dto = new MemberInfoDTO();
		
		ArrayList<MemberInfoDTO> clist = dao.getMyCards(id);
		
		req.setCharacterEncoding("UTF-8");
		req.setAttribute("clist", clist);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/my-card.jsp");
		dispatcher.forward(req, resp);

	}
	
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//		HttpSession session = req.getSession();
//		String id = (String)req.getParameter("id");
//		String seq = req.getParameter("seq");
//		
//		System.out.println(id);
//		System.out.println(seq);
//		
//		MemberInfoDAO dao = new MemberInfoDAO();
//		MemberInfoDTO dto = dao.delMyCard(id, seq);
//		
//		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/my-card.jsp");
//		dispatcher.forward(req, resp);
//
//	}
}
