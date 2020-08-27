package board.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.PageInfo;

public class CommuDAO {

	public ArrayList<Board> selectList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		
		String query = "SELECT * FROM FREELIST WHERE RNUM BETWEEN ? AND ? ORDER BY B_NO DESC";
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
									 rset.getInt("B_REPLY_COUNT"));
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
