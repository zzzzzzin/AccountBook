package com.project.accountbook.account.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.project.accountbook.account.model.AccountInfoDTO;
import com.project.accountbook.user.model.UserDTO;
import com.project.accountbook.util.DBUtil;

public class AccountDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public AccountDAO() {
		this.conn = DBUtil.open("125.241.245.222", "webproject", "java1234");
	}
	
	//가계부 작성 > 프론트에서 카드 선택해서 작성하는 거면 카드 seq넘겨 받아서 `tblReasonChangeCategory`에서 seq 찾아야할 듯(map?)
	public int add(AccountInfoDTO dto) {
		
		try {
			
			String sql = "insert into ";

			pstat = conn.prepareStatement(sql);
//			pstat.setString(1, dto.get);


			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("AccountDAO.add");
			e.printStackTrace();
		}
		
		return 0;
	}
	
	//가계부 작성할 때 카테고리 자동 매칭(AccountInfoDTO에 키워드랑 카테고리 테이블에 대한 대용 추가할지? 따로 뺄지)
	public int addCategory(AccountInfoDTO dto) {
		
		return 0;
	}
	
	
	//가계부 읽기(map으로 상황 선택해야할 듯)
	public int get(AccountInfoDTO dto) {
		
		return 0;
	}
		
	//가계부 페이지 > 이번달 지출, 수입 계산
	public int getExpenditureIncome(AccountInfoDTO dto) {
		
		return 0;
	}
	 
	
	//가계부 목록 읽기
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
	
	
	
	
	//가계부 분석 읽기
	public ArrayList<AccountInfoDTO> nowAnalysis(String id, HashMap<String, String> map) {
		
		try {
			
			String period = map.get("period");
			
			String sql = "select\r\n"
					+ "sum(ai.price) totalPrice,\r\n"
					+ "ac.name acName, --카테고리\r\n"
					+ "mc.idMember idMember\r\n"
					+ "from tblAccInfo ai\r\n"
					+ "    inner join tblAccCategoryList acl\r\n"
					+ "        on acl.seqAccInfo = ai.seq\r\n"
					+ "            inner join tblAccCategory ac\r\n"
					+ "                on ac.seq = acl.seqAccCategory\r\n"
					+ "                    inner join tblReasonChangeCategory rcc \r\n"
					+ "                        on rcc.seq = ai.seqReasonChangeCategory\r\n"
					+ "                            inner join tblMyCard mc\r\n"
					+ "                                on mc.seq = rcc.seqMyCard\r\n"
					+ "                                    where mc.idMember = ?\r\n";
			
			
			if (period.equals("day")) {
				sql +=    "and trunc(ai.accInfoDate) = trunc(sysdate) -- 오늘 날짜\r\n";
				
			} else if (period.equals("week")) {
				sql +=  "and ai.accInfoDate >= trunc(sysdate, 'IW') -- 이번주 시작 날짜\r\n"
						+ "    and ai.accInfoDate < trunc(sysdate) + 1 -- 이번주 종료 날짜\r\n";

			} else if (period.equals("month")) {
				sql +=    "                                        and ai.accInfoDate \r\n"
						+ "                                            between to_date(sysdate, 'YY/MM/DD') \r\n"
						+ "                                                - interval '1' month and to_date(sysdate, 'YY/MM/DD')\r\n";

			}
			
			 sql += "and ai.seqDepositWithdrawalStatus = 2 group by ac.name, mc.idMember";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<AccountInfoDTO> list = new ArrayList<AccountInfoDTO>();
			
			while (rs.next()) {
				
				AccountInfoDTO dto = new AccountInfoDTO();
				
				dto.setTotalPrice(rs.getInt("totalPrice"));
				dto.setAcName(rs.getString("acName"));
				
				list.add(dto);				
			}	
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public ArrayList<AccountInfoDTO> beforeAnalysis(String id, HashMap<String, String> map) {
		
		try {
			
			String period = map.get("period");
			
			String sql = "select\r\n"
					+ "sum(ai.price) totalPrice,\r\n"
					+ "ac.name acName, --카테고리\r\n"
					+ "mc.idMember idMember\r\n"
					+ "from tblAccInfo ai\r\n"
					+ "    inner join tblAccCategoryList acl\r\n"
					+ "        on acl.seqAccInfo = ai.seq\r\n"
					+ "            inner join tblAccCategory ac\r\n"
					+ "                on ac.seq = acl.seqAccCategory\r\n"
					+ "                    inner join tblReasonChangeCategory rcc \r\n"
					+ "                        on rcc.seq = ai.seqReasonChangeCategory\r\n"
					+ "                            inner join tblMyCard mc\r\n"
					+ "                                on mc.seq = rcc.seqMyCard\r\n"
					+ "                                    where mc.idMember = ?\r\n";
			
			
			if (period.equals("day")) {
				sql +=    "and trunc(ai.accInfoDate) = trunc(sysdate) - 1 -- 어제 날짜\r\n";
				
			} else if (period.equals("week")) {
				sql +=  " and ai.accInfoDate >= trunc(sysdate, 'IW') - 7 -- 저번주 시작 날짜\r\n"
				   + "    and ai.accInfoDate < trunc(sysdate, 'IW') -- 저번주 종료 날짜\r\n";

			} else if (period.equals("month")) {
				sql +=    "and ai.accInfoDate \r\n"
						+ "                                            between to_date(sysdate, 'YY/MM/DD') \r\n"
						+ "                                                - interval '2' month and to_date(sysdate, 'YY/MM/DD')\r\n"
						+ "                                                    - interval '1' month\r\n";

			}
			
			 sql += "and ai.seqDepositWithdrawalStatus = 2 --입출금 상태\r\n"
			 		+ "                                                            group by ac.name, mc.idMember";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<AccountInfoDTO> list = new ArrayList<AccountInfoDTO>();
			
			while (rs.next()) {
				
				AccountInfoDTO dto = new AccountInfoDTO();
				
				dto.setTotalPrice(rs.getInt("totalPrice"));
				dto.setAcName(rs.getString("acName"));
				
				list.add(dto);				
			}	
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
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
	
	

	//카드 사용 읽기
	public ArrayList<AccountInfoDTO> list(String id, HashMap<String, String> map) {
		
		try {
			
			String startDate = map.get("startDate");
		    String endDate = map.get("endDate");
			
			String sql = "select \r\n"
	                + "sum(ai.price) totalPrice,\r\n"
	                + "mc.alias alias, --카드 별칭\r\n"
	                + "cf.name cfName, -- 카드명\r\n"
	                + "cf.fileLink fileLink, --카드 이미지\r\n"
	                + "mc.seq seqMyCard, --카드 번호\r\n"
	                + "mc.idMember idMember\r\n"
	                + "from tblAccInfo ai\r\n"
	                + "    inner join tblReasonChangeCategory rcc \r\n"
	                + "        on rcc.seq = ai.seqReasonChangeCategory\r\n"
	                + "            inner join tblMyCard mc \r\n"
	                + "                on mc.seq = rcc.seqMyCard\r\n"
	                + "                    inner join tblCardInformation cf \r\n"
	                + "                        on cf.seq = mc.seqCardInformation\r\n"
	                + "                            where mc.idMember = ?\r\n";

			// 시작일과 종료일이 둘 다 비어 있지 않은 경우에만 조건을 추가
	        if (startDate != null && !startDate.isEmpty() && endDate != null && !endDate.isEmpty()) {
	            sql += "and ai.accInfoDate between to_date(?, 'YYYY-MM-DD') and to_date(?, 'YYYY-MM-DD')\r\n";
	        }

	        sql += "group by mc.alias, cf.name, cf.fileLink, mc.seq, mc.idMember";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			 // 시작일과 종료일이 둘 다 비어 있지 않은 경우에만 파라미터로 설정
	        if (startDate != null && !startDate.isEmpty() && endDate != null && !endDate.isEmpty()) {
	            pstat.setString(2, startDate);
	            pstat.setString(3, endDate);
	        }
			
			rs = pstat.executeQuery();
			
			ArrayList<AccountInfoDTO> list = new ArrayList<AccountInfoDTO>();
			
			while (rs.next()) {
				
				AccountInfoDTO dto = new AccountInfoDTO();
				
				dto.setTotalPrice(rs.getInt("totalPrice"));
				dto.setAlias(rs.getString("alias"));
				dto.setCfName(rs.getString("cfName"));
				dto.setFileLink(rs.getString("fileLink"));
				dto.setSeqMyCard(rs.getString("seqMyCard"));
				
				list.add(dto);

			}	
				
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	//특정 카드 사용 읽기
	public ArrayList<AccountInfoDTO> getCardUsageDetails(String id, HashMap<String, String> map) {

		try {
			
			String seqMyCard = map.get("seqMyCard");
			String startDate = map.get("startDate");
		    String endDate = map.get("endDate");
		    
			
			String sql = "select \r\n"
					+ "ai.accInfoDate accInfoDate, --날짜\r\n"
					+ "ai.price price, --금액\r\n"
					+ "ac.name acName, --카테고리\r\n"
					+ "ai.location location, --사용처\r\n"
					+ "ai.seqDepositWithdrawalStatus seqDepositWithdrawalStatus, --입출금 상태\r\n"
					+ "mc.alias alias, --카드 별칭\r\n"
					+ "cf.name cfName, -- 카드명\r\n"
					+ "cf.fileLink fileLink, --카드 이미지\r\n"
					+ "mc.seq seqMyCard, --카드 번호\r\n"
					+ "mc.idMember idMember\r\n"
					+ "from tblAccInfo ai\r\n"
					+ "    inner join tblAccCategoryList acl\r\n"
					+ "        on acl.seqAccInfo = ai.seq\r\n"
					+ "            inner join tblAccCategory ac\r\n"
					+ "                on ac.seq = acl.seqAccCategory\r\n"
					+ "                    inner join tblReasonChangeCategory rcc \r\n"
					+ "                        on rcc.seq = ai.seqReasonChangeCategory\r\n"
					+ "                            inner join tblMyCard mc \r\n"
					+ "                                on mc.seq = rcc.seqMyCard\r\n"
					+ "                                    inner join tblCardInformation cf \r\n"
					+ "                                        on cf.seq = mc.seqCardInformation\r\n"
					+ "                                            where mc.idMember = ?\r\n";

			
			
			// 시작일과 종료일이 둘 다 비어 있지 않은 경우에만 조건을 추가
	        if (startDate != null && !startDate.isEmpty() && endDate != null && !endDate.isEmpty()) {
	            sql += "and ai.accInfoDate between to_date(?, 'YYYY-MM-DD') and to_date(?, 'YYYY-MM-DD')\r\n";
	        }

	        sql += "and mc.seq = ?"
	        	+ "order by ai.accInfoDate desc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			 // 시작일과 종료일이 둘 다 비어 있지 않은 경우에만 파라미터로 설정
	        if (startDate != null && !startDate.isEmpty() && endDate != null && !endDate.isEmpty()) {
	            pstat.setString(2, startDate);
	            pstat.setString(3, endDate);
	            pstat.setString(4, seqMyCard);
	        } else {
	        	pstat.setString(2, seqMyCard);
	        }
	        
			
			rs = pstat.executeQuery();
			
			ArrayList<AccountInfoDTO> list = new ArrayList<AccountInfoDTO>();
			
			while (rs.next()) {
				
				AccountInfoDTO dto = new AccountInfoDTO();
				
				dto.setAccInfoDate(rs.getString("accInfoDate"));
				dto.setPrice(rs.getInt("price"));
				dto.setAcName(rs.getString("acName"));
				dto.setLocation(rs.getString("location"));
				dto.setSeqDepositWithdrawalStatus(rs.getString("seqDepositWithdrawalStatus"));
				dto.setAlias(rs.getString("alias"));
				dto.setCfName(rs.getString("cfName"));
				dto.setFileLink(rs.getString("fileLink"));
				dto.setSeqMyCard(rs.getString("seqMyCard"));

				list.add(dto);				
			}	
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public ArrayList<AccountInfoDTO> getCategory() {
		
		try {
			
			String sql = "select * from tblAccCategory";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<AccountInfoDTO> list = new ArrayList<AccountInfoDTO>();
			
			while (rs.next()) {
				
				AccountInfoDTO dto = new AccountInfoDTO();
				
				dto.setSeqAccCategory(rs.getString("seq"));
				dto.setAcName(rs.getString("name"));
				
				list.add(dto);				
			}	
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public ArrayList<AccountInfoDTO> accEventContent(String id) {
		ArrayList<AccountInfoDTO> list = new ArrayList<AccountInfoDTO>();
		try {
			
			String sql = "select\r\n"
					+ "    ai.seq as accinfonum,\r\n"
					+ "    ai.content as aicontent,\r\n"
					+ "    accinfodate,\r\n"
					+ "    price,\r\n"
					+ "    location,\r\n"
					+ "    me.ID as memberID,\r\n"
					+ "    acate.NAME as categoryName,\r\n"
					+ "    seqfixedfluctuationcheck,\r\n"
					+ "    dws.STATUS as spendstatus\r\n"
					+ "from TBLACCINFO ai\r\n"
					+ "    inner join TBLACC ac on ai.SEQACC = ac.SEQ\r\n"
					+ "    inner join TBLMEMBER me on ac.IDMEMBER = me.ID\r\n"
					+ "    inner join TBLACCCATEGORYLIST acl on ai.SEQ = acl.SEQACCINFO\r\n"
					+ "    inner join TBLACCCATEGORY acate on acl.SEQACCCATEGORY = acate.SEQ\r\n"
					+ "    inner join TBLDEPOSITWITHDRAWALSTATUS dws on ai.SEQDEPOSITWITHDRAWALSTATUS = dws.SEQ\r\n"
					+ "    inner join TBLREASONCHANGECATEGORY rc on ai.SEQREASONCHANGECATEGORY = rc.SEQ\r\n"
					+ "    inner join TBLREASONSCHANGELIST rcl on rc.SEQREASONSCHANGELIST = rcl.SEQ\r\n"
					+ "    where me.ID = ?";
			
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			
			
			
			while(rs.next()) {
				AccountInfoDTO dto = new AccountInfoDTO();
				dto.setContent(rs.getString("aicontent"));
				dto.setAccInfoDate(rs.getString("accinfodate"));
				dto.setPrice(rs.getInt("price"));
				dto.setLocation(rs.getString("location"));
				dto.setIdMember(rs.getString("memberID"));
				dto.setAcName(rs.getString("categoryName"));
				dto.setSeqFixedFluctuationCheck(rs.getString("seqfixedfluctuationcheck"));
				dto.setSeqDepositWithdrawalStatus(rs.getString("spendstatus"));
				list.add(dto);
			}
			System.out.println("run");
			
			return list;
		} catch (Exception e) {
			System.out.println("AccountDAO.accEventContent");
			e.printStackTrace();
		}
		return list;
	}


	
	  
}


	
	  

