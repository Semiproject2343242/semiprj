package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.CommunityService;
import board.model.vo.Board;
import board.model.vo.FileVO;
import board.model.vo.PageInfo;

/**
 * Servlet implementation class CommuSupportMainServlet
 */
@WebServlet("/spMain.cm")
public class CommuSupportMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CommuSupportMainServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String page = null;
			page = "WEB-INF/views/Community/지원정책게시판(커뮤니티).jsp";
			request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
/*
 * CommunityService service = new CommunityService();
 * 
 * 
 * //페이징 int currentPage = 1; if(request.getParameter("currentPage") != null) {
 * currentPage = Integer.parseInt(request.getParameter("currentPage")); }
 * PageInfo pi = Page.PageInfo("지원", currentPage, "/spMain.cm"); //페이징
 * 
 * //게시판 리스트 가져오기
 * 
 * ArrayList<Board> bList = service.selectSpList(1); // 게시판 리스트 가져오기
 * ArrayList<FileVO> fList = service.selectSpList(2); //파일 리스트 가져오기
 * System.out.println(fList);
 * 
 * 
 * 
 */