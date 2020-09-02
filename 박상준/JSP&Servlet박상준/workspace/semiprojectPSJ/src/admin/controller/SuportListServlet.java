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
 * Servlet implementation class SuportListServlet
 */
@WebServlet("/spList.ad")
public class SuportListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuportListServlet() {
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
		
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		PageInfo pi = Page.PageInfo("지원", currentPage, "/spList.ad");
		
		ArrayList<Board> list = adminService.selectAdminSupportList(pi);
		
    	String page = null;
    	if(member != null) {
    		page = "WEB-INF/views/Admin/관리자(지원 정책 신청).jsp";
    		request.setAttribute("member", member);
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
    		request.getRequestDispatcher(page).forward(request, response);
    	}else {
			page = "WEB-INF/views/Common/errorPage.jsp";
			request.setAttribute("msg", "게시판조회에 실패했습니다.");
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
