package com.project.accountbook.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.user.repository.UserDAO;

@WebServlet("/user/checkDuplicate.do")
public class CheckDuplicate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String field = req.getParameter("field");
        String value = req.getParameter("value");

        UserDAO dao = new UserDAO();
        boolean isDuplicate = false;

        switch (field) {
            case "id":
                isDuplicate = dao.isIdDuplicate(value);
                break;
            case "nickname":
                isDuplicate = dao.isNicknameDuplicate(value);
                break;
            case "phoneNumber":
                isDuplicate = dao.isPhoneNumberDuplicate(value);
                break;
            case "ssn":
                isDuplicate = dao.isSsnDuplicate(value);
                break;
        }

        resp.setContentType("text/plain");
        resp.getWriter().write(isDuplicate ? "duplicate" : "available");
    }
}