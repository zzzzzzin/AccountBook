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

@WebServlet("/account/card-use.do")
public class CardUse extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//카드 사용 정보 가져오기
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		
		// 시작일과 종료일 받아오기
	    String startDate = req.getParameter("startDate");
	    String endDate = req.getParameter("endDate");
	    
	    HashMap<String, String> map = new HashMap<>();
	    
	    map.put("startDate", startDate);
	    map.put("endDate", endDate);
	    
		AccountDAO dao = new AccountDAO();
		
		ArrayList<AccountInfoDTO> list = dao.list(id, map);
				
		req.setAttribute("list", list);
		req.setAttribute("map", map);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/account/card-use.jsp");
		dispatcher.forward(req, resp);

	}
	
}