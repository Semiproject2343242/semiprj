package member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.controller.Page;
import board.model.vo.Board;
import board.model.vo.PageInfo;
import member.model.service.MemberService;
import member.model.vo.Member;

@WebServlet("/myPageSupport.me")
public class MyPageSupportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MyPageSupportServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginUser");
		String loginMemberId = loginMember.getMemberId();
		int loginMemberNo = loginMember.getMemberNo();
		
		Member member = new MemberService().selectMember(loginMemberId);
				
		MemberService memberService = new MemberService();
		
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		PageInfo pi = Page.PageInfo("지원", currentPage, "/myPageSupport.me");
		
		ArrayList<Board> list = memberService.selectMySupportList(loginMemberNo, pi);
		
    	String page = null;
    	if(member != null) {
    		page = "WEB-INF/views/Member/마이_페이지(지원정책).jsp";
    		request.setAttribute("member", member);
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
    		request.getRequestDispatcher(page).forward(request, response);
    	}else {
			page = "WEB-INF/views/Common/errorPage.jsp";
			request.setAttribute("msg", "회원조회에 실패했습니다.");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
