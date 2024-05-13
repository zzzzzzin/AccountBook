package com.project.accountbook.account;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

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
		
		String word = req.getParameter("word");
		String search = "n"; //목록보기(n), 검색하기(y)
		
		if ((word == null) || (word.equals(""))) {
			search = "n";
		} else {
			search = "y";
		}
		
		HashMap<String, String> map = new HashMap<>();
		
		if (word == null) word = "";
		
		map.put("search", search);
		map.put("word", word);		
		
		AccountDAO dao = new AccountDAO();
		
		ArrayList<AccountInfoDTO> calenderdata = dao.accEventContent(id, map);
		
		 // Serialize data to JSON
        
        JSONArray arr = new JSONArray();
		for (AccountInfoDTO dto : calenderdata) {
			JSONObject obj = new JSONObject();
			String start = "20"+dto.getAccInfoDate().replace("/", "-");
			obj.put("seq", dto.getSeqAccInfo());
			obj.put("seqacc",dto.getSeqAcc());
			obj.put("seqrcc",dto.getSeqReasonChangeCategory());
			obj.put("content", dto.getContent());
			obj.put("start", dto.getAccInfoDate());
			obj.put("amount", dto.getPrice());
			obj.put("loc", dto.getLocation());
			obj.put("id", dto.getIdMember());
			obj.put("category", dto.getAcName());
			obj.put("fixed", dto.getSeqFixedFluctuationCheck());
			obj.put("period", dto.getFfpPeriod());
			obj.put("amountIndicator", dto.getSeqDepositWithdrawalStatus());
			obj.put("paymentMethod", dto.getPaymentMethod());
			obj.put("aliasname", dto.getAlias());
			obj.put("cardnumber", dto.getCardNumber());
			obj.put("fixedMemo", dto.getFdwContent());
			obj.put("fixedPeriod",dto.getFfpPeriod());
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
