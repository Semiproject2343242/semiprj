package member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.rollback;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.FileVO;
import board.model.vo.PageInfo;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {

	public Member loginMember(Member member) {

		Connection conn = getConnection();

		Member loginUser = new MemberDAO().loginMember(conn, member);
		close(conn);

		return loginUser;
	}

	public int insertMember(Member member) {

		Connection conn = getConnection();

		int result = new MemberDAO().insertMember(conn, member);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);

		return result;
		
	}

	public Member selectMember(String loginMemberId) {
		
		Connection conn = getConnection();
		
		Member member = new MemberDAO().selectMember(conn, loginMemberId);
				
		close(conn);

		return member;
		
	}

	public ArrayList<Board> selectMyCommuFreeList(int loginMemberNo, PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new MemberDAO().selectMyCommuFreeList(conn, loginMemberNo, pi);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Board> selectMyQAList(int loginMemberNo, PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new MemberDAO().selectMyQAList(conn, loginMemberNo, pi);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Board> selectMySupportList(int loginMemberNo, PageInfo pi) {
	
		Connection conn = getConnection();
		
		ArrayList<Board> list = new MemberDAO().selectMySupportList(conn, loginMemberNo, pi);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Board> selectMyExternalList(int loginMemberNo, PageInfo pi) {

		Connection conn = getConnection();
		
		ArrayList<Board> list = new MemberDAO().selectMyExternalList(conn, loginMemberNo, pi);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Board> selectMyRecentSupportList(int loginMemberNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new MemberDAO().selectMyRecentSupportList(conn, loginMemberNo);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Board> selectMyRecentExternalList(int loginMemberNo) {

		Connection conn = getConnection();
		
		ArrayList<Board> list = new MemberDAO().selectMyRecentExternalList(conn, loginMemberNo);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Board> selectMyRecentCommuFreeList(int loginMemberNo) {

		Connection conn = getConnection();
		
		ArrayList<Board> list = new MemberDAO().selectMyRecentCommuFreeList(conn, loginMemberNo);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Board> selectMyRecentQAList(int loginMemberNo) {

		Connection conn = getConnection();
		
		ArrayList<Board> list = new MemberDAO().selectMyRecentQAList(conn, loginMemberNo);
		
		close(conn);
		
		return list;
	}

	public FileVO selectProfile(int memberNo) {
		
		Connection conn = getConnection();
		
		FileVO profile = new MemberDAO().selectProfile(conn, memberNo);
		
		close(conn);
				
		return profile;
	}
	
	public int insertProfile(FileVO profile, int loginMemberNo) {
		
		Connection conn = getConnection();
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.insertProfile(conn, profile, loginMemberNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);

		return result;
		
	}
	
	
	//////////////////////// 추후 수정 예정 /////////////////////////////
	public int deleteProfile(int fileNo, int loginMemberNo) {
		
		Connection conn = getConnection();
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.deleteProfile(conn, fileNo, loginMemberNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);

		return result;
	}
	///////////////////////////////////////////////////////////////
	
	
	
	public int deleteProfile(int loginMemberNo) {
		
		Connection conn = getConnection();
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.deleteProfile(conn, loginMemberNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);

		return result;
	}
	
	
	
	
	//////////////////////// 추후 수정 예정 /////////////////////////////
	public int updateProfile(FileVO profile, int originalFileNo, int loginMemberNo) {
		
		Connection conn = getConnection();
		
		MemberDAO dao = new MemberDAO();
		
		int result1 = dao.deleteProfile(conn, originalFileNo, loginMemberNo);
		int result2 = dao.insertProfile(conn, profile, loginMemberNo);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1;
	}
	////////////////////////////////////////////////////////////////
	

	
		
	
	
	public int updateProfile(FileVO profile, int loginMemberNo) {
		
		Connection conn = getConnection();
		
		MemberDAO dao = new MemberDAO();
		
		int result1 = dao.deleteProfile(conn, loginMemberNo);
		int result2 = dao.insertProfile(conn, profile, loginMemberNo);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1;
	}
	//아이디 중복체크
	public int checkId(String userId) {
		Connection conn = getConnection();
		
		int result = new MemberDAO().checkId(conn, userId);
		
		close(conn);
		
		return result;
	}
	//닉네임 중복체크
	public int nickName(String nickName) {
		Connection conn = getConnection();
		
		int result = new MemberDAO().checkNickName(conn, nickName);
		
		close(conn);
		
		return result;
	}
	//아이디 삭제
	public int deleteMember(String memberId) {
		Connection conn = getConnection();
		
		int result = new MemberDAO().deleteMember(conn, memberId);
		
		close(conn);
		
		return result;
	}
	//아이디 찾기
	public ArrayList<Member> searchId(String name) {
		Connection conn = getConnection();
		
		ArrayList<Member> result = new MemberDAO().searchId(conn, name);
		
		close(conn);
		
		return result;
	}

	public ArrayList<Member> searchPwd(String name) {
		Connection conn = getConnection();
		
		ArrayList<Member> result = new MemberDAO().searchPwd(conn, name);
		
		close(conn);
		
		return result;
	}

	public int modifyPwdMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDAO().modifyPwdMember(conn, m);
		
		close(conn);
		
		return result;
	}

	public int updateInfo(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDAO().updateInfo(conn, m);
		
		close(conn);
		
		return result;
	}
	
	public Member overlapCheck(Connection conn, String userId, String userNickName) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member member = null;
		String query="";
		
		if(userNickName=="") {
			query = "SELECT * FROM MEMBER WHERE MEMBER_ID = ?";
		}else {
			query = "SELECT * FROM MEMBER WHERE MEMBER_NICKNAME = ?";
		}

		try {
			pstmt = conn.prepareStatement(query);
			if(userNickName=="") {
				pstmt.setString(1, userId);
			}else {
				pstmt.setString(1, userNickName);
			}
			
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

	
}