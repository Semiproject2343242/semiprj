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
	
}