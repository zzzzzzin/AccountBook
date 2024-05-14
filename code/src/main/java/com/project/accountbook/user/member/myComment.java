package com.project.accountbook.user.member;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.accountbook.user.repository.UserDAO;

/**
 * MyComment 서블릿은 사용자의 댓글 정보를 관리합니다.
 */
@WebServlet("/user/member/my-comment.do")
public class myComment extends HttpServlet{

	 /**
     * GET 요청을 처리하여 사용자의 댓글 정보를 가져와서 페이지에 표시합니다.
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String id = (String) session.getAttribute("id");
        
        String page = req.getParameter("page");
		
		int nowPage = 0;	
		int totalCount = 0;	
		int pageSize = 10;	
		int totalPage = 0;	
		int begin = 0;		
		int end = 0;		
		int n = 0;			
		int loop = 0;
		int blockSize = 10;
		
		if(page == null || page.equals("")) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
			
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;

        UserDAO dao = new UserDAO();
        ArrayList<HashMap<String, String>> commentsList = dao.getMyComments(id);
        
        totalCount = dao.getTotalcommentNum(id);
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		
		//페이지 바
		StringBuilder sb = new StringBuilder();
		
		loop = 1;
		n = ((nowPage - 1) / blockSize) * blockSize + 1;
		
		
		
		//이전 페이지
		if (n == 1) {
			sb.append(String.format(" <a href='#!'>[이전 %d페이지]</a> ", blockSize));
		} else {
			sb.append(String.format(" <a href='/account/board/my-comment.do?page=%d'>[이전 %d페이지]</a> ", n - 1,blockSize));
		}

		
		//페이지 리스트
		while (!(loop > blockSize || n > totalPage)) {
			if(n == nowPage) {
				sb.append(String.format(" <a href='#!' class='paging-nowpage'>%d</a> ", n));
			} else {
				sb.append(String.format(" <a href='/account/board/my-comment.do?page=%d'>%d</a> ", n,n));
			}
			
			loop++;
			n++;
		}
		
		//다음 페이지
		if (n >= totalPage) {
			sb.append(String.format(" <a href='#!'>[다음 %d페이지]</a> ", blockSize));
		} else {
			sb.append(String.format(" <a href='/account/board/board/my-comment.do?page=%d'>[다음 %d페이지]</a> ", n, blockSize));
		}

        req.setCharacterEncoding("UTF-8");
        req.setAttribute("nowPage", nowPage);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("pagebar", sb.toString());

        req.setAttribute("commentsList", commentsList);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/member/my-comment.jsp");
        dispatcher.forward(req, resp);

    }

	

}