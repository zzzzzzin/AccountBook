package com.project.accountbook.card;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.card.model.CardDTO;
import com.project.accountbook.card.repository.CardDAO;

@WebServlet("/card/recommendation-list.do")
public class RecommendationList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//String category = req.getParameter("category"); 	
		String category = "푸드";
		
		CardDAO dao = new CardDAO();
		
		ArrayList<CardDTO> list = dao.categoryCard(category);
		
		req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/card/recommendation-list.jsp");
		dispatcher.forward(req, resp);

	}
}
