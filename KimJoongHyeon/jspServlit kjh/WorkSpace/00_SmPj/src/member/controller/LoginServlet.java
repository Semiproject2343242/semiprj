package member.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberEmail = request.getParameter("email");
		String membername = request.getParameter("name");
		String memberId = request.getParameter("userId");
		String memberPw = request.getParameter("userPwd");
		
		System.out.println("LoginServlet userId : " + memberId);
		System.out.println("LoginServlet userPwd : " + memberPw);
		System.out.println("LoginServlet email : " + memberEmail);
		System.out.println("LoginServlet name : " + membername);
		
		Member member = null;
		Member loginUser = null;
		
		if(memberEmail != "") {
			System.out.println("카카오 로그인");
			member = new Member(membername,memberEmail);
			loginUser = new MemberService().kakoLogin(member);
			System.out.println("loginUser : " + loginUser);
			if(loginUser == null) {
				request.setAttribute("msg", "회원 정보가 없습니다. 회원가입 해주세요");
				RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Common/errorPage.jsp");
				view.forward(request, response);
			}
		}else {
			System.out.println("일반 로그인");
			member = new Member(memberId, memberPw);
			loginUser = new MemberService().loginMember(member);
		}
		if(loginUser != null) {
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(600);
			session.setAttribute("loginUser", loginUser);
			response.sendRedirect(request.getContextPath());
			
		} else {
			request.setAttribute("msg", "로그인 실패");
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Common/errorPage.jsp");
			view.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
