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
public class addReplyComment extends HttpServlet {
    private CommentDAO cdao = new CommentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String seqComments = req.getParameter("seqComments");
        String seqUser = req.getParameter("seqUser");
        String content = req.getParameter("content");

        CommentDTO replyComment = new CommentDTO();
        replyComment.setSeqComments(seqComments);
        replyComment.setSeqUser(seqUser);
        replyComment.setContent(content);

        int result = cdao.addReplyComment(replyComment);
		resp.setCharacterEncoding("UTF-8");
        if (result > 0) {
            resp.sendRedirect("/board/discussion.do?seq=" + req.getParameter("seqPost"));
        } else {
            resp.sendRedirect("/board/discussion.do?seq=" + req.getParameter("seqPost") + "&error=1");
        }
    }
}