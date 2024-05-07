package com.project.accountbook.account;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/account/calendarjson.do")
public class AccountJson extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		AccountDAO dao = new AccountDAO();
		
		ArrayList<AccountInfoDTO> calenderdata = dao.accEventContent(id);
		
		
		 // Serialize data to JSON
        
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
			
		
		PrintWriter writer = resp.getWriter();

		writer.print(arr);
		writer.close();

	}

	

}

