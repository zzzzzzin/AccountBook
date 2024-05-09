package com.project.accountbook.board.comment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/editReplyComment.do")
public class EditReplyComment extends HttpServlet {
    private CommentDAO cdao = new CommentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String replyCommentSeq = req.getParameter("replyCommentSeq");
        String editedContent = req.getParameter("editedContent");
        int seqUser = (Integer) req.getSession().getAttribute("seqUser");

        // 답글 작성자와 현재 로그인한 사용자가 일치하는지 확인
        if (cdao.isReplyCommentAuthor(replyCommentSeq, seqUser)) {
            int result = cdao.updateReplyComment(replyCommentSeq, editedContent);
            if (result > 0) {
                resp.getWriter().write("Success");
            } else {
                resp.getWriter().write("Fail");
            }
        } else {
            resp.getWriter().write("Unauthorized");
        }
    }
}