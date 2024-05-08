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

			PostDTO dto = new PostDTO();
			//새글 쓰기? 답변글 쓰기?
			String reply = req.getParameter("reply");
			String thread = req.getParameter("thread");
			String depth = req.getParameter("depth");
			
			//dto.
			req.setAttribute("reply", reply);
			req.setAttribute("thread", thread);
			req.setAttribute("depth", depth);

			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/write.jsp");
			dispatcher.forward(req, resp);

		}
		
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				
			//1. MultipartRequest
			MultipartRequest multi = new MultipartRequest(
					req,
					req.getRealPath("/asset/images"),
					1024 * 1024 * 10,
					"UTF-8",
					new DefaultFileRenamePolicy()
				);
			System.out.println(req.getRealPath("/asset/images"));
			
			HttpSession session = req.getSession();
			String id = (String)session.getAttribute("id"); // 세션 으로 user id 가져오기
			req.setCharacterEncoding("UTF-8");
			System.out.println(1);
			
			
			//2. multi.getParameter("title")
			BoardDAO user = new BoardDAO();
			int secretCheck = 0;
			
			String seqBoard = multi.getParameter("seqBoard");
			String seqUser = user.readSession(id); // BoardDAO 객체의 readSession 메소드 호출
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");
//			int secretCheck = Integer.parseInt(multi.getParameter("secretCheck"));
			String secret = multi.getParameter("secretCheck");
			if(secret == null) {
				secretCheck = 0;
			} else {
				secretCheck = 1;
			}
			String pic = multi.getFilesystemName("pic");
			
			System.out.println(seqBoard + "seqBoard");
			System.out.println(seqUser + "seqUser");
			System.out.println(title + "title");
			System.out.println(content + "content");
			System.out.println(secretCheck + "secretCheck");
			System.out.println(pic + "pic");
			
			
			//3. PostDTO dto = new PostDTO(); > setXXX()
			
			BoardDAO dao = new BoardDAO();
			PostDTO dto = new PostDTO();
			dto.setSeqBoard(seqBoard);
			dto.setSeqUser(seqUser);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setSecretCheck(secretCheck);
//			System.out.println(3);
			
			//4. DAO dao = new DAO(); > dao.add(dto);
			System.out.println(dto);
			int result = dao.boardWrite(dto);
			
			System.out.println("result: " + result);
			
			if (result == 1) {
				resp.sendRedirect("/account/board/view.do");
//				System.out.println(4);
			} else {
				resp.setCharacterEncoding("UTF-8");
				
				PrintWriter writer = resp.getWriter();
				writer.print(OutputUtil.redirect("실패했습니다."));
				writer.close();
			}
//			System.out.println(5);
			
			//5. result > location.href = "";
			
			
			} catch (Exception e) {
				System.out.println("Register.doPost");
				e.printStackTrace();
			}
		}
		
	}