package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.vo.Board;
import board.model.vo.PageInfo;
import board.model.service.QuestionService;

/**
 * Servlet implementation class QAMainServlet
 */
@WebServlet("/main.qa")
public class QAMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QAMainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QuestionService qServuce = new QuestionService();
//		ArrayList<Board> list = new QuestionService().selectList();
		
		//페이징을 위한 변수들
				int listCount;		// 총 게시글 개수
				int currentPage;	// 현재 페이지
				int pageLimit;		// 한 페이지에서 표시되는 페이징 
				int boardLimit;		// 한 페이지에서 보일 게시글 최대 개수
				int maxPage;		// 최대 페이지 중 가장 마지막 페이지
				int startPage;		// 페이징된 페이지 중 시작 페이지
				int endPage;		// 페이징된 페이지 중 마지막 페이지
				
				listCount = qServuce.getListCount();
//				System.out.println("listCount"+listCount);
				
				currentPage = 1;
				if(request.getParameter("currentPage") != null) {
					currentPage = Integer.parseInt(request.getParameter("currentPage"));
				}
				
				pageLimit = 10;
				boardLimit = 10;
				
				/*
				 	listCount = 100, boardLimit = 10
				 	100 / 10 = 10.0 => 10페이지
				 	101 / 10 = 10.1 => 11페이지
				 	103 / 10 = 10.3 => 11페이지
				 	109 / 10 = 10.9 => 11페이지
				 	110 / 10 = 11.0 => 11페이지
				 	
				 */
				maxPage = (int)Math.ceil((double)listCount/boardLimit);
				
				/*
				 	1, 11, 21, 31, ....... = > 10 * n + 1 (n >= 0)
				 	< 1 2 3 4 5 6 7 8 9 10 >
				 	< 11 12 13 14 15 16 17 18 19 20 >
				 	
				 	1 ~ 10 : n = 0
				 	11 ~ 20 : n = 1
				 	21 ~ 30 : n = 2
				 	31 ~ 40 : n = 3 
				 	.......
				 	
				 	n = (currentPage - 1) / pageLimit
				 */
				startPage = ( currentPage -1)/ pageLimit * pageLimit + 1;
				
				// 10, 20, 30, 40, ....
				endPage = startPage + pageLimit - 1;
				if(maxPage < endPage) { //페이지 수가 10개가 안될때
					endPage = maxPage;
				}
				
				PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
				
				ArrayList<Board> list =  qServuce.selectList(pi);
				
		String page = null;
		if(list != null) {
			page = "WEB-INF/views/Question_Answer/QA_게시판.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			
		}else {
			page = "WEB-INF/views/Common/errorPage.jsp";
			request.setAttribute("msg", "Q/A 게시판 조회에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
