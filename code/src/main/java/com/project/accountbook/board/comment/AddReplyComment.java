package com.project.accountbook.board.comment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.comment.model.CommentDTO;
import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/addReplyComment.do")
public class AddReplyComment extends HttpServlet {
    private CommentDAO cdao = new CommentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String seqComments = req.getParameter("seqComments");
            String seqUser = req.getParameter("seqUser");
            String content = req.getParameter("content");

            System.out.println("seqComments: " + seqComments);
            System.out.println("seqUser: " + seqUser);
            System.out.println("content: " + content);

            int seqCommentsInt = Integer.parseInt(seqComments);
            int seqUserInt = 0;
            if (seqUser != null && !seqUser.isEmpty()) {
                seqUserInt = Integer.parseInt(seqUser);
            }

            CommentDTO replyComment = new CommentDTO();
            replyComment.setSeqComments(seqCommentsInt);
            replyComment.setSeqUser(seqUserInt);
            replyComment.setContent(content);

            int result = cdao.addReplyComment(replyComment);

            System.out.println("Result: " + result);
            if (result > 0) {
                resp.setStatus(HttpServletResponse.SC_OK);
            } else {
                resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
