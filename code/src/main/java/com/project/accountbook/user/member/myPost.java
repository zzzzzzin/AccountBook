package com.project.accountbook.user.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.user.repository.UserDAO;

@WebServlet("/user/member/my-post.do")
public class myPost extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String id = (String)session.getAttribute("id");

        UserDAO dao = new UserDAO();
        ArrayList<PostDTO> plist = dao.getMyPosts(id);

        req.setCharacterEncoding("UTF-8");
        req.setAttribute("plist", plist);
        
        System.out.println("dd");

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/my-post.jsp");
        dispatcher.forward(req, resp);

    }

}