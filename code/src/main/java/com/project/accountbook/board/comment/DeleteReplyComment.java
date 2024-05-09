package com.project.accountbook.board.comment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/deleteReplyComment.do")
public class DeleteReplyComment extends HttpServlet {
    private CommentDAO cdao = new CommentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String replyCommentSeq = req.getParameter("replyCommentSeq");

        HttpSession session = req.getSession();
        int seqUser = (Integer) session.getAttribute("seqUser");
        String seqPriv = (String) session.getAttribute("seqPriv");

        // 답글 작성자 또는 관리자인지 확인
        if (cdao.isReplyCommentAuthor(replyCommentSeq, seqUser) || "3".equals(seqPriv)) {
            int result = cdao.deleteReplyComment(replyCommentSeq);
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