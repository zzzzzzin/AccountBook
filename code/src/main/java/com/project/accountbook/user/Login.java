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
import com.project.accountbook.user.model.UserDTO;
import com.project.accountbook.user.repository.UserDAO;
import com.project.accountbook.util.OutputUtil;

@WebServlet("/user/login.do")
public class Login extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/login.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String id = req.getParameter("id");
	    String pw = req.getParameter("pw");

	    UserDAO dao = new UserDAO();
	    UserDTO dto = new UserDTO();
	    dto.setId(id);
	    dto.setPw(pw);

	    UserDTO result = dao.login(dto);

	    if (result != null && result.getId() != null) {
	        HttpSession session = req.getSession();
	        session.setAttribute("id", result.getId());
	        session.setAttribute("seqPriv", result.getSeqPriv());

	        resp.sendRedirect("/account/index.do");
	    } else {
	        result = dao.loginAdmin(dto);

	        if (result != null && result.getId() != null) {
	            HttpSession session = req.getSession();
	            session.setAttribute("id", result.getId());
	            session.setAttribute("seqPriv", result.getSeqPriv());

	            resp.sendRedirect("/account/index.do");
	        } else {
	            resp.setCharacterEncoding("UTF-8");
	            PrintWriter writer = resp.getWriter();
	            writer.print(OutputUtil.redirect("로그인에 실패했습니다."));
	            writer.close();
	        }
	    }
	}
}