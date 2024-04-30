package com.project.accountbook.card.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

import com.project.accountbook.card.model.MyCardDTO;
import com.project.accountbook.util.DBUtil;

public class CardDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public CardDAO() {
		this.conn = DBUtil.open();
	}
	
	public int addMyCard(MyCardDTO dto) {
		
		try {

			String sql = "insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) values (seqMyCard.nextVal, ?, ?, ?, ?)";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getCardNumber());
			pstat.setString(2, dto.getAlias());
			pstat.setString(3, dto.getValidity());
			pstat.setString(4, dto.getIdMember());
			pstat.setString(5, dto.getSeqCardInformation());

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CardDAO.addMyCard");
			e.printStackTrace();
		}		
		
		return 0;
	}
	
	
	public int delMyCard(MyCardDTO dto) {
		
		try {

			String sql = "delete from tblMyCard where cardNumber = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getCardNumber());

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CardDAO.delMyCard");
			e.printStackTrace();
		}
		return 0;
	}
	
	public int updateMyCard(MyCardDTO dto) {
		
		try {

			String sql = "update tblMyCard set alias = ? where cardnumber = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getAlias());
			pstat.setString(2, dto.getCardNumber());

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CardDAO.updateMyCard");
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public MyCardDTO getMyCard(String cardNumber) {
		
		try {
			
			String sql = "select * from tblMyCard where cardnumber = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, cardNumber);
			
			rs = pstat.executeQuery(sql);
			
			if (rs.next()) {
				
				MyCardDTO dto = new MyCardDTO();
				
				dto.setAlias(rs.getString("alias"));
				dto.setValidity(rs.getString("validity"));
				dto.setIdMember(rs.getString("idMember"));
				dto.setSeqCardInformation(rs.getString("seqCardInformation"));
				
				return dto;				
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
}















