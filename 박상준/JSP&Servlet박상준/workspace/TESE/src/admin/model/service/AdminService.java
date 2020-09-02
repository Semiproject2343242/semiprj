package admin.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import admin.model.dao.AdminDAO;
import board.model.dao.QuestionDAO;
import board.model.vo.Board;
import board.model.vo.PageInfo;
import main.model.dao.MainDAO;
import member.model.vo.Member;

public class AdminService {

public Member selectMember(String loginMemberId) {
		
		Connection conn = getConnection();
		
		Member member = new AdminDAO().selectMember(conn, loginMemberId);
				
		close(conn);

		return member;
		
	}

public ArrayList<Board> selectRecentSupportList() {
	Connection conn = getConnection();
	
	ArrayList<Board> list = new AdminDAO().selectRecentSupportList(conn);
	
	close(conn);
	
	return list;
}

public ArrayList<Board> selectRecentExternalList() {
	Connection conn = getConnection();
	
	ArrayList<Board> list = new AdminDAO().selectRecentExternalList(conn);
	
	close(conn);
	
	return list;	
}

public ArrayList<Board> selectRecentQAList() {
	Connection conn = getConnection();
	
	ArrayList<Board> list = new AdminDAO().selectRecentQAList(conn);
	
	close(conn);
	
	return list;
}

public ArrayList<Board> selectRecentCommuList() {
	Connection conn = getConnection();
	
	ArrayList<Board> list = new AdminDAO().selectRecentCommuList(conn);
	
	close(conn);
	
	return list;
}

public ArrayList<Board> selectAdminExternalList(PageInfo pi) {
	Connection conn = getConnection();
	
	ArrayList<Board> list = new AdminDAO().selectAdminExternalList(conn,pi);
	
	close(conn);
	
	return list;
}

public ArrayList<Board> selectAdminSupportList(PageInfo pi) {
	Connection conn = getConnection();
	
	ArrayList<Board> list = new AdminDAO().selectAdminSupportList(conn,pi);
	
	close(conn);
	
	return list;
}

public int getMemberListCount() {
	Connection conn = getConnection();
	
	int result = new AdminDAO().getMemberListCount(conn);
	
	close(conn);
	
	return result;
}

public ArrayList<Member> selectMemberList(PageInfo pi) {
	Connection conn = getConnection();
	
	ArrayList<Member> list = new AdminDAO().selectMemberList(conn, pi);
	
	close(conn);
	
	return list;
}
}
