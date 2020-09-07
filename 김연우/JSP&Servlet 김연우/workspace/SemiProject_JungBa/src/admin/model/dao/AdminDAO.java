package admin.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.PageInfo;
import member.model.vo.Member;

public class AdminDAO {

	public Member selectMember(Connection conn, String loginMemberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member member = null;

		String query = "SELECT * FROM MEMBER WHERE MEMBER_ID = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, loginMemberId);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				member = new Member(rset.getInt("MEMBER_NO"), rset.getString("MEMBER_ID"),
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

		return member;
	}

	public ArrayList<Board> selectRecentSupportList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
				
		String query = "SELECT * FROM SUPPORTLIST WHERE RNUM BETWEEN 1 AND 4 ORDER BY B_NO DESC";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board bo = new Board(rset.getInt("B_NO"),
									 rset.getString("B_TITLE"),
									 rset.getString("B_CONTENT"),
									 rset.getDate("B_DATE"),
									 rset.getDate("B_RDATE"),
									 rset.getInt("B_VIEW_COUNT"),
									 rset.getInt("B_RECOMMEND"),
									 rset.getInt("B_WRITER"),
									 rset.getString("MEMBER_NICKNAME"),
									 rset.getInt("B_REPLY_COUNT"),
									 rset.getString("AC_STATE"),
									 rset.getString("LC_NAME"),
									 rset.getString("ENROLL_STATE"),
									 rset.getString("TC_NAME"),
									 rset.getString("CG_NAME"),
									 rset.getDate("RECRUIT_STARTDATE"),
									 rset.getDate("RECRUIT_ENDDATE"),
									 rset.getDate("ACTIVITY_STARTDATE"),
									 rset.getDate("ACTIVITY_ENDDATE"));
				list.add(bo); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Board> selectRecentExternalList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
				
		String query = "SELECT * FROM EXTERNALLIST WHERE RNUM BETWEEN 1 AND 6 ORDER BY B_NO DESC";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board bo = new Board(rset.getInt("B_NO"),
									 rset.getString("B_TITLE"),
									 rset.getString("B_CONTENT"),
									 rset.getDate("B_DATE"),
									 rset.getDate("B_RDATE"),
									 rset.getInt("B_VIEW_COUNT"),
									 rset.getInt("B_RECOMMEND"),
									 rset.getInt("B_WRITER"),
									 rset.getString("MEMBER_NICKNAME"),
									 rset.getInt("B_REPLY_COUNT"),
									 rset.getString("AC_STATE"),
									 rset.getString("LC_NAME"),
									 rset.getString("ENROLL_STATE"),
									 rset.getString("TC_NAME"),
									 rset.getString("CG_NAME"),
									 rset.getDate("RECRUIT_STARTDATE"),
									 rset.getDate("RECRUIT_ENDDATE"),
									 rset.getDate("ACTIVITY_STARTDATE"),
									 rset.getDate("ACTIVITY_ENDDATE"));
				list.add(bo); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Board> selectRecentCommuList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
				
		String query = "SELECT * FROM COMMULIST WHERE RNUM BETWEEN 1 AND 6 ORDER BY B_NO DESC";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board bo = new Board(rset.getInt("B_NO"),
									 rset.getString("B_NAME"),
									 rset.getString("B_TITLE"),
									 rset.getString("B_CONTENT"),
									 rset.getDate("B_DATE"),
									 rset.getDate("B_RDATE"),
									 rset.getInt("B_VIEW_COUNT"),
									 rset.getInt("B_WRITER"),
									 rset.getString("MEMBER_NICKNAME"),
									 rset.getInt("B_REPLY_COUNT"));
									 list.add(bo); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Board> selectRecentQAList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
				
		String query = "SELECT * FROM QALIST WHERE RNUM BETWEEN 1 AND 6 ORDER BY B_NO DESC";
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board bo = new Board(rset.getInt("B_NO"),
						 rset.getString("B_TITLE"),
						 rset.getString("B_CONTENT"),
						 rset.getDate("B_DATE"),
						 rset.getDate("B_RDATE"),
						 rset.getInt("B_VIEW_COUNT"),
						 rset.getInt("B_WRITER"),
						 rset.getString("MEMBER_NICKNAME"),
						 rset.getInt("B_REPLY_COUNT"),
						 rset.getString("CG_NAME"));
				list.add(bo); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Board> selectAdminExternalList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		
		String query = "SELECT * FROM EXTERNALLIST WHERE RNUM BETWEEN ? AND ?  ORDER BY B_NO DESC";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board bo = new Board(rset.getInt("B_NO"),
									 rset.getString("B_TITLE"),
									 rset.getString("B_CONTENT"),
									 rset.getDate("B_DATE"),
									 rset.getDate("B_RDATE"),
									 rset.getInt("B_VIEW_COUNT"),
									 rset.getInt("B_RECOMMEND"),
									 rset.getInt("B_WRITER"),
									 rset.getString("MEMBER_NICKNAME"),
									 rset.getInt("B_REPLY_COUNT"),
									 rset.getString("AC_STATE"),
									 rset.getString("LC_NAME"),
									 rset.getString("ENROLL_STATE"),
									 rset.getString("TC_NAME"),
									 rset.getString("CG_NAME"),
									 rset.getDate("RECRUIT_STARTDATE"),
									 rset.getDate("RECRUIT_ENDDATE"),
									 rset.getDate("ACTIVITY_STARTDATE"),
									 rset.getDate("ACTIVITY_ENDDATE"));
				list.add(bo); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Board> selectAdminSupportList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		
		String query = "SELECT * FROM SUPPORTLIST WHERE RNUM BETWEEN ? AND ? ORDER BY B_NO DESC";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board bo = new Board(rset.getInt("B_NO"),
									 rset.getString("B_TITLE"),
									 rset.getString("B_CONTENT"),
									 rset.getDate("B_DATE"),
									 rset.getDate("B_RDATE"),
									 rset.getInt("B_VIEW_COUNT"),
									 rset.getInt("B_RECOMMEND"),
									 rset.getInt("B_WRITER"),
									 rset.getString("MEMBER_NICKNAME"),
									 rset.getInt("B_REPLY_COUNT"),
									 rset.getString("AC_STATE"),
									 rset.getString("LC_NAME"),
									 rset.getString("ENROLL_STATE"),
									 rset.getString("EM_STATE"),
									 rset.getString("TC_NAME"),
									 rset.getString("CG_NAME"),
									 rset.getDate("RECRUIT_STARTDATE"),
									 rset.getDate("RECRUIT_ENDDATE"));
				list.add(bo); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int getMemberListCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM MEMBER WHERE MEMBER_ENABLE = 'Y' AND MEMBER_GRADE='user'";
		
		try {
			pstmt= conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Member> selectMemberList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Member> list = null;
		
		String query = "SELECT * FROM MEMBERLIST WHERE RNUM BETWEEN ? AND ?";
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Member>();
			while(rset.next()) {
				Member m = new Member(rset.getInt("member_no"),
									rset.getString("member_id"),
									rset.getString("member_name"),
									rset.getString("member_nickname"),
									rset.getString("member_gender"),
									rset.getDate("member_birthday"),
									rset.getString("member_phone"),
									rset.getString("member_email"),
									rset.getString("member_address"),
									rset.getDate("member_regdate"),
									rset.getInt("member_board"));
				list.add(m);
						
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

}
