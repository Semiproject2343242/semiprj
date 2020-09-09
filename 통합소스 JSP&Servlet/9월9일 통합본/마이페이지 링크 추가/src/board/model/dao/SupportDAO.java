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

public class SupportDAO {

	public ArrayList selectSpList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;

		String query = "SELECT * FROM SUPPORTLIST WHERE ENROLL_STATE='Y' ORDER BY B_NO DESC";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("B_NO"),
						   rset.getString("B_TITLE"),
						   rset.getString("B_CONTENT"),
						   rset.getDate("B_DATE"),
						   rset.getDate("B_RDATE"),
						   rset.getInt("B_VIEW_COUNT"),
						   rset.getInt("B_RECOMMEND"),
						   rset.getInt("B_WRITER"),
						   rset.getString("MEMBER_NICKNAME"),
						   rset.getInt("B_REPLY_COUNT"),
						   rset.getString("AC_STATE"),
						   rset.getString("LC_NAME"),
						   rset.getString("ENROLL_STATE"),
						   rset.getString("EM_STATE"),
						   rset.getString("TC_NAME"),
						   rset.getString("CG_NAME"),
						   rset.getDate("RECRUIT_STARTDATE"),
						   rset.getDate("RECRUIT_ENDDATE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public ArrayList selectFList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<FileVO> list = null;
		
		String query= "SELECT * FROM FILES WHERE STATUS ='Y' AND FILE_LEVEL = 0";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<FileVO>();
			while(rset.next()) {
				list.add(new FileVO(rset.getInt("b_no"),
								  rset.getString("change_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return list;
	}

	public ArrayList selectSpSearchList(Connection conn, String[] rcarr, String[] emarr, String category,
			String[] agearr, String[] localarr) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		String local = "";
		
//		String query = "SELECT * FROM EXTERNALLIST WHERE ENROLL_STATE='Y' ORDER BY B_NO DESC";
		String query = "SELECT * FROM SUPPORTLIST WHERE ENROLL_STATE='Y' ";

		// 1. 카테고리만 선택했을 경우
		if(!category.equals("선택") && rcarr==null  && emarr==null && agearr==null && localarr == null) {
			System.out.println("1.카테고리만 선택 됐을경우");
			query += " AND CG_NAME IN (?)  ORDER BY B_NO DESC";
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 2. 접수상태만 선택했을경우
		else if(category.equals("선택") && rcarr!=null  && emarr==null && agearr==null && localarr == null) {
			System.out.println("2.접수상태만 선택 됐을경우");
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(1+i, rcarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 3. 취업상태만 선택했을경우
		else if(category.equals("선택") && rcarr==null  && emarr!=null && agearr==null && localarr == null) {
			System.out.println("3.취업상태만 선택 됐을경우");
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(1+i, emarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 4. 대상만 선택했을경우
		else if(category.equals("선택") && rcarr==null  && emarr==null && agearr!=null && localarr == null) {
			System.out.println("4.대상만 선택 됐을경우");
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(1+i, agearr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 5. 지역만 선택했을경우
		else if(category.equals("선택") && rcarr==null  && emarr==null && agearr==null && localarr != null) {
			System.out.println("5.지역만 선택 됐을경우");
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(1+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 6. 카테고리와 접수상태
		else if(!category.equals("선택") && rcarr!=null  && emarr==null && agearr==null && localarr == null) {
			System.out.println("6. 카테고리와 접수상태 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(2+i, rcarr[i]);
				}
				
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 7. 카테고리와 취업상태
		else if(!category.equals("선택") && rcarr==null  && emarr!=null && agearr==null && localarr == null) {
			System.out.println("7. 카테고리와 취업상태 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(2+i, emarr[i]);
				}
				
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 8. 카테고리와 대상
		else if(!category.equals("선택") && rcarr==null  && emarr==null && agearr!=null && localarr == null) {
			System.out.println("8. 카테고리와 대상 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(2+i, agearr[i]);
				}
				
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 9. 카테고리와 지역
		else if(!category.equals("선택") && rcarr==null  && emarr==null && agearr==null && localarr != null) {
			System.out.println("9. 카테고리와 지역 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(2+i, localarr[i]);
				}
				
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		//접수와 취업
		else if(category.equals("선택") && rcarr!=null  && emarr!=null && agearr==null && localarr == null) {
			System.out.println("10.접수와 취업 선택 됐을경우");
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(1+i, rcarr[i]);
				}
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(1+rcarr.length+i, emarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		//접수와 대상
		else if(category.equals("선택") && rcarr!=null  && emarr==null && agearr!=null && localarr == null) {
			System.out.println("11.접수와 대상 선택 됐을경우");
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(1+i, rcarr[i]);
				}
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(1+rcarr.length+i, agearr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		//접수와 지역
		else if(category.equals("선택") && rcarr!=null  && emarr==null && agearr==null && localarr != null) {
			System.out.println("12.접수와 지역 선택 됐을경우");
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(1+i, rcarr[i]);
				}
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(1+rcarr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 10. 취업과 대상
		else if(category.equals("선택") && rcarr==null  && emarr!=null && agearr!=null && localarr == null) {
			System.out.println("13.취업과 대상 선택 됐을경우");
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(1+i, emarr[i]);
				}

				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(1+emarr.length+i, agearr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 11. 취업과 지역
		else if(category.equals("선택") && rcarr==null  && emarr!=null && agearr==null && localarr != null) {
			System.out.println("13.취업과 지역 선택 됐을경우");
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(1+i, emarr[i]);
				}

				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(1+emarr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 12. 대상과 지역
		else if(category.equals("선택") && rcarr==null  && emarr==null && agearr!=null && localarr != null) {
			System.out.println("14.대상과 지역 선택 됐을경우");
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(1+i, agearr[i]);
				}
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(1+agearr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 15. 카테고리와 접수와 취업
		else if(!category.equals("선택") && rcarr!=null  && emarr!=null && agearr==null && localarr == null) {
			System.out.println("15.카테고리와 접수와 취업 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(2+i, rcarr[i]);
				}
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(2+rcarr.length+i, emarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 16. 카테고리와 접수와 대상
		else if(!category.equals("선택") && rcarr!=null  && emarr==null && agearr!=null && localarr == null) {
			System.out.println("16.카테고리와 접수와 대상 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(2+i, rcarr[i]);
				}
				
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(2+rcarr.length+i, agearr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 17. 카테고리와 접수와 지역
		else if(!category.equals("선택") && rcarr!=null  && emarr==null && agearr==null && localarr != null) {
			System.out.println("17.카테고리와 접수와 지역 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(2+i, rcarr[i]);
				}
				
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(2+rcarr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 18. 카테고리와 취업과 대상
		else if(!category.equals("선택") && rcarr==null  && emarr!=null && agearr!=null && localarr == null) {
			System.out.println("18. 카테고리와  취업과 대상 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(2+i, emarr[i]);
				}
				
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(2+emarr.length+i, agearr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 19. 카테고리와 취업과 지역
		else if(!category.equals("선택") && rcarr==null  && emarr!=null && agearr==null && localarr != null) {
			System.out.println("19. 카테고리와  취업과 지역 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(2+i, emarr[i]);
				}
				
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(2+emarr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 20. 카테고리와 대상과 지역
		else if(!category.equals("선택") && rcarr==null  && emarr==null && agearr!=null && localarr != null) {
			System.out.println("20. 카테고리와 대상과 지역 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(2+i, agearr[i]);
				}
				
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(2+agearr.length+i, localarr[i]);
				}
				
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 21. 접수와 취업과 대상
		else if(category.equals("선택") && rcarr!=null  && emarr!=null && agearr!=null && localarr == null) {
			System.out.println("10.접수와 취업과 대상선택 됐을경우");
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(1+i, rcarr[i]);
				}
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(1+rcarr.length+i, emarr[i]);
				}
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(1+rcarr.length+emarr.length+i, agearr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 22. 접수와 취업과 지역
		else if(category.equals("선택") && rcarr!=null  && emarr!=null && agearr==null && localarr != null) {
			System.out.println("22.접수와 취업과 지역선택 됐을경우");
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(1+i, rcarr[i]);
				}
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(1+rcarr.length+i, emarr[i]);
				}
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(1+rcarr.length+emarr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 23. 접수와 대상과 지역
		else if(category.equals("선택") && rcarr!=null  && emarr==null && agearr!=null && localarr != null) {
			System.out.println("23.접수와 대상과 지역선택 됐을경우");
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(1+i, rcarr[i]);
				}
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(1+rcarr.length+i, agearr[i]);
				}
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(1+rcarr.length+agearr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 24. 취업과 대상과 지역
		else if(category.equals("선택") && rcarr==null  && emarr!=null && agearr!=null && localarr != null) {
			System.out.println("24.취업과 대상과 지역 선택 됐을경우");
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(1+i, emarr[i]);
				}

				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(1+emarr.length+i, agearr[i]);
				}
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(1+emarr.length+agearr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 25. 카테고리와 접수와 취업과 대상
		else if(!category.equals("선택") && rcarr!=null  && emarr!=null && agearr!=null && localarr == null) {
			System.out.println("25.카테고리와 접수와 취업과 대상 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(2+i, rcarr[i]);
				}
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(2+rcarr.length+i, emarr[i]);
				}
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(2+rcarr.length+emarr.length+i, agearr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 26. 카테고리와 접수와 취업과 지역
		else if(!category.equals("선택") && rcarr!=null  && emarr!=null && agearr==null && localarr != null) {
			System.out.println("26.카테고리와 접수와 취업과 지역 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(2+i, rcarr[i]);
				}
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(2+rcarr.length+i, emarr[i]);
				}
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(2+rcarr.length+emarr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 27. 카테고리와 취업상태와 대상과 지역
		else if(!category.equals("선택") && rcarr==null  && emarr!=null && agearr!=null && localarr != null) {
			System.out.println("27.카테고리와 취업과 대상과 지역 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(2+i, emarr[i]);
				}
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(2+emarr.length+i, agearr[i]);
				}
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(2+agearr.length+emarr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		// 28. 전부다
		else {
			System.out.println("28.전부 선택 됐을경우");
			query += " AND CG_NAME IN (?)";
			
			if(rcarr.length == 1) {//하나밖에 없을때
				query += " AND AC_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (AC_STATE ";
				for (int i = 0; i< rcarr.length; i++) {
					if(i == rcarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR AC_STATE";
				}
			}
			
			if(emarr.length == 1) {//하나밖에 없을때
				query += " AND EM_STATE LIKE('%'||?||'%')";
			}else{
				query += " AND (EM_STATE ";
				for (int i = 0; i< emarr.length; i++) {
					if(i == emarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR EM_STATE";
				}
			}
			
			if(agearr.length == 1) {//하나밖에 없을때
				query += " AND TC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (TC_NAME ";
				for (int i = 0; i< agearr.length; i++) {
					if(i == agearr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR TC_NAME";
				}
			}
			
			if(localarr.length == 1) {//하나밖에 없을때
				query += " AND LC_NAME LIKE('%'||?||'%')";
			}else{
				query += " AND (LC_NAME ";
				for (int i = 0; i< localarr.length; i++) {
					if(i == localarr.length -1)//마지막일때
						query += " LIKE('%'||?||'%'))";
					else
						query += " LIKE('%'||?||'%') OR LC_NAME";
				}
			}
			
			query += " ORDER BY B_NO DESC ";
			
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				for (int i = 0; i< rcarr.length; i++) {
					pstmt.setString(2+i, rcarr[i]);
				}
				for (int i = 0; i< emarr.length; i++) {
					pstmt.setString(2+rcarr.length+i, emarr[i]);
				}
				for (int i = 0; i< agearr.length; i++) {
					pstmt.setString(2+rcarr.length+emarr.length+i, agearr[i]);
				}
				for (int i = 0; i< localarr.length; i++) {
					pstmt.setString(2+rcarr.length+emarr.length+agearr.length+i, localarr[i]);
				}
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Board>();
				list =  addList(rset,list);
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally {
				close(rset);
				close(pstmt);
			}
		}
		return list;
	}

	private ArrayList<Board> addList(ResultSet rset, ArrayList<Board> list) {
		try {
			while(rset.next()) {
				list.add(new Board(rset.getInt("B_NO"),
						   rset.getString("B_TITLE"),
						   rset.getString("B_CONTENT"),
						   rset.getDate("B_DATE"),
						   rset.getDate("B_RDATE"),
						   rset.getInt("B_VIEW_COUNT"),
						   rset.getInt("B_RECOMMEND"),
						   rset.getInt("B_WRITER"),
						   rset.getString("MEMBER_NICKNAME"),
						   rset.getInt("B_REPLY_COUNT"),
						   rset.getString("AC_STATE"),
						   rset.getString("LC_NAME"),
						   rset.getString("ENROLL_STATE"),
						   rset.getString("EM_STATE"),
						   rset.getString("TC_NAME"),
						   rset.getString("CG_NAME"),
						   rset.getDate("RECRUIT_STARTDATE"),
						   rset.getDate("RECRUIT_ENDDATE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
