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

@WebServlet("/user/member/edit-challenge.do")
public class EditChallenge extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/edit-challenge.jsp");
		dispatcher.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");

		String sallary = req.getParameter("sallary");
		String goal = req.getParameter("goal");
		String period = req.getParameter("period");

		MemberInfoDAO dao = new MemberInfoDAO();

		String seqSurvey = dao.getSeqSurvey(id);
		String seqSavingsPeriod = dao.getSeqSavingPeriod(seqSurvey);

		if (sallary != null && goal != null && period != null) {
			dao.editChallenge(seqSurvey, seqSavingsPeriod, sallary, goal, period);
		}

	}
}
