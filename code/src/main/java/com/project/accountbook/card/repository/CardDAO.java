package com.project.accountbook.card.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.project.accountbook.card.model.CardDTO;
import com.project.accountbook.util.DBUtil;

public class CardDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public CardDAO() {
		this.conn = DBUtil.open();
	}
	
	public int addCard(CardDTO dto) {
		try {

			String sql = "insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) values (SEQCARDINFORMATION.NEXTVAL, ?, ?, ?, ?, ?, ?, ?)";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getCiName());
			pstat.setString(2, dto.getExplanation());
			pstat.setInt(3, dto.getAnnualFee());
			pstat.setString(4, dto.getOverseasUse());
			pstat.setString(5, dto.getCardCompany());
			pstat.setString(6, dto.getFileLink());
			pstat.setInt(7, dto.getSeqCardType());

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CardDAO.addCard");
			e.printStackTrace();
		}
		return 0;
	}
	
	
}















