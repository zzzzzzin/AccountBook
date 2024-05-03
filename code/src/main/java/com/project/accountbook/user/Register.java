package com.project.accountbook.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.user.model.UserDTO;
import com.project.accountbook.user.repository.UserDAO;

@WebServlet("/user/register.do")
public class Register extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/register.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    req.setCharacterEncoding("UTF-8");

	    String id = req.getParameter("id");
	    String pw = req.getParameter("pw");
	    String name = req.getParameter("name");
	    String nickname = req.getParameter("nickname");
	    String phoneNumber = req.getParameter("phoneNumber");
	    String ssn = req.getParameter("ssn");
	    String gender = req.getParameter("gender");
	    String challenge = req.getParameter("challenge");

	    UserDTO dto = new UserDTO();
	    dto.setId(id);
	    dto.setPw(pw);
	    dto.setName(name);
	    dto.setNickname(nickname);
	    dto.setPhoneNumber(phoneNumber);
	    dto.setSsn(ssn);
	    dto.setGender(gender);

	    if (challenge != null) {
	        String seqCompressionIntensity = req.getParameter("seqCompressionIntensity");
	        String monthlyPaycheckStr = req.getParameter("monthlyPaycheck");
	        String savingsGoalsStr = req.getParameter("savingsGoals");
	        String seqSavingsPeriod = req.getParameter("seqSavingsPeriod");

	        int monthlyPaycheck = 0;
	        int savingsGoals = 0;

	        if (monthlyPaycheckStr != null && !monthlyPaycheckStr.isEmpty()) {
	            monthlyPaycheck = Integer.parseInt(monthlyPaycheckStr);
	        }

	        if (savingsGoalsStr != null && !savingsGoalsStr.isEmpty()) {
	            savingsGoals = Integer.parseInt(savingsGoalsStr);
	        }

	        dto.setSeqCompressionIntensity(seqCompressionIntensity);
	        dto.setMonthlyPaycheck(monthlyPaycheck);
	        dto.setSavingsGoals(savingsGoals);
	        dto.setSeqSavingsPeriod(seqSavingsPeriod);
	    }

	    UserDAO dao = new UserDAO();
	    int result = dao.register(dto);

	    if (result == 1) {
	        resp.sendRedirect("/account/index.do");
	    } else {
	        resp.sendRedirect("/account/user/register.do");
	    }
	}
}