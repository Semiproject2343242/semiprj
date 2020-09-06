package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import board.model.dao.BoardDAO;
import board.model.dao.QuestionDAO;
import board.model.vo.Board;

public class BoardService {

	public int getListCount(String boardName) {
		Connection conn = getConnection();
			
		int result = new BoardDAO().getListCount(conn,boardName);
		
		close(conn);
		
		return result;
	}

	public int deliteBoard(int no) {
		Connection conn = getConnection();
		BoardDAO nDAO = new BoardDAO();
		int result = nDAO.boardDelete(conn, no);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int enrollBoard(Board board) {
		Connection conn = getConnection();
		BoardDAO nDAO = new BoardDAO();
		int result = nDAO.boardEnroll(conn, board);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

}
