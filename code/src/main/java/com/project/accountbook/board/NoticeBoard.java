package com.project.accountbook.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.SizeSequence;

import com.project.accountbook.board.post.model.NoticeDTO;
import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.repository.BoardDAO;

@WebServlet("/board/noticeBoard.do")
public class NoticeBoard extends HttpServlet {

	BoardDAO dao = new BoardDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String column = req.getParameter("column");
		String word = req.getParameter("word");
		String search = "n"; //n : 목록보기, y : 검색하기
		
		if((column == null && word == null) || (word.equals(""))) {
			search = "n";
		} else {
			search = "y";
		}
		
		HashMap<String, String> map = new HashMap<>();
		
		if(column == null) column = "";
		if(word == null) word = "";	
		
		map.put("search", search);
		map.put("column", column);
		map.put("word", word);
		
		
		
		ArrayList<PostDTO> noticeList = dao.list(map, "1");
		//ArrayList<PostDTO> noticeList = dao.list("1");
		
		for (PostDTO list : noticeList) {
			
            String title = list.getTitle();        
            
            if(search != null && search.equals("y") && (column.equals("title") || column.equals("total"))) {
    			title = title.replace(word, "<span style='color: tomato; font-weight: bold;'>" + word + "</span>");
    			list.setTitle(title);
    		}
            
        }
		
		req.setAttribute("noticeList", noticeList); // noticeList 객체를 요청 객체에 추가
		req.setAttribute("map", map);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/notice-board.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq"); //Post seq
		String type = req.getParameter("type"); //Like, Dislike 구분

		
		if(type.equals("like")) {
			
			dao.like(seq);
			
		} else if (type.equals("dislike")) {
			
			dao.dislike(seq);
		}

		
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/discussion.jsp");
		//dispatcher.forward(req, resp);		
	
	
	}
	
}
