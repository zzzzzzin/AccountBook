package com.project.accountbook.account;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.account.model.AccountInfoDTO;
import com.project.accountbook.account.repository.AccountDAO;

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
		
		String seqReasonsChangeList = req.getParameter("seqReasonsChangeList");
		
		String seqFixedFluctuationCheck = req.getParameter("seqFixedFluctuationCheck");
		
		String seqDepositWithdrawalStatus = req.getParameter("seqDepositWithdrawalStatus");
		
		String productName = req.getParameter("productName"); //구매 위시 목록 내용
		
		AccountDAO dao = new AccountDAO();
		
		//고정 입출금 설정한 경우
		if (Integer.parseInt(seqFixedFluctuationCheck) != 0) {

			String fdwContent = req.getParameter("fdwContent"); //고정 입출금 내용
			
		} 
		
		//카드인 경우
		if (Integer.parseInt(seqReasonsChangeList) == 2 || Integer.parseInt(seqReasonsChangeList) == 3) {
			
			String seqMyCard = req.getParameter("seqMyCard");
		}
		
		AccountInfoDTO AccountInfoDTO = new AccountInfoDTO();
				
		
	}

}
