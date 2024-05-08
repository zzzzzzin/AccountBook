package com.project.accountbook.card.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

import com.project.accountbook.card.model.CardDTO;
import com.project.accountbook.util.DBUtil;

public class CardDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public CardDAO() {
		this.conn = DBUtil.open("125.241.245.222", "webproject", "java1234");
	}
	
	//카드 추가
	public int addCard(CardDTO dto) {
		try {

			String sql = "insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) values ((SELECT NVL(MAX(seq), 0) + 1 FROM tblCardInformation), ?, ?, ?, ?, ?, ?, ?)";

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
	

	
	
	//카드 랜덤 추천
	public ArrayList<CardDTO> randomCard() {
        try {
            String sql = "SELECT c.name AS ciName, c.explanation, c.annualfee, c.overseasuse, c.cardcompany, c.filelink, c.seqcardtype " +
                         "FROM tblCardInformation c " +
                         "ORDER BY DBMS_RANDOM.VALUE";

            pstat = conn.prepareStatement(sql);
            rs = pstat.executeQuery();

            ArrayList<CardDTO> list = new ArrayList<>();

            while (rs.next()) {
                CardDTO dto = new CardDTO();
                dto.setCiName(rs.getString("ciName"));
                dto.setExplanation(rs.getString("explanation"));
                dto.setAnnualFee(rs.getInt("annualfee"));
                dto.setOverseasUse(rs.getString("overseasuse"));
                dto.setCardCompany(rs.getString("cardcompany"));
                dto.setFileLink(rs.getString("filelink"));
                dto.setSeqCardType(rs.getInt("seqcardtype"));
                list.add(dto);
            }

            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
	//카드 맞춤 추천
	public List<CardDTO> getPersonalizedRecommendation(String memberId) {
	    List<CardDTO> recommendedCards = new ArrayList<>();

	    try {
	    	String sql = "SELECT ci.seq AS seqCardInformation, ci.name AS ciName, ci.explanation, ci.annualFee, ci.overseasUse, ci.cardCompany, ci.fileLink, COALESCE(TO_NUMBER(lcb.content), 0) AS discountRate, t.category_name, t.total_price, t.total_count " +
	                "FROM (" +
	                "  SELECT cc.name AS category_name, COALESCE(SUM(ai.price), 0) AS total_price, COUNT(ai.seq) AS total_count " +
	                "  FROM tblMember m " +
	                "  LEFT JOIN tblAcc a ON a.idMember = m.id " +
	                "  LEFT JOIN tblAccinfo ai ON ai.seqAcc = a.seq " +
	                "  LEFT JOIN tblAccCategoryList acl ON acl.seqAccInfo = ai.seq " +
	                "  LEFT JOIN tblAccCategory ac ON ac.seq = acl.seqAccCategory " +
	                "  LEFT JOIN tblCardAndAcc caa ON caa.seqAccCategory = ac.seq " +
	                "  RIGHT JOIN tblCardCategory cc ON cc.seq = caa.seqCardCategory " +
	                "  WHERE m.id = ? " +
	                "  GROUP BY cc.name " +
	                ") t " +
	                "LEFT JOIN tblListCardBenefits lcb ON lcb.seqCardCategory = (SELECT seq FROM tblCardCategory WHERE name = t.category_name) " +
	                "LEFT JOIN tblCardInformation ci ON ci.seq = lcb.seqCardInformation " +
	                "ORDER BY t.total_price DESC, t.total_count DESC, COALESCE(TO_NUMBER(lcb.content), 0) DESC " +
	                "FETCH FIRST 5 ROWS ONLY";
	    	
	        System.out.println("SQL: " + sql);
	        System.out.println("Member ID: " + memberId);

	        pstat = conn.prepareStatement(sql);
	        pstat.setString(1, memberId);
	        rs = pstat.executeQuery();

	        while (rs.next()) {
	            CardDTO dto = new CardDTO();
	            dto.setSeqCardInformation(rs.getInt("seqCardInformation"));
	            dto.setCiName(rs.getString("ciName"));
	            dto.setExplanation(rs.getString("explanation"));
	            dto.setAnnualFee(rs.getInt("annualFee"));
	            dto.setOverseasUse(rs.getString("overseasUse"));
	            dto.setCardCompany(rs.getString("cardCompany"));
	            dto.setFileLink(rs.getString("fileLink"));
	            dto.setDiscountRate(rs.getInt("discountRate"));
	            dto.setCategory(rs.getString("category_name"));
	            recommendedCards.add(dto);
	            System.out.println("Recommended Card: " + dto.getCiName());
	        }

	        System.out.println("Recommended Cards Size: " + recommendedCards.size());
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return recommendedCards;
	}
	//카테고리 선택했을때 나올 카드
	public ArrayList<CardDTO> categoryCard(String category) {
	    try {
	        String sql = "SELECT ci.name, ci.cardcompany, ci.filelink " +
	                     "FROM tblcardinformation ci " +
	                     "INNER JOIN tblListCardBenefits lcb ON lcb.seqcardinformation = ci.seq " +
	                     "INNER JOIN tblCardCategory cc ON cc.seq = lcb.seqcardcategory " +
	                     "WHERE cc.name = ?";

	        pstat = conn.prepareStatement(sql);
	        pstat.setString(1, category);
	        rs = pstat.executeQuery();

	        ArrayList<CardDTO> list = new ArrayList<>();

	        while (rs.next()) {
	            CardDTO dto = new CardDTO();
	            dto.setCiName(rs.getString("name"));
	            dto.setCardCompany(rs.getString("cardcompany"));
	            dto.setFileLink(rs.getString("filelink"));
	            list.add(dto);
	        }

	        System.out.println("CardDAO - categoryCard");
	        System.out.println("Selected Category: " + category);
	        System.out.println("Number of Cards: " + list.size());

	        return list;
	    } catch (Exception e) {
	        System.out.println("CardDAO - categoryCard - Exception");
	        e.printStackTrace();
	    }
	    return null;
	}
}