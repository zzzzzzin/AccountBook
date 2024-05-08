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
    	String seqPost = req.getParameter("paramSeq");
        String seqUser = req.getParameter("user");
        String content = req.getParameter("comment");
        
        // CommentDTO 객체 생성 및 데이터 설정
        CommentDTO dto = new CommentDTO();
        CommentDAO dao = new CommentDAO();
        System.out.println("comment start");
        System.out.println(seqPost);
        System.out.println(seqUser);
        System.out.println(content);
        System.out.println("comment start");
        dto.setContent(content);
        dto.setSeqPost(Integer.parseInt( seqPost));
        dto.setSeqUser(Integer.parseInt(seqUser));
        
        int response = dao.addComment(dto); 
        
        System.out.println("response: "+response);
        // CommentDAO를 사용하여 댓글 저장
    }
}