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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.project.accountbook.user.member.model.MemberInfoDTO;
import com.project.accountbook.user.member.repository.MemberInfoDAO;

@WebServlet("/user/member/edit-challenge.do")
public class EditChallenge extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		MemberInfoDAO dao = new MemberInfoDAO();
		
		ArrayList <MemberInfoDTO> challengeList = dao.getChallengeInfo(id);
		
		JSONArray arr = new JSONArray();
		for (MemberInfoDTO dto : challengeList) {
			JSONObject obj = new JSONObject();
			
			obj.put("sallary", dto.getMonthlyPaycheck());
			obj.put("goal", dto.getSavingsGoals());
			obj.put("period", dto.getSavingPeriod());
			
			arr.add(obj);
		}
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		req.setAttribute("clist", arr);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/edit-challenge.jsp");
		dispatcher.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		MemberInfoDAO dao = new MemberInfoDAO();
		MemberInfoDTO dto = new MemberInfoDTO();
		
		
		String sallary = req.getParameter("sallary");
		String goal = req.getParameter("goal");
		String period = req.getParameter("period");

		if (!sallary.isEmpty()) {
			dto = dao.editSallary(id, sallary);
		}
		if (!goal.isEmpty()) {
			dto = dao.editGoal(id, goal);
		}
		if (!period.isEmpty()) {
			dto = dao.editPeriod(id, period);
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/edit-challenge.jsp");
	    dispatcher.forward(req, resp);
	}
}
