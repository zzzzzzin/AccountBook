package com.project.accountbook.user.member;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.card.model.CardDTO;
import com.project.accountbook.card.repository.CardDAO;
import com.project.accountbook.user.member.model.MemberInfoDTO;
import com.project.accountbook.user.member.repository.MemberInfoDAO;

@WebServlet("/user/member/add-my-card.do")
public class AddMyCard extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		CardDAO dao = new CardDAO();
		CardDTO dto = new CardDTO(); 
				
		ArrayList<CardDTO> list = dao.getAllCards();
		System.out.println(list);
		
		resp.setCharacterEncoding("UTF-8");
		req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/add-my-card.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String cardname = req.getParameter("cardName");
		String cardCompany = req.getParameter("cardIssuer");
		String cardNumber = req.getParameter("cardNumber");
		String nickname = req.getParameter("nickname");

		String exp = req.getParameter("expirationDate");
		System.out.println();
		System.out.println(cardname);
		System.out.println(exp);
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		
		CardDTO dto = new CardDTO();
		
		dto.setCiName(cardname);
		dto.setCardCompany(cardCompany);
		dto.setCardNumber(cardNumber);
		dto.setAlias(nickname);
		dto.setEnddate(exp);

		MemberInfoDAO dao = new MemberInfoDAO();
		dao.addMyCard(id, dto);
		
		
		resp.setCharacterEncoding("UTF-8");
		
		resp.sendRedirect(req.getContextPath() + "/account/user/member/my-card.do");
	}
}
