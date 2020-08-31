package board.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.PageInfo;

public class NoticeDAO {
	
	public int getListCount(Connection conn) {
		Statement stmt = null;
//		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM BOARD WHERE B_NAME = 'QA' AND B_ENABLE = 'Y'";
		//보드에서 게시판 삭제상태가 y 이며 whdfbrk qa 일경우 의 카운들?
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

	//리스트 불러옴
	public ArrayList<Board> selectList(Connection conn, PageInfo pi){
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
	
	public int insertNotice(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
//		String query = "INSERT INTO BOARD VALUES(SEQ_NNO.NEXTVAL, 게시판이름, 제목, 내용, 생성날짜, 수정날짜, 조회수, 추천수, 삭제여부, 글쓴이번호, 댓글수, AC_SATA, LC_NAME, ENROLL_STATE, EM_STATE, TC_NAME, CG_NAME)";
		String query = "INSERT INTO BOARD VALUES(SEQ_BNO.NEXTVAL, '공지사항', ?, ?, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, ?, DEFAULT, NULL, NULL, DEFAULT, NULL, NULL, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, b.getBoardTitle());
			pstmt.setString(2, b.getBoardContent());
			pstmt.setInt(3, b.getBoardWriterNo());
			pstmt.setString(4, b.getCgName());
			
			result =  pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}
}
