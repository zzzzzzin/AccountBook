//package com.project.accountbook.account;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.project.accountbook.util.OutputUtil;
//
//public class Auth {
//
//	public static boolean check(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//
//		HttpSession session = req.getSession();
//		String seq = req.getParameter("seq"); // Edit.java의 req를 받았기 때문에 seq를 받을 수 있다.
//
//		// 글쓴이 본인?
//		BoardDAO dao = new BoardDAO();
//
//		BoardDTO dto = dao.get(seq);
//
//		// id != dto.id && lv != 2
//		if (session.getAttribute("id") == null || (!session.getAttribute("id").toString().equals(dto.getId())
//				&& !session.getAttribute("lv").toString().equals("2"))) {
//
//			resp.setCharacterEncoding("UTF-8");
//			PrintWriter writer = resp.getWriter();
//			writer.print(OutputUtil.redirect("권한이 없습니다."));
//			writer.close();
//
//			return true;
//		}
//
//		return false;
//	}
//
//}