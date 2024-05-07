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
import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.repository.BoardDAO;

@WebServlet("/board/discussion.do")
public class Discussion extends HttpServlet {
	
    CommentDTO commentDto = new CommentDTO();
	CommentDAO cdao = new CommentDAO();
	BoardDAO bdao = new BoardDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	HttpSession session = req.getSession();
    	
    	String seq = req.getParameter("seq");

        PostDTO post = bdao.readPost(seq);
        //List<CommentDTO> comments = cdao.getCommentsByPostSeq(seq);

        //req.setAttribute("comments", comments);
        //req.setAttribute("replyDAO", cdao);
        //req.setAttribute("seq", seq);
        req.setAttribute("post", post);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/discussion.jsp");
        dispatcher.forward(req, resp);
    }
}
