package board.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.PageInfo;

public class ExternalDAO {

	public ArrayList<Board> selectList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1; 
		
		String query = "SELECT * FROM NOTICELIST WHERE RNUM BETWEEN ? AND ? ORDER BY B_NO DESC"; 
									//QALIST - > NOTICE , BNUM
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery(); 
			list = new ArrayList<Board>();
			
			while(rset.next()){
				Board no = new Board(rset.getInt("B_NO"),				// 게시판 번호	
									 rset.getString("B_TITLE"),  		// 게시판 제목	
									 rset.getString("B_CONTENT"),		// 게시판 내용	
									 rset.getDate("B_DATE"),			// 게시판 생성 날짜
									 rset.getDate("B_RDATE"),			// 게시판 수정 날짜	
									 rset.getInt("B_VIEW_COUNT"),		// 게시판 조회수
									 rset.getInt("B_WRITER"),			// 게시판 글쓴이 회원 번호
									 rset.getString("MEMBER_NICKNAME"),	// 게시판 글쓴이 회원	
									 rset.getInt("B_REPLY_COUNT"),		// 게시판 댓글
									 
									 rset.getString("CG_NAME"));		// 카테고리 이름
				list.add(no);
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
