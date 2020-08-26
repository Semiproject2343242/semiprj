package board.model.dao;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.PageInfo;

public class QuestionDAO {
	
	public int getListCount(Connection conn) {
		Statement stmt = null;
//		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM BOARD WHERE B_NAME = 'QA' AND B_ENABLE = 'Y'";
		
		try {
			stmt= conn.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return result;
	}
	
	public ArrayList<Board> selectList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		
		String query = "SELECT * FROM QALIST WHERE RNUM BETWEEN ? AND ? ORDER BY B_NO DESC";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board bo = new Board(rset.getInt("B_NO"),
									 rset.getString("B_TITLE"),
									 rset.getString("B_CONTENT"),
									 rset.getDate("B_DATE"),
									 rset.getDate("B_RDATE"),
									 rset.getInt("B_VIEW_COUNT"),
									 rset.getInt("B_WRITER"),
									 rset.getString("MEMBER_NICKNAME"),
									 rset.getInt("B_REPLY_COUNT"),
									 rset.getString("CG_NAME"));
				list.add(bo); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	
}
