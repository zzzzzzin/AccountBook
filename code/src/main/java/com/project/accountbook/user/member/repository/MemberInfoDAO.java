package com.project.accountbook.user.member.repository;


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

import com.project.accountbook.user.member.model.MemberInfoDTO;
import com.project.accountbook.util.DBUtil;


public class MemberInfoDAO {
		private Connection conn;
		private Statement stat;
		private PreparedStatement pstat;
		private ResultSet rs;

		public MemberInfoDAO() {
			this.conn = DBUtil.open("192.168.10.47", "jspProject", "java1234");
}

		public int unregister(String id) {
		
		//queryParamNoReturn
		try {
			String sql = "update tblMember set pw = '0000', name = '탈퇴', email = '탈퇴', pic = default, intro = null, ing = 4 where id = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);

			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("UserInfoDAO.unregister");
			e.printStackTrace();
		}
		
		return 0;
	}
}
