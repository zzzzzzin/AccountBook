package com.project.accountbook.board;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String report = req.getParameter("report");//신고 
		
		
		Cookie postcookie;
		Cookie[] cookies = req.getCookies(); // 모든 쿠키 가져오기
		boolean postcheck = false;
		boolean reportcheck = false;
		
		
		

		if (cookies!= null) {
		    for (Cookie c : cookies) {
		        String name = c.getName(); // 쿠키 이름 가져오기
		        String value = c.getValue(); //쿠기 내용 가져오
		        if (name.equals("postSeq"+seq) && value.equals(seq)) {
		        	postcheck = true;
		        } 	        
		        if(name.equals("report"+seq) && value.equals(seq)) {
		        	reportcheck = true;
		        }
		    }
	    }
		
		if(postcheck == false) {
			if(type.equals("like")) {	
				dao.like(seq);
				postcookie = new Cookie("postSeq"+seq, seq);
				//postcookie.setMaxAge(60 * 60 * 24);
				postcookie.setMaxAge(60 * 60);
				postcookie.setPath("/");
				resp.addCookie(postcookie);
				
			} else if (type.equals("dislike")) {
				dao.dislike(seq);
				postcookie = new Cookie("postSeq"+seq, seq);
				//postcookie.setMaxAge(60 * 60 * 24);
				postcookie.setMaxAge(60 * 60);
				postcookie.setPath("/");
				resp.addCookie(postcookie);
			}
		}
		
		if(reportcheck == false) {
			dao.report(seq);
			postcookie = new Cookie("report"+seq , seq);
			postcookie.setMaxAge(60 * 60);
			postcookie.setPath("/");
			resp.addCookie(postcookie);	
		}
		
	    
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/discussion.jsp");
		//dispatcher.forward(req, resp);		
	
	
	}
}
	
