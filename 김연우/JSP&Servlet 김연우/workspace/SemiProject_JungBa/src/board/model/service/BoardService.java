package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDAO;
import board.model.dao.NoticeDAO;
import board.model.vo.Board;
import board.model.vo.FileVO;
import board.model.vo.Reply;

public class BoardService {

	public int getListCount(String boardName) {
		Connection conn = getConnection();
			
		int result = new BoardDAO().getListCount(conn,boardName);
		
		close(conn);
		
		return result;
	}
	
	
	public ArrayList<Reply> selectReplyList(int bId) {
		Connection conn = getConnection();
		
		ArrayList<Reply> list = new BoardDAO().selectReplyList(conn, bId);
		
		close(conn);
		
		return list;
	}
	
	
	public int insertReply(Reply r) {
		
		Connection conn = getConnection();
		
		BoardDAO dao = new BoardDAO();
		
		int result = dao.insertReply(conn, r);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int deleteReply(int replyNo) {
		
		Connection conn = getConnection();
		
		BoardDAO dao = new BoardDAO();
		
		int result = dao.deleteReply(conn, replyNo);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}	
	
	
	public ArrayList<FileVO> selectThumbnail(int bId) {
		Connection conn = getConnection();
		
		ArrayList<FileVO> list = null;
		list = new NoticeDAO().selectThumbnail(conn, bId);
		
		if(list != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
	
	
	
	/////////////////////// 수정 사항 ///////////////////////////
	public ArrayList<FileVO> selectImageList(int bId) {
		Connection conn = getConnection();
				
		ArrayList<FileVO> list = null;
		list = new NoticeDAO().selectImageList(conn, bId);
		
		if(list != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
	
	
	public ArrayList<FileVO> selectFileList(int bId) {
		Connection conn = getConnection();
				
		ArrayList<FileVO> list = null;

		list = new NoticeDAO().selectFileList(conn, bId);
		
		if(list != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
	
}
