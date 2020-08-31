package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.sun.xml.internal.ws.api.message.Attachment;

import board.model.dao.BoardDAO;
import board.model.dao.QuestionDAO;
import board.model.vo.Board;
import board.model.vo.FileVO;

public class BoardService {

	public int getListCount(String boardName) {
		Connection conn = getConnection();
			
		int result = new BoardDAO().getListCount(conn,boardName);
		
		close(conn);
		
		return result;
	}
	
}
