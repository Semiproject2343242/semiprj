package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.NoticeDAO;
import board.model.dao.QuestionDAO;
import board.model.vo.Board;
import board.model.vo.PageInfo;

public class NoticeService {
	
	public int getListCount() {
	Connection conn = getConnection();
		
		int result = new NoticeDAO().getListCount(conn);
		
		close(conn);
		
		return result;
	}
	
	
	public ArrayList<Board> selectList(PageInfo pi){ 

		Connection conn = getConnection();
		
		ArrayList<Board> list = new NoticeDAO().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}
	
	public int insertBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new NoticeDAO().insertNotice(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	
	public Board selectBoard(int bId) {
		Connection conn = getConnection();
		
		NoticeDAO dao = new NoticeDAO();
		
		int result = dao.updateCount(conn, bId);
		Board board = null;
		if(result > 0) {
			board = dao.selectBoard(conn, bId);
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


	public int deliteBoard(Board board) {
		Connection conn = getConnection();
		NoticeDAO nDAO = new NoticeDAO();
		int result = nDAO.boardDelete(conn, board);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}


	public int modifyBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new NoticeDAO().modifyBoard(conn, b);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

}
