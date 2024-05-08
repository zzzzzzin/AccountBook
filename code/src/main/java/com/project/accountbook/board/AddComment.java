package com.project.accountbook.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.board.comment.model.CommentDTO;
import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/add-comment.do")
public class AddComment extends HttpServlet {
    
    private CommentDAO cdao = new CommentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int seqPost = Integer.parseInt(req.getParameter("seqPost"));
        int seqUser = 0;
        int seqComments = 0; // 새로 추가

        // 세션에서 seqUser 값 가져오기
        HttpSession session = req.getSession();
        if (session.getAttribute("seqUser") != null) {
            seqUser = (int) session.getAttribute("seqUser");
        }

        String content = req.getParameter("content");

        // seqUser 값이 유효한지 확인
        if (seqUser == 0) {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("Invalid seqUser");
            return;
        }

        // content 값이 비어있는지 확인
        if (content == null || content.trim().isEmpty()) {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("Empty comment content");
            return;
        }

        // seqComments 값이 있는 경우 (답글 작성일 때)
        String seqCommentsStr = req.getParameter("seqComments");
        if (seqCommentsStr != null && !seqCommentsStr.isEmpty()) {
            seqComments = Integer.parseInt(seqCommentsStr);
        }

        CommentDTO commentDto = new CommentDTO();
        commentDto.setSeqPost(seqPost);
        commentDto.setSeqUser(seqUser);
        commentDto.setContent(content);

        int result = cdao.addComment(commentDto);

        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        if (result > 0) {
            resp.getWriter().write("Success");
        } else {
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.getWriter().write("Failed to add comment");
        }
    }
}