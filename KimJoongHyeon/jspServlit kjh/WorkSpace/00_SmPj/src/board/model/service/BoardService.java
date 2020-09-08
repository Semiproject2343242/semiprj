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
	
	// 게시판 별 게시글 갯수
	public int getListCount(String boardName) {
		
		Connection conn = getConnection();
			
		int result = new BoardDAO().getListCount(conn,boardName);
		
		close(conn);
		
		return result;
	}
	
	
	// 게시글 삭제
	public int deleteBoard(int bId) {
		Connection conn = getConnection();
		BoardDAO dao = new BoardDAO();
		int result = dao.boardDelete(conn, bId);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	// 댓글 목록
	public ArrayList<Reply> selectReplyList(int bId) {
		
		Connection conn = getConnection();
		
		ArrayList<Reply> list = new BoardDAO().selectReplyList(conn, bId);
		
		close(conn);
		
		return list;
	}
	
	
	// 댓글 등록
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
	
	
	// 댓글 삭제
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
	
	
	// 썸네일 가져오기
	public ArrayList<FileVO> selectThumbnail(int bId) {
		Connection conn = getConnection();
		
		ArrayList<FileVO> list = null;
		list = new BoardDAO().selectThumbnail(conn, bId);
		
		if(list != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
	
	
	// 이미지 목록
	public ArrayList<FileVO> selectImageList(int bId) {
		Connection conn = getConnection();
				
		ArrayList<FileVO> list = null;
		list = new BoardDAO().selectImageList(conn, bId);
		
		if(list != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
	
	
	// 파일 목록
	public ArrayList<FileVO> selectFileList(int bId) {
		Connection conn = getConnection();
				
		ArrayList<FileVO> list = null;

		list = new BoardDAO().selectFileList(conn, bId);
		
		if(list != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
	
		public int deliteBoard(int no) {
		Connection conn = getConnection();
		BoardDAO nDAO = new BoardDAO();
		int result = nDAO.boardDelete(conn, no);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int enrollBoard(Board board) {
		Connection conn = getConnection();
		BoardDAO nDAO = new BoardDAO();
		int result = nDAO.boardEnroll(conn, board);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

}
