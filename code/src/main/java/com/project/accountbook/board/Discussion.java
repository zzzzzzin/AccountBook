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
	    Integer seqUser = (Integer) session.getAttribute("seqUser");

	    PostDTO post = bdao.readPost(seq);

	    
	    List<CommentDTO> comments = cdao.getCommentsByPostSeq(seq);
	    
	    for (CommentDTO comment : comments) {
	    	
	        List<CommentDTO> replyComments = cdao.getReplyCommentsByCommentSeq(comment.getSeq());
	        comment.setReplyComments(replyComments);
	        
	    }
	    
	    req.setAttribute("post", post);
	    req.setAttribute("comments", comments);
	    req.setAttribute("seqUser", seqUser);
	    
	    RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/discussion.jsp");
	    dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
	    if (action != null && action.equals("updateComment")) {
	        String commentSeq = req.getParameter("commentSeq");
	        String editedContent = req.getParameter("editedContent");
	        int result = cdao.updateComment(commentSeq, editedContent);
	        if (result > 0) {
	            // 댓글 수정 성공
	            resp.getWriter().write("Success");
	        } else {
	            // 댓글 수정 실패
	            resp.getWriter().write("Fail");
	        }
	    }
	}
}
