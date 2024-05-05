package com.project.accountbook.user.member.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.project.accountbook.account.model.AccountInfoDTO;
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

	public UserDTO getPw(UserDTO dto) {

		try {

			String sql = "select pw from tblMember where id = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());

			rs = pstat.executeQuery();

			if (rs.next()) {

				UserDTO result = new UserDTO();

				result.setPw(rs.getString("pw"));

				return result;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	public void editPw(String editPw, UserDTO dto) {
		try {

			String sql = "update tblMember set pw = ? where id = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, editPw);
			pstat.setString(2, dto.getId());

			pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

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

	//카카오 key 값 불러오기
	public String getKakaoKey() {

		try {

			String sql = "select\r\n"
					+ "key\r\n"
					+ "from tblAPI\r\n"
					+ "where name = '카카오'";

			stat =  conn.createStatement();
			rs = stat.executeQuery(sql);

			if (rs.next()) {

				return rs.getString("key");

			}

		} catch (Exception e) {
			System.out.println("MemberInfoDAO.getKakaoKey");
			e.printStackTrace();
		}
		return null;
	}

}
