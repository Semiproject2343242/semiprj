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
 * Servlet implementation class ExternalMainServlet
 */
@WebServlet("/main.ea")
public class ExternalMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExternalMainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*		String ea_category = request.getParameter("ea_category");
		String ck_ea_age = request.getParameter("ck_ea_age");
		String ck_lc = request.getParameter("ck_lc");
		int result = 0;
		int count = Integer.parseInt(request.getParameter("count"));
		result=result + count;*/
		//페이징
		
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		PageInfo pi = Page.PageInfo("대외활동", currentPage, "/main.ea");
		
		//페이징
		ArrayList<Board> list = new ExternalService().selectList(pi); 
		System.out.println("list : " +list);
		System.out.println("pi : " + pi);
		String page = null;
		
/*		if(result==0) 
		{*/
					if(list != null) {
						page = "WEB-INF/views/External_Activities/대외활동검색메인.jsp";
						request.setAttribute("list", list);
						request.setAttribute("pi", pi);//페이징	
					}else {
						page = "WEB-INF/views/Common/errorPage.jsp";
						request.setAttribute("msg", "대외활동 게시판 조회에 실패하였습니다.");
					}
/*				}
		} else {
			for(Board b : list){
				if(b.getCgName()!=ea_category && b.getTcName()!=ck_ea_age && b.getLcName()!=ck_lc) {
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
				}
			}
		}*/
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
