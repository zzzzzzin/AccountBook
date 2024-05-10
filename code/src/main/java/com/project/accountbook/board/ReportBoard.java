package com.project.accountbook.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.repository.BoardDAO;

@WebServlet("/board/reportBoard.do")
public class ReportBoard extends HttpServlet {

	
	BoardDAO dao = new BoardDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		session.setAttribute("read", "n");		
		
		
		//쿠키 조회수
		Cookie cookies = new Cookie("cookieread", "n");
		cookies.setMaxAge(60 * 60);
		cookies.setPath("/");
		resp.addCookie(cookies);
		//끝
		
		
		//페이징
		String page = req.getParameter("page");
		
		int nowPage = 0;	//현재 페이지 번호
		int totalCount = 0;	//총 게시물 수
		int pageSize = 10;	//한 페이지에서 출력할 게시물 수
		int totalPage = 0;	//총 페이지 수
		int begin = 0;		//페이징 시작 위치
		int end = 0;		//페이지 끝 위치
		int n = 0;			
		int loop = 0;
		int blockSize = 10;	//페이지 개수
		
		if(page == null || page.equals("")) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
			
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		
		//검색
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
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		
		
		ArrayList<PostDTO> reportList = dao.list(map, "3");
		
		for (PostDTO list : reportList) {
			
            String title = list.getTitle();        
            
            if(search != null && search.equals("y") && (column.equals("title") || column.equals("total"))) {
    			title = title.replace(word, "<span style='color: tomato; font-weight: bold;'>" + word + "</span>");
    			list.setTitle(title);
    		}
            
        }

		
		
		
		req.setAttribute("reportList", reportList); // reportList 객체를 요청 객체에 추가
		req.setAttribute("map", map);
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/report-board.jsp");
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
