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
import board.model.vo.Board;
import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class adminServlet
 */
@WebServlet("/adminPage.ad")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
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
		int loginMemberNo = loginMember.getMemberNo();
		
		Member member = new AdminService().selectMember(loginMemberId);
		
		AdminService adminService = new AdminService();
		
		ArrayList<Board> supportList = adminService.selectRecentSupportList();
		ArrayList<Board> externalList = adminService.selectRecentExternalList();
		ArrayList<Board> commuFreeList = adminService.selectRecentCommuList();
		ArrayList<Board> qaList = adminService.selectRecentQAList();
		
    	String page = null;
    	if(member != null) {
    		page = "WEB-INF/views/Admin/관리자_페이지(메인).jsp";
    		request.setAttribute("member", member);
    		request.setAttribute("supportList", supportList);
    		request.setAttribute("externalList", externalList);
    		request.setAttribute("commuFreeList", commuFreeList);
    		request.setAttribute("qaList", qaList);
    		request.getRequestDispatcher(page).forward(request, response);
    	}else {
			page = "WEB-INF/views/Common/errorPage.jsp";
			request.setAttribute("msg", "회원조회에 실패했습니다.");
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
