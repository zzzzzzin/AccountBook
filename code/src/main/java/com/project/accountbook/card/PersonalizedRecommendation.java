package com.project.accountbook.card;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.card.model.CardDTO;
import com.project.accountbook.card.repository.CardDAO;

@WebServlet("/card/personalized-recommendation.do")
public class PersonalizedRecommendation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String memberId = (String) req.getSession().getAttribute("id");
        CardDAO dao = new CardDAO();
        List<CardDTO> recommendedCards = dao.getPersonalizedRecommendation(memberId);
        req.setAttribute("recommendedCards", recommendedCards);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/card/personalized-recommendation.jsp");
        dispatcher.forward(req, resp);
    }
}