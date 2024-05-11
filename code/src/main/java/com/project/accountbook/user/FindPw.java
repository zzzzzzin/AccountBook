package com.project.accountbook.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.user.model.UserDTO;
import com.project.accountbook.user.repository.UserDAO;
import com.project.accountbook.util.OutputUtil;

@WebServlet("/user/find-pw.do")
public class FindPw extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/find-pw.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
	
    	String id = req.getParameter("id");
    	String name = req.getParameter("name");
    	
    	System.out.println(id);
    	System.out.println(name);
    	
    	UserDAO dao =  new UserDAO();
    	int checkId = dao.checkId(id, name);
    	
    	//일치하는 회원 정보가 존재하면
    	if(checkId != 0) {
    		
    		int result = dao.gmailSend(id, name);
    		
    		req.setAttribute("result", result);
    		
    		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/find-pw.jsp");
    	    dispatcher.forward(req, resp);
    		
    	} else {
    		
    		resp.setCharacterEncoding("UTF-8");
    		
    		PrintWriter writer =  resp.getWriter();
    		writer.print(OutputUtil.redirect("일치하는 회원 정보가 존재하지 않습니다."));
    		writer.close();
    		
    	}
		
	}
}