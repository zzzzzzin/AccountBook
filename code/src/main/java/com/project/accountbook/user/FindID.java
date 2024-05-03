package com.project.accountbook.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.user.repository.UserDAO;

@WebServlet("/user/find-id.do")
public class FindID extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/find-id.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
    	String name = req.getParameter("name");
        String ssn = req.getParameter("ssn");

        System.out.println("Input Name: " + name);
        System.out.println("Input SSN: " + ssn);

        UserDAO dao = new UserDAO();
        String foundId = dao.findId(name, ssn);

        req.setAttribute("foundId", foundId);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/find-id.jsp");
        dispatcher.forward(req, resp);
    }
}