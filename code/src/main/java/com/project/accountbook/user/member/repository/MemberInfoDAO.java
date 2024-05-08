package com.project.accountbook.user.member.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.project.accountbook.user.member.model.MemberInfoDTO;
import com.project.accountbook.user.model.UserDTO;
import com.project.accountbook.util.DBUtil;

public class MemberInfoDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public MemberInfoDAO() {
		this.conn = DBUtil.open("125.241.245.222", "webproject", "java1234");
	}

	//나의 카드 추가
	public int addMycard(MemberInfoDTO dto) {

		try {

			String sql = "insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) values (seqMyCard.nextVal, ?, ?, ?, ?)";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getCardNumber());
			pstat.setString(2, dto.getAlias());
			pstat.setString(3, dto.getValidity());
			pstat.setString(4, dto.getMcIdMember());
			pstat.setString(5, dto.getSeqCardInformation());

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CardDAO.addMyCard");
			e.printStackTrace();
		}

		return 0;
	}

	// 나의 카드 삭제
	public int delMyCard(MemberInfoDTO dto) {

		try {

			String sql = "update tblMyCard set cardNumber = 'xxxxxxxxxxxxxxxx' where cardnumber = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getCardNumber());

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CardDAO.delMyCard");
			e.printStackTrace();
		}
		return 0;
	}

	// 나의카드 수정
	public int updateMyCard(MemberInfoDTO dto) {

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

	// 나의 카드 정보 가져오기
	public MemberInfoDTO getMyCard(String cardNumber) {

		try {

			String sql = "select * from tblMyCard where cardnumber = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, cardNumber);

			rs = pstat.executeQuery(sql);

			if (rs.next()) {

				MemberInfoDTO dto = new MemberInfoDTO();

				dto.setAlias(rs.getString("alias"));
				dto.setValidity(rs.getString("validity"));
				dto.setMcIdMember(rs.getString("McIdMember"));
				dto.setSeqCardInformation(rs.getString("seqCardInformation"));

				return dto;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	// 나의 카드 리스트
	public ArrayList<MemberInfoDTO> listMyCard(String McIdMember) {

		try {

			String sql = "select * from tblmycard where idMember = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, McIdMember);

			rs = pstat.executeQuery();

			ArrayList<MemberInfoDTO> list = new ArrayList<MemberInfoDTO>();

			while (rs.next()) {

				MemberInfoDTO dto = new MemberInfoDTO();

				dto.setCardNumber(rs.getString("cardNumber"));
				dto.setAlias(rs.getString("alias"));
				dto.setValidity(rs.getString("validity"));
				dto.setMcIdMember(rs.getString("mcIdMember"));
				dto.setExplanation(rs.getString("seqCardInformation"));

				list.add(dto);
			}
			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	public UserDTO getMemberInfo(String id) {

		try {

			String sql = "select * from tblMember where id = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);

			rs = pstat.executeQuery();

			if (rs.next()) {

				UserDTO dto = new UserDTO();

				// 이름, 닉네임, 성별, 전화번호, 주민등록번호
				dto.setName(rs.getString("name"));
				dto.setNickname(rs.getString("nickname"));
				dto.setGender(rs.getString("gender"));
				dto.setPhoneNumber(rs.getString("phoneNumber"));
				dto.setSsn(rs.getString("SSN"));

				return dto;

			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return null;
	}
	
	public void resetPw(String id, String pw) {
		try {

			String sql = "update tblMember set pw = ? where id = ?";
			
			System.out.println(id);
			System.out.println(pw);

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, pw);
			pstat.setString(2, id);

			pstat.executeUpdate();
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public String getPw(String id) {
		
		try {
			
			String sql = "select pw from tblMember where id =?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			pstat.executeUpdate();
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
	            return rs.getString("pw");
	        }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public void editPw(String id, String pw) {
		
		try {
			
			String sql = "update tblMember set pw = ? where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, pw);
			pstat.setString(2, id);

			pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public String getPhoneNumber(String id) {

		try {
			
			String sql = "select phonenumber from tblMember where id = ?";
			
			pstat = conn.prepareStatement(sql);
	        pstat.setString(1, id);
	        
	        rs = pstat.executeQuery();
	        
	        if (rs.next()) {
	        	return rs.getString("phonenumber");
	        }
			
		} catch (Exception e) {
			System.out.println("MemberInfoDAO.getPhoneNumber");
			e.printStackTrace();
		} finally {
	        try {
	            if (rs != null) {
	                rs.close();
	            }
	            if (pstat != null) {
	                pstat.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
		
		return null;
	}
	

	public void updateUserInfo(String id, HashMap<String, String> map) {

		try {
			
			String sql = "update tblMember set name = ?, nickname = ?, phonenumber = ?, ssn = ? where id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, map.get("name"));
			pstat.setString(2, map.get("nickname"));
			pstat.setString(3, map.get("phonenumber"));
			pstat.setString(4, map.get("ssn"));
			pstat.setString(5, id);
			
			pstat.executeUpdate();
			
			System.out.println("update");
			
		} catch (Exception e) {
			System.out.println("MemberInfoDAO.updateUserInfo");
			e.printStackTrace();
		}
	}
	
	
	

	public UserDTO getChallenge(String id) {

		try {
			
			String sql = "select s.monthlyPaycheck, s.savingsGoals, sp.period\r\n"
					+ "from tblMember m\r\n"
					+ "    inner join tblSurvey s\r\n"
					+ "        on m.seqSurvey = s.seq\r\n"
					+ "            inner join tblSavingsPeriod sp\r\n"
					+ "                on sp.seq = s.seqSavingsPeriod\r\n"
					+ "                    where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);

			pstat.executeUpdate();

			if (rs.next()) {

				UserDTO dto = new UserDTO();

				dto.setMonthlyPaycheck(rs.getInt("monthlyPaycheck"));
				dto.setSavingsGoals(rs.getInt("savingsGoals"));
				dto.setSpPeriod(rs.getInt("period"));

				return dto;

			}
			
		} catch (Exception e) {
			System.out.println("MemberInfoDAO.getChallenge");
			e.printStackTrace();
		}
		
		return null;
	}


	public String getSeqSurvey(String id) {

		try {
			
			String sql = "select seqSurvey from tblMember where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			pstat.executeUpdate();
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
	            return rs.getString("seqSurvey");
	        }
			
		} catch (Exception e) {
			System.out.println("MemberInfoDAO.getSeqSurvey");
			e.printStackTrace();
		}
		
		return null;
	}

	public String getSeqSavingPeriod(String seqSurvey) {

		try {
			
			String sql = "select seqSavingsPeriod from tblSurvey where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seqSurvey);
			pstat.executeUpdate();
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
	            return rs.getString("seqSavingsPeriod");
	        }
			
		} catch (Exception e) {
			System.out.println("MemberInfoDAO.getSeqSurvey");
			e.printStackTrace();
		}
		return null;
	}

	public void editChallenge(String seqSurvey, String seqSavingsPeriod, String sallary, String goal, String period) {

		try {
			
			String sql = "update tblSurvey set monthlyPaycheck = ?, savingsGoals = ? where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, sallary);
			pstat.setString(2, goal);
			pstat.setString(3, seqSurvey);
			pstat.executeUpdate();
			
			sql = "update tblSavingsPeriod set period = ? where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, period);
			pstat.setString(2, seqSavingsPeriod);
			pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberInfoDAO.editChallenge");
			e.printStackTrace();
		}
		
	}

	public boolean isPhoneNumberUnique(String phoneNumber, String id) {
		try {
	        String sql = "SELECT COUNT(*) AS count FROM tblMember WHERE phonenumber = ? AND id != ?";
	        
	        pstat = conn.prepareStatement(sql);
	        pstat.setString(1, phoneNumber);
	        pstat.setString(2, id);
	        rs = pstat.executeQuery();
	        
	        if (rs.next()) {
	            int count = rs.getInt("count");
	            return count == 0;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    // 오류가 발생하거나 결과가 없는 경우에는 일단 중복이 아니라고 간주
		System.out.println("번호 중복값 존재");
	    return true;
	}

	


	

	

	

}
