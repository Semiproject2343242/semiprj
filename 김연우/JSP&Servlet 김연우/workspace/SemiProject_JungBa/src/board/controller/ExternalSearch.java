package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.ExternalService;
import board.model.vo.Board;
import board.model.vo.PageInfo;

/**
 * Servlet implementation class ExternalSearch
 */
@WebServlet("/search.ea")
public class ExternalSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExternalSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ea_category = request.getParameter("ea_category");
		String ck_ea_age = request.getParameter("ck_ea_age");
		String ck_lc = request.getParameter("ck_lc");
		System.out.println("카테고리야"+ck_lc);
		System.out.println("카테고리야"+ea_category);
		System.out.println("카테고리야"+ck_ea_age);

		//페이징
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		PageInfo pi = Page.PageInfo("대외활동", currentPage, "/main.ea");
		//페이징
		ArrayList<Board> list = new ExternalService().selectList(pi); //Notice만 들어갈 수 있는 ArrayList가 반환 될 것이다.

		String page = null;
		for(Board b : list){
			if(b.getCgName()==ea_category && b.getTcName()==ck_ea_age && b.getLcName()==ck_lc) {
				if(list != null) {
					page = "WEB-INF/views/External_Activities/대외활동검색메인.jsp";
					request.setAttribute("list", list);
					request.setAttribute("pi", pi);//페이징	
					
					request.setAttribute("ea_category", ea_category);
					request.setAttribute("ck_ea_age", ck_ea_age);
					request.setAttribute("ck_lc", ck_lc);
					
				}else {
					page = "WEB-INF/views/Common/errorPage.jsp";
					request.setAttribute("msg", "대외활동 게시판 조회에 실패하였습니다.");
				}
			}else {
				if(list != null) {
					page = "WEB-INF/views/External_Activities/대외활동검색메인.jsp";
					request.setAttribute("list", list);
					request.setAttribute("pi", pi);//페이징	
				}else {
					page = "WEB-INF/views/Common/errorPage.jsp";
					request.setAttribute("msg", "대외활동 게시판 조회에 실패하였습니다.");
				}
			}
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
