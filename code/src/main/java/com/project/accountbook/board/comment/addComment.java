package com.project.accountbook.board.comment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.comment.model.CommentDTO;
import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/addcomment.do")
public class addComment extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 댓글 작성에 필요한 데이터 받기
        String seqPost = req.getParameter("seqPost");
        String seqUser = req.getParameter("seqUser");
        String content = req.getParameter("content");
        
        // CommentDTO 객체 생성 및 데이터 설정
        CommentDTO comment = new CommentDTO();
        comment.setSeqPost(seqPost);
        comment.setSeqUser(seqUser);
        comment.setContent(content);
        
        // CommentDAO를 사용하여 댓글 저장
        CommentDAO cdao = new CommentDAO();
        int result = cdao.addComment(comment);
        
        // 댓글 작성 결과에 따른 처리
        if (result == 1) {
            resp.sendRedirect("/board/discussion.do?seq=" + seqPost);
        } else {
            // 댓글 작성 실패 시 에러 페이지로 이동하거나 적절한 처리 수행
            resp.sendRedirect("/board/error.do");
        }
    }
}