package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.CommunityService;
import board.model.vo.Board;
import board.model.vo.PageInfo;

/**
 * Servlet implementation class CommuFreeMainServlet
 */
@WebServlet("/fMain.cm")
public class CommuFreeMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommuFreeMainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommunityService cServuce = new CommunityService();
		
		//페이징
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		PageInfo pi = Page.PageInfo("자유", currentPage, "/fMain.cm");
		//페이징
		
		ArrayList<Board> list =  cServuce.selectList(pi);
				
		String page = null;
		if(list != null) {
			page = "WEB-INF/views/Community/자유게시판(커뮤니티).jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);//페이징
			
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
