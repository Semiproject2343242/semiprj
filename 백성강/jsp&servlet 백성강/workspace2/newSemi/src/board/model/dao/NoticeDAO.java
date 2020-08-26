package board.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;

import board.model.vo.Board;

public class NoticeDAO {
	
	private Properties prop = new Properties();
	
	//기본생성자
	public NoticeDAO() {}
	
	//리스트 불러옴
	public ArrayList<Board> selectList(Connection conn){
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		String query = prop.getProperty("SELECT * FROM QALIST WHERE RNUM BETWEEN ? AND ? ORDER BY B_NO DESC"); //파일형태?로 하여 쿼리문에서 가져옴
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query); // select 했기 때문에 executeQuery -> 프로펄티스 안사용함.
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
			close(stmt);
		}
		return list;
			
	}

}
