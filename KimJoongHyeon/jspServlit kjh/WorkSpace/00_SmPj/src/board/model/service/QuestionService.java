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
	public int getListCount() {
	Connection conn = getConnection();
		
		int result = new QuestionDAO().getListCount(conn);
		
		close(conn);
		
		return result;
	}
	
	public ArrayList<Board> selectList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Board> list = new QuestionDAO().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}
}
