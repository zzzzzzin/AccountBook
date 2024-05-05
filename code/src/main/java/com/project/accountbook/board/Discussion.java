package com.project.accountbook.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.board.comment.model.CommentDTO;
import com.project.accountbook.board.comment.repository.CommentDAO;

@WebServlet("/board/discussion.do")
public class Discussion extends HttpServlet {
    CommentDTO commentDto = new CommentDTO();

	CommentDAO dao = new CommentDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	HttpSession session = req.getSession();
        String seqPost = req.getParameter("seqPost");

        List<CommentDTO> comments = dao.getCommentsByPostSeq(seqPost);

        req.setAttribute("comments", comments);
        req.setAttribute("replyDAO", dao);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/info.jsp");
        dispatcher.forward(req, resp);
    }
}
