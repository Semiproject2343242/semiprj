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

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/Delete.me")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		String memberPw = request.getParameter("userPwd");
		String memberId = request.getParameter("Id");
		
//		Member member = new Member(memberId, memberPw);
		int result = new MemberService().deleteMember(memberId);
		System.out.println("memberId: "+memberId);
		System.out.println("result:"+result);
		 if(result > 0) { 
			HttpSession session = request.getSession();
			session.invalidate(); // 세션 무효화
//			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Main/메인페이지.jsp");  //왜 안들어가지지?
//			view.forward(request, response);
			response.sendRedirect("main.no"); // 추후에 수정예정
		} else {
			request.setAttribute("msg", "삭제에 실패하였습니다.");
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Common/errorPage.jsp");
			view.forward(request, response);
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
