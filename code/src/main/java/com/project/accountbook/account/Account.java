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

import com.google.gson.Gson;
import com.project.accountbook.account.model.AccountInfoDTO;
import com.project.accountbook.account.repository.AccountDAO;

@WebServlet("/account/calendar.do")
public class Account extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		// 인증받지 못한 사용자 or 권한이 없는 사용자 > 거부
//		if (Auth.check(req, resp)) {
//			return;
//		}
		
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		AccountDAO dao = new AccountDAO();
		
		ArrayList<AccountInfoDTO> calenderdata = dao.accEventContent(id);
		
		JSONArray arr = new JSONArray();
		for (AccountInfoDTO dto : calenderdata) {
			JSONObject obj = new JSONObject();
			String start = "20"+dto.getAccInfoDate().replace("/", "-");
			
			obj.put("title", dto.getTitle());
			obj.put("start", dto.getAccInfoDate());
			obj.put("loc", dto.getLocation());
			obj.put("content", dto.getContent());
			obj.put("amountIndicator", dto.getSeqDepositWithdrawalStatus());
			obj.put("amount", dto.getPrice());
			obj.put("category", dto.getAcName());
			obj.put("fixed", dto.getSeqFixedFluctuationCheck());
			obj.put("fixedperiod", dto.getSeqFixedFluctuationPeriod());
			
			
			arr.add(obj);
		}

        // Set response content type to JSON and send the JSON as response
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
		
        req.setAttribute("eventsev", arr);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/account/calendar.jsp");
		dispatcher.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1. 데이터 가져오기()
		// 2. DB 작업 > select
		// 3. 결과 > 인증 티켓
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		AccountDAO dao = new AccountDAO();
		
		ArrayList<AccountInfoDTO> calenderdata = dao.accEventContent(id);
		
		
		 // Serialize data to JSON
        Gson gson = new Gson();
        String json = gson.toJson(calenderdata);

        // Set response content type to JSON and send the JSON as response
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(json);
		
        req.setAttribute("eventsev", json);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/account/calendar.jsp");
		dispatcher.forward(req, resp);

		
//		HttpSession session = req.getSession();
//		String id = (String) session.getAttribute("id");
//		 
//		String content = req.getParameter("content");
//		String accInfoDate = req.getParameter("accInfoDate");
//		String price = req.getParameter("price");
//		String location = req.getParameter("location");
//		String seqAcc = req.getParameter("seqAcc");
//		String seqReasonChangeCategory = req.getParameter("seqReasonChangeCategory");
//		
//		String seqReasonsChangeList = req.getParameter("seqReasonsChangeList");
//		
//		String seqFixedFluctuationCheck = req.getParameter("seqFixedFluctuationCheck");
//		
//		String seqDepositWithdrawalStatus = req.getParameter("seqDepositWithdrawalStatus");
//		
//		String productName = req.getParameter("productName"); //구매 위시 목록 내용
//		
//		AccountDAO dao = new AccountDAO();
//		
//		//고정 입출금 설정한 경우
//		if (Integer.parseInt(seqFixedFluctuationCheck) != 0) {
//
//			String fdwContent = req.getParameter("fdwContent"); //고정 입출금 내용
//			
//		} 
//		
//		//카드인 경우
//		if (Integer.parseInt(seqReasonsChangeList) == 2 || Integer.parseInt(seqReasonsChangeList) == 3) {
//			
//			String seqMyCard = req.getParameter("seqMyCard");
//		}
//		
//		AccountInfoDTO AccountInfoDTO = new AccountInfoDTO();
				
		
	}

}

