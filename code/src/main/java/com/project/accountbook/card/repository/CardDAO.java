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
		this.conn = DBUtil.open();
	}
	
	//카드 추가
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
	
	//카테고리별 카드 리스트
	public ArrayList<CardDTO> categoryCard(String name){
		//String sql = "SELECT name as ciname, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType FROM tblCardInformation WHERE seq IN (SELECT seqCardInformation FROM tblListCardBenefits WHERE seqCardCategory = (SELECT seq FROM tblCardCategory WHERE name LIKE ?))";
		try {
			String sql = "SELECT name as ciname, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType " +
	                 "FROM tblCardInformation " +
	                 "WHERE seq IN (SELECT seqCardInformation " +
	                               "FROM tblListCardBenefits " +
	                               "WHERE seqCardCategory = (SELECT seq FROM tblCardCategory WHERE name LIKE ?))";

	    pstat = conn.prepareStatement(sql);
	    pstat.setString(1, "%" + name + "%");

	    rs = pstat.executeQuery();

	    ArrayList<CardDTO> list = new ArrayList<>();

	    while (rs.next()) {
	        CardDTO dto = new CardDTO();
	        
	        dto.setCiName(rs.getString("ciname"));
	        dto.setExplanation(rs.getString("explanation"));
	        dto.setAnnualFee(rs.getInt("annualFee"));
	        dto.setOverseasUse(rs.getString("overseasUse"));
	        dto.setCardCompany(rs.getString("cardCompany"));
	        dto.setFileLink(rs.getString("fileLink"));
	        dto.setSeqCardType(rs.getInt("seqCardType"));
	        
	        list.add(dto);			
			}	
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	//카드 랜덤 추천
	public ArrayList<CardDTO> randomCard(){
		
		try {
			
			int count=0; //모든 카드의 갯수
			ArrayList<CardDTO> list = new ArrayList<CardDTO>();
			
			String sql = "select count(*) from tblCardInformation";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			
			if (rs.next()) {
			    count = rs.getInt(1);
			    //System.out.println("Count: " + count);
			}
			
			sql = "select name as ciname, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType from tblCardInformation where seq in (?,?,?,?,?)";
			
			pstat = conn.prepareStatement(sql);
			
			int a[] = new int[5];
	        Random r = new Random();

	        for(int i=0;i<5;i++)
	        {
	            a[i] = r.nextInt(10)+1; 
	            for(int j=0;j<i;j++) 
	            {
	                if(a[i]==a[j])
	                {
	                    i--;
	                    break;
	                }
	            }

			    pstat.setInt(i+1, a[i]);
			}
		    

		    rs = pstat.executeQuery();
		
			while (rs.next()) {
				
				CardDTO dto = new CardDTO();
				
				dto.setCiName(rs.getString("ciname"));
		        dto.setExplanation(rs.getString("explanation"));
		        dto.setAnnualFee(rs.getInt("annualFee"));
		        dto.setOverseasUse(rs.getString("overseasUse"));
		        dto.setCardCompany(rs.getString("cardCompany"));
		        dto.setFileLink(rs.getString("fileLink"));
		        dto.setSeqCardType(rs.getInt("seqCardType"));
				
				list.add(dto);				
			}	
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
}















