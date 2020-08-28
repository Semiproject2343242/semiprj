package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.CommuDAO;
import board.model.vo.Board;
import board.model.vo.PageInfo;

public class CommuService {

	public ArrayList<Board> selectList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Board> list = new CommuDAO().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}

}
