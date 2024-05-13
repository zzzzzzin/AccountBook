package com.project.accountbook.account;

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

import com.project.accountbook.account.model.AccountInfoDTO;
import com.project.accountbook.account.repository.AccountDAO;
import com.project.accountbook.user.repository.UserDAO;

@WebServlet("/account/analysis.do")
public class Analysis extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		
		String period = req.getParameter("period");

		HashMap<String, String> map = new HashMap<>();
		
		if (period == null) {
			map.put("period", "month");	
		} else {
			map.put("period", period);			
		}
		
		AccountDAO dao = new AccountDAO();
		UserDAO userDao = new UserDAO();
		
		ArrayList<AccountInfoDTO> nList = dao.nowAnalysis(id, map);
		ArrayList<AccountInfoDTO> bList = dao.beforeAnalysis(id, map);
		ArrayList<AccountInfoDTO> cList = dao.getCategory();	
		
		HashMap<String, String> challengeInfoMap = dao.getChallenge(id);
		HashMap<String, String> categoryUsageMap = dao.getComparisonCategoryUsage(id);
		
		ArrayList<AccountInfoDTO> newsList =  dao.search(categoryUsageMap.get("acName"));
		
		req.setAttribute("nList", nList);
		req.setAttribute("bList", bList);
		req.setAttribute("cList", cList);
		req.setAttribute("newsList", newsList);
		
		req.setAttribute("acName", categoryUsageMap.get("acName"));
		req.setAttribute("challengeInfoMap", challengeInfoMap);
		req.setAttribute("categoryUsageMap", categoryUsageMap);
//		req.setAttribute("apiInfoMap", apiInfoMap);
	
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/account/analysis.jsp");
		dispatcher.forward(req, resp);

	}
}