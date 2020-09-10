package admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.model.service.AdminService;
import board.controller.Page;
import board.model.vo.Board;
import board.model.vo.PageInfo;

@WebServlet("/searchExternal.ad")
public class SearchExternalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchExternalServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	request.setCharacterEncoding("UTF-8");
    	
    	String opt = request.getParameter("opt");
    	
    	System.out.println("선택된 select : " + opt);
    	
    	AdminService service = new AdminService();

    	int listCount = service.getSearchExternalListCount(opt);
    	
		//페이징
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		PageInfo pi = Page.searchPageInfo(listCount, currentPage, "/searchExternal.ad?opt="+opt);
		//페이징
    	
    	
		ArrayList<Board> list = service.searchExternalList(opt, pi);
		
		String page = null;
		
		if(list != null) {
			page = "WEB-INF/views/Admin/관리자(대외 활동 신청)검색.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);//페이징	
			request.setAttribute("selectedOpt", opt);
		}else {
			page = "WEB-INF/views/Common/errorPage.jsp";
			request.setAttribute("msg", "대외활동 신청 목록 검색에 실패하였습니다.");
		}
		request.getRequestDispatcher(page).forward(request, response);
    	
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
