package com.project.accountbook.board.comment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/deleteComment.do")
public class DeleteComment extends HttpServlet {
    private CommentDAO cdao = new CommentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String commentSeq = req.getParameter("commentSeq");
        int result = cdao.deleteComment(commentSeq);
        
        if (result > 0) {
            resp.getWriter().write("Success");
        } else {
            resp.getWriter().write("Fail");
        }
    }
}
