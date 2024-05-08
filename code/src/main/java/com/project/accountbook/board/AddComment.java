package com.project.accountbook.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.comment.model.CommentDTO;
import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/add-comment.do")
public class AddComment extends HttpServlet {
    
    private CommentDAO cdao = new CommentDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int seqPost = Integer.parseInt(req.getParameter("seqPost"));
        int seqUser = Integer.parseInt(req.getParameter("seqUser"));
        String content = req.getParameter("content");

        CommentDTO commentDto = new CommentDTO();
        commentDto.setSeqPost(seqPost);
        commentDto.setSeqUser(seqUser);
        commentDto.setContent(content);

        int result = cdao.addComment(commentDto);

        resp.getWriter().print(result);
    }
}