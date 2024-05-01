package com.project.accountbook.account.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.project.accountbook.account.model.AccountInfoDTO;
import com.project.accountbook.user.member.model.MemberInfoDTO;
import com.project.accountbook.user.model.UserDTO;
import com.project.accountbook.util.DBUtil;

public class AccountDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public AccountDAO() {
		this.conn = DBUtil.open();
	}
	
	//가계부 작성(테이블 많이 필요해서 view 사용해야할 듯)
	public int add(AccountInfoDTO dto) {
		
		try {
			
			String sql = "insert into vwAcc";

			pstat = conn.prepareStatement(sql);
//			pstat.setString(1, dto.get);


			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("AccountDAO.add");
			e.printStackTrace();
		}
		
		return 0;
	}
	
	//가계부 읽기
	//map으로 상황에 따라 선택 상황 찾고 그 경우에 따라 출력하는 식으로 구현?
	public int get(AccountInfoDTO dto) {
		
		return 0;
	}
		
	//가계부 페이지 > 이번달 지출, 수입 계산
	public int getExpenditureIncome(AccountInfoDTO dto) {
		
		return 0;
	}
	 
	
	//가계부 목록 읽기
	//map으로 상황에 따라 선택 상황 찾고 그 경우에 따라 출력하는 식으로 구현?
	public int list(AccountInfoDTO dto) {
		
		return 0;
	}
	
	//가계부 수정
	public int update(AccountInfoDTO dto) {
		
		return 0;
	}
	
	//가계부 삭제
	public int del(AccountInfoDTO dto) {
		
		return 0;
	}
	
	
	//구매 위시 목록 작성
	public int addProduct(AccountInfoDTO dto) {
		
		return 0;
	}
	
	//구매 위시 목록 수정
	public int updateProduct(AccountInfoDTO dto) {
		
		return 0;
	}
	
	//구매 위시 목록 삭제
	public int delProduct(AccountInfoDTO dto) {
		
		return 0;
	}
	
	
	//가계부 분석 읽기(기간에 매개 변수로 받아야할 듯)
	public int analysis(AccountInfoDTO dto) {
		
		return 0;
	}
	
	//가계부 분석 > 챌린지에 대한 정보 읽기(이번달 목표치, 현상황)
	public int getChallenge(UserDTO dto) {
		
		return 0;
	}
	
	//가계부 분석 > 뉴스 불러오기(뉴스 테이블 정보 dto에 추가해야할 듯>추가 완료)
	public int getNews(AccountInfoDTO dto) {
		
		return 0;
	}
	
	
	//비용 수익 읽기(카테고리, 그래프 모양, 기간을 map으로 받아서 사용?)
	public int costRevenue(AccountInfoDTO dto) {
		
		return 0;
	}
	
	
	//tblMemberFinance이 멤버의 개인정보라고 생각해서 MemberInfoDTO에 작성했는데 자산, 부채를 추가하는 것도 UserDAO에서 할 건지? 해당 DTO에 tblDebt, tblProperty 추가도 필요해 보임
	// 자산 작성
	public int editProperty(MemberInfoDTO dto) {

		return 0;
	}

	// 부채 작성
	public int editLiabilities(MemberInfoDTO dto) {

		return 0;
	}
	
	// 자산/부채 읽기(자산 변동에서 시작일, 종료일할 거면 그것도 매개 변수로 받아서 사용할지?)
	public int getPropertyLiabilities(MemberInfoDTO dto) {
		
		return 0;
	}
	
	
	//기존에 DAO에 tblReasonChangeCategory 없었는데 추가해야할 듯(추가 완료)
	//카드 사용 읽기(기간을 매개 변수로 받아야할 듯)
	public int getCardUsage(AccountInfoDTO dto) {
		
		return 0;
	}
	
	//특정 카드 사용 읽기
	public int getCardUsageDetails(AccountInfoDTO dto) {
		
		return 0;
	}
		
	  
}
