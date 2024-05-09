package com.project.accountbook.account;

import java.io.IOException;
import java.text.DecimalFormat;
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

@WebServlet("/account/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		DecimalFormat formatter = new DecimalFormat("#,###");
		
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
		
		ArrayList<AccountInfoDTO> list = dao.accEventContent(id,map);
		
		JSONArray arr = new JSONArray();
		for (AccountInfoDTO dto : list) {
			JSONObject obj = new JSONObject();
			String start = dto.getAccInfoDate().substring(2, 10).replace("-", "/");
			
			obj.put("title", dto.getTitle());
			obj.put("start", start);
			obj.put("loc", dto.getLocation());
			obj.put("content", dto.getContent());
			obj.put("amountIndicator", dto.getSeqDepositWithdrawalStatus());
			obj.put("amount", formatter.format(dto.getPrice()));
			obj.put("category", dto.getAcName());
			obj.put("fixed", dto.getSeqFixedFluctuationCheck());
			obj.put("fixedperiod", dto.getSeqFixedFluctuationPeriod());
			
			arr.add(obj);
			
			System.out.println(dto.getSeqDepositWithdrawalStatus());
		}
		
		 resp.setContentType("application/json");
	     resp.setCharacterEncoding("UTF-8");
	     ArrayList<AccountInfoDTO> cList = dao.getCategory();
	        req.setAttribute("cList", cList);
		
		req.setAttribute("list", arr);
		req.setAttribute("map", map);
//		System.out.println(arr.size());

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/account/list.jsp");
		dispatcher.forward(req, resp);

	}
}
