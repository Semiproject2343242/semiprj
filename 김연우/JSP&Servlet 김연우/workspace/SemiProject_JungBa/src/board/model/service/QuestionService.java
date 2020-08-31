package board.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.sun.xml.internal.ws.api.message.Attachment;

import board.model.dao.BoardDAO;
import board.model.dao.QuestionDAO;
import board.model.vo.Board;
import board.model.vo.FileVO;
import board.model.vo.PageInfo;

public class QuestionService {
	public ArrayList<Board> selectList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Board> list = new QuestionDAO().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}

	public Board selectBoard(int bId) {
		Connection conn = getConnection();
		
		QuestionDAO dao = new QuestionDAO();
		
		int result = dao.updateCount(conn, bId);
		Board board = null;
		if(result > 0) {
			board = dao.selectBoard(conn, bId);
			if(board != null) {
				commit(conn);
			} else {
				rollback(conn);
			}
		}else {
			rollback(conn);
		}
		close(conn);
		
		return board;
	}

	public int insertBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new QuestionDAO().insertNotice(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int modifyBoard(Board b) {
Connection conn = getConnection();
		
		int result = new QuestionDAO().modifyBoard(conn, b);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int deliteBoard(Board board) {
		Connection conn = getConnection();
		QuestionDAO nDAO = new QuestionDAO();
		int result = nDAO.boardDelete(conn, board);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	
	
	
	
	// FILE 테스트!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	
	public ArrayList selectFList() {
		Connection conn = getConnection();
		
		ArrayList list = null;
		
		QuestionDAO dao = new QuestionDAO();
		
		list = dao.selectFList(conn);
		
		close(conn);
		return list;
	}
	
	public int insertThumbnail(Board b, ArrayList<FileVO> fileList) {
		Connection conn = getConnection();
		
		QuestionDAO dao = new QuestionDAO();
		
		int result1 = dao.insertNotice(conn, b);
		int result2 = dao.insertFile(conn, fileList);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1;
	}

	public ArrayList<FileVO> selectThumbnail(int bId) {
		Connection conn = getConnection();
		
		int result = new QuestionDAO().updateCount(conn, bId);
		
		ArrayList<FileVO> list = null;
		if(result > 0) {
			list = new QuestionDAO().selectThumbnail(conn, bId);
		
			if(list != null) {
				commit(conn);
			} else {
				rollback(conn);
			}
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
	
}
