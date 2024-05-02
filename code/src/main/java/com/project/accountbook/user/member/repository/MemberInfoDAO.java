package com.project.accountbook.user.member.repository;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.project.accountbook.util.DBUtil;


public class MemberInfoDAO {
		private Connection conn;
		private Statement stat;
		private PreparedStatement pstat;
		private ResultSet rs;

		public MemberInfoDAO() {
			this.conn = DBUtil.open("192.168.10.47", "jspProject", "java1234");
}


}