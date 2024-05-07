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

@WebServlet("/account/calendaredit.do")
public class AccountEdit extends HttpServlet {

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
		String seq = req.getParameter("seq");
		String seqacc = req.getParameter("seqacc");
		String seqrcc = req.getParameter("seqrcc");
		
		if(fdwContent ==null) {
			fdwContent ="0";
		}
		System.out.println("fdwcontent"+fdwContent);
		if(seqDepositWithdrawalStatus == "+") {
			seqDepositWithdrawalStatus = "1";
		}else {
			seqDepositWithdrawalStatus="2";
		}
		
		System.out.println("seqacc: "+seq);
		System.out.println("sending");
		AccountDAO dao = new AccountDAO();
		AccountInfoDTO dto = new AccountInfoDTO();
		
		
		dto.setIdMember(id);
		dto.setSeqAccInfo(seq);
		dto.setAccInfoDate(accInfoDate);
		dto.setLocation(location);
		dto.setContent(content);
		dto.setSeqAccCategory(seqAccCategory);
		dto.setSeqReasonsChangeList(seqReasonsChangeList);
		dto.setPrice(Integer.parseInt(price));
		dto.setSeqDepositWithdrawalStatus(seqDepositWithdrawalStatus);
		
		dto.setFdwContent(fdwContent);
		dto.setSeqAcc(seqacc);
		dto.setSeqReasonChangeCategory(seqrcc);
		System.out.println("test: "+dto.getSeqDepositWithdrawalStatus());
		System.out.println("seqaccinfo: "+dto.getSeqAccInfo());
		
		int editresult = dao.updateAcc(dto);
		
	}

}
