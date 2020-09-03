package board.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Reply;

public class BoardDAO {

	public int getListCount(Connection conn, String boardName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM BOARD WHERE B_NAME = ? AND B_ENABLE = 'Y'";
		
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, boardName);
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

	
	public ArrayList<Reply> selectReplyList(Connection conn, int bId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Reply> list = null;
		
		String sql = "SELECT * FROM REPLYLIST WHERE B_NO = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bId);
			rset = pstmt.executeQuery();
			list = new ArrayList<Reply>();
			
			while(rset.next()) {
				list.add(new Reply(
						rset.getInt("reply_no"),
						rset.getString("reply_content"),
						rset.getDate("reply_date"),
						rset.getDate("reply_rdate"),
						rset.getInt("r_writer"),
						rset.getString("member_nickname"),
						rset.getString("reply_enable"),
						rset.getInt("b_no"),
						rset.getString("change_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int insertReply(Connection conn, Reply r) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO REPLY VALUES(SEQ_RNO.NEXTVAL, ?, SYSDATE, SYSDATE, ?, DEFAULT, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, r.getReplyContent());
			pstmt.setInt(2, r.getReplyWriterNo());
			pstmt.setInt(3, r.getRefBid());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
}
