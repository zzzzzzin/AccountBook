package com.project.accountbook.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.accountbook.board.post.model.NoticeDTO;
import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.repository.BoardDAO;

@WebServlet("/board/noticeBoard.do")
public class NoticeBoard extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PostDTO postDto = new PostDTO();
		postDto.setSeqBoard("1"); // 게시판 번호를 1로 설정
		BoardDAO dao = new BoardDAO();
		ArrayList<NoticeDTO> noticeList = dao.selectNoticeDTOs(postDto);
		
		req.setAttribute("noticeList", noticeList); // noticeList 객체를 요청 객체에 추가
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/notice-board.jsp");
		dispatcher.forward(req, resp);

	}
	
}
