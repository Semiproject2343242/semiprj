package question.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.vo.Board;
import question.model.dao.QuestionDAO;

public class QuestionService {
	public ArrayList<Board> selectList(){
		Connection conn = getConnection();
		
		ArrayList<Board> list = new QuestionDAO().selectList(conn);
		
		close(conn);
		
		return list;
	}
}
