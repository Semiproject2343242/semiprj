package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.FreeDAO;
import board.model.dao.NoticeDAO;
import board.model.vo.Board;
import board.model.vo.FileVO;
import board.model.vo.PageInfo;

public class FreeService {

	public int getListCount() {
	Connection conn = getConnection();
		
		int result = new FreeDAO().getListCount(conn);
		
		close(conn);
		
		return result;
	}
	
	
	public ArrayList<Board> selectList(PageInfo pi){ 

		Connection conn = getConnection();
		
		ArrayList<Board> list = new FreeDAO().selectList(conn,pi);
		
		close(conn);
		
		return list;
	}
	
	public int insertFree(Board b) {
		Connection conn = getConnection();
		
		int result = new FreeDAO().insertFree(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	
	public Board selectBoard(int bId) {
		Connection conn = getConnection();
		
		FreeDAO dao = new FreeDAO();
		
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


	public int deleteBoard(Board board) {
		Connection conn = getConnection();
		NoticeDAO nDAO = new NoticeDAO();
		int result = nDAO.boardDelete(conn, board);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}


	public int modifyBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new NoticeDAO().modifyBoard(conn, b);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	
	public ArrayList<FileVO> selectFList() {
		
		Connection conn = getConnection();
		
		ArrayList<FileVO> list = null;
		
		FreeDAO dao = new FreeDAO();
		
		list = dao.selectFList(conn);
		
		close(conn);
		return list;
	}

	
	// file을 안올렸을때 어떻게 할지 결정해야함
	public int insertBoardAndFiles(Board b, ArrayList<FileVO> fileList) {
		
		Connection conn = getConnection();
		
		FreeDAO dao = new FreeDAO();
		
		int result1 = dao.insertFree(conn, b);
		int result2 = dao.insertFile(conn, fileList);
		
		if(result1 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1;
	}
	
	
	public ArrayList<FileVO> selectThumbnail(int bId) {
		Connection conn = getConnection();
		
		ArrayList<FileVO> list = null;
		list = new FreeDAO().selectThumbnail(conn, bId);
		
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
		list = new FreeDAO().selectImageList(conn, bId);
		
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

		list = new FreeDAO().selectFileList(conn, bId);
		
		if(list != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return list;
	}
	
}
