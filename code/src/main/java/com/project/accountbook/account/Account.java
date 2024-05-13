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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

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
		
		ArrayList<AccountInfoDTO> cardlist = dao.getmycards(id);
		
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

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
		
        req.setAttribute("eventsev", arr);
        ArrayList<AccountInfoDTO> cList = dao.getCategory();
        req.setAttribute("cList", cList);
        req.setAttribute("cardlist", cardlist);
        
        System.out.println(cardlist);
        
        
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
		
		req.setCharacterEncoding("UTF-8");
		String accInfoDate = (req.getParameter("start")).substring(0,10);
		String location = req.getParameter("useLocation");
		String content = req.getParameter("content");
		String seqAccCategory = req.getParameter("category");
		String seqReasonsChangeList = req.getParameter("paymentMethod");
		String price = req.getParameter("amount");
		String seqDepositWithdrawalStatus = req.getParameter("amountindicator");
		String fdwContent = req.getParameter("isFixedExpense");
		String fdwperiod = req.getParameter("fixedExpensePeriod");
		
		
		
		
//		System.out.println("day" + accInfoDate);
//		System.out.println("location"+location);
//		System.out.println(content);
//		System.out.println(seqAccCategory);
//		System.out.println(seqAccCategory);
//		System.out.println(seqReasonsChangeList);
//		System.out.println(fdwContent);
//		System.out.println(price);
		AccountInfoDTO dto = new AccountInfoDTO();
		AccountDAO dao = new AccountDAO();
		
		
		
		
		dto.setIdMember(id);
		dto.setAccInfoDate(accInfoDate);
		dto.setLocation(location);
		dto.setContent(content);
		dto.setSeqAccCategory(seqAccCategory);
		dto.setSeqReasonsChangeList(seqReasonsChangeList);
		dto.setPrice(Integer.parseInt(price));
		dto.setSeqDepositWithdrawalStatus(seqDepositWithdrawalStatus);
		dto.setFdwContent(fdwContent);

		int indicate = dao.addEvent(dto);
		
	}

}
