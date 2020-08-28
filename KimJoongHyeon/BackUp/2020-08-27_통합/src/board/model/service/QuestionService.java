package board.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.QuestionDAO;
import board.model.vo.Board;
import board.model.vo.PageInfo;

public class QuestionService {
	public ArrayList<Board> selectList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Board> list = new QuestionDAO().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}

	public Board selectBoard(int bId) {
		Connection conn = getConnection();
		
		QuestionDAO dao = new QuestionDAO();
		
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
}
