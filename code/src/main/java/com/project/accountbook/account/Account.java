package com.project.accountbook.account;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/account/calendar.do")
public class Account extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/account/calendar.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 데이터 가져오기()
		// 2. DB 작업 > select
		// 3. 결과 > 인증 티켓
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		 
		String content = req.getParameter("content");
		String accInfoDate = req.getParameter("accInfoDate");
		String price = req.getParameter("price");
		String location = req.getParameter("location");
		String seqAcc = req.getParameter("seqAcc");
		String seqReasonChangeCategory = req.getParameter("seqReasonChangeCategory");
		String seqFixedFluctuationCheck = req.getParameter("seqFixedFluctuationCheck");
		String fixedContent = req.getParameter("fixedContent"); //고정 입출금 내용
		String seqDepositWithdrawalStatus = req.getParameter("seqDepositWithdrawalStatus");
		
	}
}
