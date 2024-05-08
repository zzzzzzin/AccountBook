package com.project.accountbook.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/editComment.do")
public class EditComment extends HttpServlet {
    private CommentDAO cdao = new CommentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String commentSeq = req.getParameter("commentSeq");
        String editedContent = req.getParameter("editedContent");

        int result = cdao.updateComment(commentSeq, editedContent);

        if (result > 0) {
            resp.getWriter().write("Success");
        } else {
            resp.getWriter().write("Fail");
        }
    }
}