package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import board.model.dao.BoardDAO;

public class BoardService {

	public int getListCount(String boardName) {
		Connection conn = getConnection();
			
		int result = new BoardDAO().getListCount(conn,boardName);
		
		close(conn);
		
		return result;
	}

}
