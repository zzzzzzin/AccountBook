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
		//탈퇴
	public int unregister(String id, String pw) {
	    try {
	        // 트랜잭션 시작
	        conn.setAutoCommit(false);

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
	        } else {
	            // 트랜잭션 롤백
	            conn.rollback();
	            return 0;
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
	            if (conn != null) {
	                conn.setAutoCommit(true);
	                conn.close();
	            }
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

		        System.out.println("SQL Query: " + sql);
		        System.out.println("Name: " + name);
		        System.out.println("SSN: " + ssn);

		        if (rs.next()) {
		            String foundId = rs.getString("id");
		            System.out.println("Found ID: " + foundId);
		            return foundId;
		        } else {
		            System.out.println("No matching ID found.");
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        try {
		            if (rs != null) rs.close();
		            if (pstat != null) pstat.close();
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }
		    return null;
		}
		
		//계정 생성
		public int register(UserDTO dto) {
		    try {
		        // tblSurvey 데이터 삽입
		        String sql = "INSERT INTO tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) " +
		                     "VALUES (seqSurvey.NEXTVAL, ?, ?, ?, ?)";
		        pstat = conn.prepareStatement(sql);
		        if (dto.getSeqCompressionIntensity() != null && dto.getSeqSavingsPeriod() != null) {
		            pstat.setInt(1, dto.getMonthlyPaycheck());
		            pstat.setInt(2, dto.getSavingsGoals());
		            pstat.setString(3, dto.getSeqCompressionIntensity());
		            pstat.setString(4, dto.getSeqSavingsPeriod());
		            System.out.println("tblSurvey 데이터 삽입 (사용자 입력 값)");
		        } else {
		            pstat.setInt(1, 0);
		            pstat.setInt(2, 0);
		            pstat.setString(3, "1");
		            pstat.setString(4, "1");
		            System.out.println("tblSurvey 데이터 삽입 (기본값)");
		        }
		        int surveyResult = pstat.executeUpdate();
		        System.out.println("tblSurvey 데이터 삽입 결과: " + surveyResult);

		        // seq 값 가져오기
		        sql = "SELECT tblSurvey_seq.CURRVAL FROM DUAL";
		        pstat = conn.prepareStatement(sql);
		        rs = pstat.executeQuery();
		        int seq = 0;
		        if (rs.next()) {
		            seq = rs.getInt(1);
		            System.out.println("seq 값: " + seq);
		        }

		        // tblMember 데이터 삽입
		        sql = "INSERT INTO tblMember (id, pw, name, nickname, phoneNumber, ssn, gender, reportCount, joinDate, seqSurvey, seqProfileimg) " +
		              "VALUES (?, ?, ?, ?, ?, ?, ?, 0, SYSDATE, ?, 1)";
		        pstat = conn.prepareStatement(sql);
		        pstat.setString(1, dto.getId());
		        pstat.setString(2, dto.getPw());
		        pstat.setString(3, dto.getName());
		        pstat.setString(4, dto.getNickname());
		        pstat.setString(5, dto.getPhoneNumber());
		        pstat.setString(6, dto.getSsn());
		        pstat.setString(7, dto.getGender());
		        pstat.setInt(8, seq);
		        int result = pstat.executeUpdate();
		        System.out.println("tblMember 데이터 삽입 결과: " + result);

		        if (result == 1) {
		            // tblMemberPriv 데이터 삽입
		            sql = "INSERT INTO tblMemberPriv (seq, seqPriv, idMember) " +
		                  "VALUES (seqMemberPriv.NEXTVAL, 2, ?)";
		            pstat = conn.prepareStatement(sql);
		            pstat.setString(1, dto.getId());
		            int privResult = pstat.executeUpdate();
		            System.out.println("tblMemberPriv 데이터 삽입 결과: " + privResult);
		        }

		        return result;
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return 0;
		}
}