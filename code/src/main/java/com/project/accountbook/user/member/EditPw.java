package com.project.accountbook.user.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.user.member.repository.MemberInfoDAO;
import com.project.accountbook.user.model.UserDTO;

@WebServlet("/user/member/edit-pw.do")
public class EditPw extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/edit-pw.jsp");
		dispatcher.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	    HttpSession session = req.getSession();
	    String id = (String) session.getAttribute("id"); // 세션에서 아이디 가져오기

	    String nowPw = req.getParameter("nowPw"); // 입력한 현재 비밀번호
	    String editPw = req.getParameter("editPw"); // 수정할 비밀번호
	    String checkPw = req.getParameter("checkPw"); // 수정할 비밀번호 확인

	    MemberInfoDAO dao = new MemberInfoDAO();

	    UserDTO dto = new UserDTO();
	    dto.setId(id);

	    UserDTO beforeEditPw = dao.getPw(dto); // 변경 전의 비밀번호 가져오기

	    if (nowPw.equals(beforeEditPw.getPw())) {

	    	if (editPw.equals(checkPw)) {
	            dao.editPw(editPw, dto); // 비밀번호 수정
	        } else {
	            System.out.println("수정할 비밀번호와 확인 비밀번호가 다릅니다.");
	        }

	    } else {
	        System.out.println("현재 비밀번호와 일치하지 않습니다.");
	    }

	    // 페이지 이동
	    RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/info.jsp");
	    dispatcher.forward(req, resp);
	}
}