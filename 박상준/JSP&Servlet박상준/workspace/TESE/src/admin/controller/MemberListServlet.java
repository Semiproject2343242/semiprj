package admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.model.service.AdminService;
import board.controller.Page;
import board.model.vo.Board;
import board.model.vo.PageInfo;
import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class MemberListServlet
 */
@WebServlet("/memList.ad")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginUser");
		String loginMemberId = loginMember.getMemberId();
		
		Member member = new MemberService().selectMember(loginMemberId);
				
		AdminService adminService = new AdminService();
		
		//페이징을 위한 변수들
		int listCount;		// 총 게시글 개수
		int currentPage;	// 현재 페이지
		int pageLimit;		// 한 페이지에서 표시되는 페이징 
		int boardLimit;		// 한 페이지에서 보일 게시글 최대 개수
		int maxPage;		// 최대 페이지 중 가장 마지막 페이지
		int startPage;		// 페이징된 페이지 중 시작 페이지
		int endPage;		// 페이징된 페이지 중 마지막 페이지
		
		listCount = adminService.getMemberListCount();
		
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
		
		ArrayList<Member> list =  adminService.selectMemberList(pi);
		
    	String page = null;
    	if(member != null) {
    		page = "WEB-INF/views/Admin/관리자(회원 목록 조회).jsp";
    		request.setAttribute("member", member);
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
    		request.getRequestDispatcher(page).forward(request, response);
    	}else {
			page = "WEB-INF/views/Common/errorPage.jsp";
			request.setAttribute("msg", "회원 목록 조회에 실패했습니다.");
		}		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
