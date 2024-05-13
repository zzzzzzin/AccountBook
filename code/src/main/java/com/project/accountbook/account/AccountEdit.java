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

@WebServlet("/account/calendaredit.do")
public class AccountEdit extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        String id = (String) session.getAttribute("id");

        try {
            req.setCharacterEncoding("UTF-8");
            String accInfoDate = req.getParameter("start").substring(0, 10);
            String location = req.getParameter("useLocation");
            String content = req.getParameter("content");
            String category = req.getParameter("category");
            String paymentMethod = req.getParameter("paymentMethod");
            String amount = req.getParameter("amount");
            String amountIndicator = req.getParameter("amountindicator");
            String isFixedExpense = req.getParameter("fixed");
            String fixedperiod = req.getParameter("period");
            String memo = req.getParameter("memo");
            String seq = req.getParameter("seq");
            String seqacc = req.getParameter("seqacc");
            String seqrcc = req.getParameter("seqrcc");
            String method = null;
    		String cardNum = null;
    		if(paymentMethod != null) {
    			String [] paymethod = paymentMethod.split(":");
    			method = paymethod[0];
    			cardNum = paymethod[2];
    		}
    		int paycontentseq = 0;
    		System.out.println("2. methodcheck");
    		if(method.contains("카드")) {
    			if(method.contains("체크")) {
    				paycontentseq = 3;
    			}else {
    				paycontentseq = 2;
    			}
    		}else {
    			if (method.contains("계좌")) {
    				paycontentseq = 1;
    			}else {
    				paycontentseq = 4;
    			}
    		}
    		if(fixedperiod!=null) {
    			if(Integer.parseInt(fixedperiod)==1) {
    				fixedperiod = "1";
    			}else if(Integer.parseInt(fixedperiod)==3) {
    				fixedperiod ="2";
    			}else if(Integer.parseInt(fixedperiod)==12) {
    				fixedperiod="3";
    			}
    		}
            AccountDAO dao = new AccountDAO();
            AccountInfoDTO dto = new AccountInfoDTO();
            // Set DTO properties from request
            System.out.println("dto start");
            dto.setIdMember(id);
            dto.setSeqAcc(seqacc);
            dto.setSeqReasonChangeCategory(seqrcc);
            dto.setCardNumber(cardNum);
    		dto.setAccInfoDate(accInfoDate);
    		dto.setLocation(location);
    		dto.setContent(content);
    		dto.setSeqAccCategory(category);
    		dto.setSeqReasonsChangeList(String.valueOf(paycontentseq));
    		dto.setPrice(Integer.parseInt(amount));
    		dto.setSeqDepositWithdrawalStatus(amountIndicator.equals("+") ? "1" : "2");
    		if (Integer.parseInt(isFixedExpense)>=0) {
    			dto.setSeqFixedFluctuationPeriod(fixedperiod);
    			dto.setFdwContent(memo);
    			dto.setSeqFixedFluctuationCheck(isFixedExpense);
    		}else {
    			dto.setSeqFixedFluctuationCheck("0");
    		}
            System.out.println("dto end");
            

            int editResult = dao.updateAcc(dto);

            if (editResult > 0) {
                out.println("{\"message\": \"Update successful\", \"status\": \"success\"}");
            } else {
                resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                out.println("{\"message\": \"Update failed\", \"status\": \"error\"}");
            }
        } catch (Exception e) {
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            out.println("{\"message\": \"" + e.getMessage() + "\", \"status\": \"error\"}");
        } 
    }
}