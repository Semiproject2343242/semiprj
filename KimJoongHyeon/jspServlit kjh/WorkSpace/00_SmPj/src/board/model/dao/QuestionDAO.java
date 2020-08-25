package board.model.dao;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import board.model.vo.Board;

public class QuestionDAO {
public ArrayList<Board> selectList(Connection conn) {
	//위치홀더 없어서 pstmt 필요없음
	Statement stmt = null;
	ResultSet rset = null;
	ArrayList<Board> list = null;
	
	String query = "SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,MEMBER_NO,B_REPLY_COUNT,CG_NAME FROM BOARD JOIN MEMBER ON(MEMBER_NO = B_WRITER) WHERE BOARD.B_ENABLE='Y' AND B_NAME='QA' ORDER BY B_NO DESC";
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board bo = new Board(rset.getInt("B_NO"),
									 rset.getString("B_TITLE"),
									 rset.getString("B_CONTENT"),
									 rset.getDate("B_DATE"),
									 rset.getDate("B_RDATE"),
									 rset.getInt("B_VIEW_COUNT"),
									 rset.getInt("MEMBER_NO"),
									 rset.getInt("B_REPLY_COUNT"),
									 rset.getString("CG_NAME"));
				list.add(bo); 
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return list;
	}
	
}
