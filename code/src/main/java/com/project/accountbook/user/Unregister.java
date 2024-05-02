package com.project.accountbook.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.user.repository.UserDAO;
import com.project.accountbook.util.OutputUtil;

@WebServlet("/user/unregister.do")
public class Unregister extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/unregister.jsp");
		dispatcher.forward(req, resp);

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    HttpSession session = req.getSession();
	    String id = (String)session.getAttribute("id");
	    
	    String currentPw = req.getParameter("currentPw");
	    String confirmPw = req.getParameter("confirmPw");
	    String confirmUnregister = req.getParameter("confirmUnregister");
	    
	    if (currentPw != null && confirmPw != null && currentPw.equals(confirmPw) && confirmUnregister != null) {
	        UserDAO dao = new UserDAO();
	        int result = dao.unregister(id, currentPw);
	        
	        if (result == 1) {
	            session.invalidate();
	            resp.sendRedirect("/account/index.do");
	        } else {
	            req.setAttribute("error", "탈퇴에 실패했습니다. 비밀번호를 확인해주세요.");
	        }
	    } else {
	        req.setAttribute("error", "비밀번호와 탈퇴 확인을 모두 입력해주세요.");
	    }
	}
	}