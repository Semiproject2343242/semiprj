package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.NoticeDAO;
import board.model.vo.Board;

public class NoticeService {
	
	public ArrayList<Board> selectList(){ 
		//service에서 제일 먼저 해야하는 커넥션 연결.
		Connection conn = getConnection();
		
		ArrayList<Board> list = new NoticeDAO().selectList(conn);
		
		close(conn);
		
		return list;
	}

}
