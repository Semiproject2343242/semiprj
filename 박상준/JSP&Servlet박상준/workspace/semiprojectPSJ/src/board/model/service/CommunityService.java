package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.CommunityDAO;
import board.model.vo.AddFile;
import board.model.vo.Board;
import board.model.vo.PageInfo;

public class CommunityService {

	public Board selectBoard(int bId, String bName) {
		Connection conn = getConnection();
		
		CommunityDAO dao = new CommunityDAO();
		
		int result = dao.updateCount(conn, bId);
		Board board = null;
		if(result > 0) {
			board = dao.selectBoard(conn, bId, bName);
			if(board != null) {
				commit(conn);
			} else {
				rollback(conn);
			}
		}else {
			rollback(conn);
		}
		close(conn);
		
		return board;
	}

	public ArrayList<Board> selectList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Board> list = new CommunityDAO().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}

	public int insertBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new CommunityDAO().insertNotice(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public ArrayList selectTList(int i, PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList list = null;
		
		CommunityDAO dao = new CommunityDAO();	
		if(i == 1) {
			list = dao.selectBList(conn,pi);
		} else {
			list = dao.selectFList(conn);
		}
		
		close(conn);
		
		return list;
	}

	public int insertAddFile(Board b, ArrayList<AddFile> fileList) {
		Connection conn = getConnection();
		
		CommunityDAO dao = new CommunityDAO();
		
		int result1 = dao.insertBoard(conn,b);
		int result2 = dao.insertAddFile(conn, fileList);
		
		if(result1 > 0 && result2 >0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1;
	}

	public ArrayList<AddFile> selectFile(int bId) {
		Connection conn = getConnection();
		
		int result = new CommunityDAO().updateCount(conn, bId);
		
		ArrayList<AddFile> list = null;
		if(result > 0) {
			list  = new CommunityDAO().selectFile(conn, bId);
			
			if(list != null) {
				commit(conn);
			}else {
				rollback(conn);
			}
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
}
