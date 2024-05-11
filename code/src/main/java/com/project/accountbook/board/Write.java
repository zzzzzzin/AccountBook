package com.project.accountbook.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.project.accountbook.board.post.model.PostDTO;
import com.project.accountbook.board.repository.BoardDAO;
import com.project.accountbook.util.OutputUtil;

@WebServlet("/board/write.do")
public class Write extends HttpServlet {

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			String seqBoard = req.getParameter("seqBoard");
			
			req.setAttribute("seqBoard", seqBoard);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/write.jsp");
			dispatcher.forward(req, resp);

		}
		
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
			
			HttpSession session = req.getSession();
			String id = (String)session.getAttribute("id"); // 세션 으로 user id 가져오기
			req.setCharacterEncoding("UTF-8");
						
			
			BoardDAO dao = new BoardDAO();
			int secretCheck = 0;
			
			String seqBoard = req.getParameter("seqBoard");
			String seqUser = dao.readSession(id); // BoardDAO 객체의 readSession 메소드 호출
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			String secret = req.getParameter("secretCheck");
	
			
			if(secret == null) {
				secretCheck = 0;
			} else {
				secretCheck = 1;
			}
			

			PostDTO dto = new PostDTO();
			
			dto.setSeqBoard(seqBoard);
			dto.setSeqUser(seqUser);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setSecretCheck(secretCheck);
		
			int result = dao.boardWrite(dto);

			
			if (result == 1) {
				resp.sendRedirect("/account/board/view.do");
			} else {
				resp.setCharacterEncoding("UTF-8");
				
				PrintWriter writer = resp.getWriter();
				writer.print(OutputUtil.redirect("실패했습니다."));
				writer.close();
			}
			
			
			} catch (Exception e) {
				System.out.println("Register.doPost");
				e.printStackTrace();
			}
		}
		
	}