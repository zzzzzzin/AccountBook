package com.project.accountbook.account;

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

import com.project.accountbook.account.model.AccountInfoDTO;
import com.project.accountbook.account.repository.AccountDAO;

@WebServlet("/account/calendardelete.do")
public class AccountDel extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 데이터 가져오기()
		// 2. DB 작업 > select
		// 3. 결과 > 인증 티켓
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		req.setCharacterEncoding("UTF-8");
		String accInfoDate = (req.getParameter("start")).substring(0,10);
		String location = req.getParameter("useLocation");
		String content = req.getParameter("content");
		String seqAccCategory = req.getParameter("category");
		String seqReasonsChangeList = req.getParameter("paymentMethod");
		String price = req.getParameter("amount");
		String seqDepositWithdrawalStatus = req.getParameter("amountindicator");
		String fdwContent = req.getParameter("isFixedExpense");
		
		System.out.println("day: " + accInfoDate);
		System.out.println("location: "+location);
		System.out.println(content);
		System.out.println(seqAccCategory);
		System.out.println(seqReasonsChangeList);
		System.out.println(fdwContent);
		System.out.println(price);
		
		if(fdwContent ==null) {
			fdwContent ="0";
		}
		
		if(seqDepositWithdrawalStatus == "+") {
			seqDepositWithdrawalStatus = "1";
		}else {
			seqDepositWithdrawalStatus="2";
		}
		System.out.println(seqDepositWithdrawalStatus);
		System.out.println("sending");
		

		
	}

}
