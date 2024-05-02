package com.project.accountbook.user.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.project.accountbook.user.model.UserDTO;
import com.project.accountbook.util.DBUtil;

public class UserDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public UserDAO() {
		this.conn = DBUtil.open("192.168.10.47", "jspProject", "java1234");
	}

//비밀번호 찾기 시 이메일 전송
	public static void gmailSend() {
		String user = "ktko@gmail.com"; // email
		String password = "password";// 패스워드
// SMTP 서버 정보를 설정한다.
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user)); // 수신자메일주소
			message.addRecipient(Message.RecipientType.TO, new InternetAddress("ktko@naver.com"));
// Subject
			message.setSubject("제목을 입력하세요"); // 메일 제목을 입력
// Text
			message.setText("내용을 입력하세요"); // 메일 내용을 입력
// send the message
			Transport.send(message); //// 전송
			System.out.println("message sent successfully...");
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

// 회원 로그인 (관리자,일반회원)
	public UserDTO login(UserDTO dto) {
	    try {
	        String sql = "SELECT m.*, mp.seqPriv FROM tblMember m " +
	                     "INNER JOIN tblMemberPriv mp ON m.id = mp.idMember " +
	                     "WHERE m.id = ? AND m.pw = ? AND mp.seqPriv = 2";
	        pstat = conn.prepareStatement(sql);
	        pstat.setString(1, dto.getId());
	        pstat.setString(2, dto.getPw());
	        rs = pstat.executeQuery();

	        if (rs.next()) {
	            UserDTO result = new UserDTO();
	            result.setId(rs.getString("id"));
	            result.setName(rs.getString("name"));
	            result.setSeqPriv(rs.getString("seqPriv"));
	            return result;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return null;
	}

	public UserDTO loginAdmin(UserDTO dto) {
	    try {
	        String sql = "SELECT * FROM tblAdmin WHERE id = ? AND pw = ?";
	        pstat = conn.prepareStatement(sql);
	        pstat.setString(1, dto.getId());
	        pstat.setString(2, dto.getPw());
	        rs = pstat.executeQuery();

	        if (rs.next()) {
	            UserDTO result = new UserDTO();
	            result.setId(rs.getString("id"));
	            result.setSeqPriv("3");
	            return result;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return null;
	}

		public int unregister(String id, String pw) {
		    try {
		        String sql = "SELECT COUNT(*) FROM tblMember WHERE id = ? AND pw = ?";
		        pstat = conn.prepareStatement(sql);
		        pstat.setString(1, id);
		        pstat.setString(2, pw);
		        rs = pstat.executeQuery();
		        
		        
		        if (rs.next() && rs.getInt(1) == 1) {
		            sql = "UPDATE tblMember SET pw = '0000', name = '탈퇴' WHERE id = ?";
		            pstat = conn.prepareStatement(sql);
		            pstat.setString(1, id);
		            pstat.executeUpdate();
		            
		            
		            sql = "UPDATE tblMemberPriv SET seqPriv = 4 WHERE idMember = ?";
		            pstat = conn.prepareStatement(sql);
		            pstat.setString(1, id);
		            pstat.executeUpdate();
		            
		            // 트랜잭션 커밋
		            conn.commit();
		            
		            return 1;
		        }
		    } catch (Exception e) {
		        // 트랜잭션 롤백
		        if (conn != null) {
		            try {
		                conn.rollback();
		            } catch (Exception ex) {
		                ex.printStackTrace();
		            }
		        }
		        System.out.println("MemberInfoDAO.unregister");
		        e.printStackTrace();
		    } finally {
		        try {
		            if (rs != null) rs.close();
		            if (pstat != null) pstat.close();
		            if (conn != null) conn.close();
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }
		    return 0;
}
		//아이디 찾기 코드 
		public String findId(String name, String ssn) {
		    try {
		        String sql = "SELECT id FROM tblMember WHERE name = ? AND ssn = ?";
		        pstat = conn.prepareStatement(sql);
		        pstat.setString(1, name);
		        pstat.setString(2, ssn);
		        rs = pstat.executeQuery();

		        if (rs.next()) {
		            return rs.getString("id");
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return null;
		}
}