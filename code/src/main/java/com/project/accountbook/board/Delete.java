package com.project.accountbook.board;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.repository.BoardDAO;

// Delete.java
@WebServlet("/board/delete.do")
public class Delete extends HttpServlet {
    private BoardDAO bdao = new BoardDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String seq = req.getParameter("seq");

        int result = bdao.deletePost(seq);
        if (result > 0) {
            resp.getWriter().write("Success");
        } else {
            resp.getWriter().write("Fail");
        }
    }
}