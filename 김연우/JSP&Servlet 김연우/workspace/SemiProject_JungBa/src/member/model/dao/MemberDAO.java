package member.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import member.model.vo.Member;

public class MemberDAO {

	public MemberDAO() {}

	public Member loginMember(Connection conn, Member member) {
		// loginMember = SELECT * FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PW = ?
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member loginUser = null;

		String query = "SELECT * FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PW = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			rset = pstmt.executeQuery();

			if (rset.next()) {
				loginUser = new Member(rset.getInt("MEMBER_NO"), rset.getString("MEMBER_ID"),
						rset.getString("MEMBER_PW"), rset.getString("MEMBER_NAME"), rset.getString("MEMBER_NICKNAME"),
						rset.getString("MEMBER_GENDER"), rset.getDate("MEMBER_BIRTHDAY"), rset.getString("MEMBER_PHONE"),
						rset.getString("MEMBER_EMAIL"),rset.getString("MEMBER_ADDRESS"),rset.getDate("MEMBER_REGDATE"), 
						rset.getString("MEMBER_ENABLE"), rset.getString("MEMBER_GRADE"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return loginUser;
	}

	public int insertMember(Connection conn, Member member) {
		// insertMember = INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE, DEFAULT, DEFAULT)
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE, DEFAULT, DEFAULT)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMemberNickName());
			pstmt.setString(5, member.getMemberGender());
			pstmt.setDate(6, (Date) member.getMemberBirthDay());
			pstmt.setString(7, member.getMemberPhone());
			pstmt.setString(8, member.getMemberEmail());			
			pstmt.setString(9, member.getMemberAddress());					
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
		
	}
/*
	public int checkId(Connection conn, String userId) {
		// idCheck = SELECT COUNT(*) FROM MEMBER WHERE USER_ID = ?
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = prop.getProperty("idCheck");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return result;
	}

	public Member selectMember(Connection conn, String loginUserId) {
		// selectMember = SELECT * FROM MEMBER WHERE USER_ID = ? AND USER_PWD = ?
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member member = null;

		String query = prop.getProperty("selectMember");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, loginUserId);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				member = new Member(rset.getString("USER_ID"), rset.getString("USER_PWD"),
						rset.getString("USER_NAME"), rset.getString("NICKNAME"), rset.getString("PHONE"),
						rset.getString("EMAIL"), rset.getString("ADDRESS"), rset.getString("INTEREST"),
						rset.getDate("ENROLL_DATE"), rset.getDate("MODIFY_DATE"), rset.getString("STATUS"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return member;
	}
	
	public int updateMember(Connection conn, Member member) {
		// updateMember = UPDATE MEMBER SET USER_NAME=?, NICKNAME=?, PHONE=?, EMAIL=?, ADDRESS=?, INTEREST=?, MODIFY_DATE=SYSDATE WHERE USER_ID=?
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserName());
			pstmt.setString(2, member.getNickName());
			pstmt.setString(3, member.getPhone());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, member.getInterest());
			pstmt.setString(7, member.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}
	
	public int nickCheck(Connection conn, String userNick) {
		// nickCheck = SELECT COUNT(*) FROM MEMBER WHERE NICKNAME = ?
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = prop.getProperty("nickCheck");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNick);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
*/
	
}