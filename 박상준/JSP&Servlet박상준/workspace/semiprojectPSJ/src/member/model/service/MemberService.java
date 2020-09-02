package member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.rollback;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import java.sql.Connection;
import java.util.ArrayList;

import board.model.vo.Board;
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

}