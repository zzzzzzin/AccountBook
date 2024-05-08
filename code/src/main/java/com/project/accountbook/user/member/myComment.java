package com.project.accountbook.user.member;

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

import com.project.accountbook.user.repository.UserDAO;

@WebServlet("/user/member/my-comment.do")
public class myComment extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String id = (String) session.getAttribute("id");

        UserDAO dao = new UserDAO();
        ArrayList<HashMap<String, String>> commentsList = dao.getMyComments(id);

        req.setCharacterEncoding("UTF-8");

        req.setAttribute("commentsList", commentsList);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/my-comment.jsp");
        dispatcher.forward(req, resp);

    }

	

}