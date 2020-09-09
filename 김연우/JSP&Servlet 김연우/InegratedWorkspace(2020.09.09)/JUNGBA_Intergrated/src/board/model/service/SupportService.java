package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.ExternalDAO;
import board.model.dao.SupportDAO;
import board.model.vo.Board;

public class SupportService {
	public ArrayList<Board> selectSpList(int i) {
		Connection conn = getConnection();
		
		ArrayList list = null;
		
		SupportDAO dao = new SupportDAO();	
		if(i == 1) {
			list = dao.selectSpList(conn);
		} else {
			list = dao.selectFList(conn);
		}
		
		close(conn);
		
		return list;
	}

	public ArrayList<Board> selectSpSearchList(int i, String[] rcarr, String[] emarr, String category, String[] agearr,
			String[] localarr) {
		Connection conn = getConnection();
		ArrayList list = null;
		
		SupportDAO dao = new SupportDAO();	
		if(i == 1) {
			System.out.println("리스트 가져오기 실행");
			list = dao.selectSpSearchList(conn,rcarr,emarr,category,agearr,localarr);
		} else {
			System.out.println("파일 가져오기 실행");
			list = dao.selectFList(conn);
		}
		
		close(conn);
		
		return list;
	}


}
