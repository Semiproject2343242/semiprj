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
		
		  String category = request.getParameter("ea_category"); String[] agearr =
		  request.getParameterValues("ck_ea_age"); String[] localarr =
		  request.getParameterValues("ck_lc"); String age =""; String local = "";
		  
		  if(agearr != null) {
			  for (int i = 0; i< agearr.length; i++) {
				  if(i ==agearr.length -1) age += agearr[i]; else age += agearr[i] + ","; 
				  } 
			  }
		  
		  if(localarr != null) { for (int i = 0; i< localarr.length; i++) { if(i ==
		  localarr.length -1) local += localarr[i]; else local += localarr[i] + ","; }
		  } Board b = new Board(); System.out.println("b는"+b.getTcName());
		 
	 	// 전페이지에서 값을 가져오고 가져온값을 게시판인설트?를 만들어 dao에서 파일 값을 가져와서 서브릿에서 반복문을 사용하여 크기에 따라 반복하여 비교 후 파일을 뽑은 값을 다시 페이지에 출력
		//페이징
		
		  int currentPage = 1; if(request.getParameter("currentPage") != null) {
		  currentPage = Integer.parseInt(request.getParameter("currentPage")); }
		  PageInfo pi = Page.PageInfo("대외활동", currentPage, "/main.ea"); //페이징
		  ArrayList<Board> list = new ExternalService().selectList(pi); //Notice만 들어갈 수 있는 ArrayList가 반환 될 것이다.
		
		  
		  String page = null;
		  
		  if(list != null) { page = "WEB-INF/views/External_Activities/대외활동검색메인.jsp";
		  request.setAttribute("list", list); request.setAttribute("pi", pi);//페이징
		  }else { page = "WEB-INF/views/Common/errorPage.jsp";
		  request.setAttribute("msg", "대외활동 게시판 조회에 실패하였습니다."); }
		  request.getRequestDispatcher(page).forward(request, response);
		
		 String[] userId1 = request.getParameterValues("userId1");
		 System.out.println("userId1= "+ userId1);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
