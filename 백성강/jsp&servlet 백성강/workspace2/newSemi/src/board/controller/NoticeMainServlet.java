package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.NoticeService;
import board.model.service.QuestionService;
import board.model.vo.Board;
import board.model.vo.PageInfo;

/**
 * Servlet implementation class NoticeMainServlet
 */
@WebServlet("/main.no")
public class NoticeMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeMainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//db한테 넘길만한게 없어서 그냥 넘어간다
		NoticeService qServuce = new NoticeService();
		
		//페이징을 위한 변수들
		int listCount;		// 총 게시글 개수
		int currentPage;	// 현재 페이지
		int pageLimit;		// 한 페이지에서 표시되는 페이징 
		int boardLimit;		// 한 페이지에서 보일 게시글 최대 개수
		int maxPage;		// 최대 페이지 중 가장 마지막 페이지
		int startPage;		// 페이징된 페이지 중 시작 페이지
		int endPage;		// 페이징된 페이지 중 마지막 페이지
		
		listCount = qServuce.getListCount();
		
		currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		pageLimit = 10;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		
		startPage = ( currentPage -1)/ pageLimit * pageLimit + 1;
		
		
		endPage = startPage + pageLimit - 1;
		if(maxPage < endPage) { //페이지 수가 10개가 안될때
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<Board> list = new NoticeService().selectList(pi); //Notice만 들어갈 수 있는 ArrayList가 반환 될 것이다.

		String page = null;

			page = "WEB-INF/views/Notice/공지사항메인.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);

		
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
