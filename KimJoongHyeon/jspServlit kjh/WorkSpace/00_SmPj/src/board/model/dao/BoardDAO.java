package board.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.FileVO;

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

	public int boardDelete(Connection conn, int no) {
		PreparedStatement pstmt = null;
		int result = 0;
				
		String query = "UPDATE BOARD SET BOARD.B_ENABLE='N' WHERE B_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, no);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<FileVO> selectFile(Connection conn, int bId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<FileVO> list = null;
		
		String query = "SELECT * FROM FILES WHERE B_NO=? AND STATUS='Y' ORDER BY FILE_NO";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,  bId);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<FileVO>();
			
			while(rset.next()) {
				FileVO af = new FileVO();
				af.setFileNo(rset.getInt("file_no"));
				af.setOriginName(rset.getString("origin_name"));
				af.setChangeName(rset.getString("change_name"));
				af.setFilePath(rset.getString("file_path"));
				af.setUploadDate(rset.getDate("upload_date"));
				
				list.add(af);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int boardEnroll(Connection conn, Board board) {
		PreparedStatement pstmt = null;
		int result = 0;
				
		String query = "UPDATE BOARD SET ENROLL_STATE='Y' WHERE B_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board.getBoardNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
}
