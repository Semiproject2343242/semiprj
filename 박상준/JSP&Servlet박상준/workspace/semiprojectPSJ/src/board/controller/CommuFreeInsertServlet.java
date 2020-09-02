package board.controller;

import java.io.IOException;
//import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.CommunityService;
import board.model.service.QuestionService;
import board.model.vo.Board;
import member.model.vo.Member;

/**
 * Servlet implementation class QAInsertServlet
 */
@WebServlet("/finsert.cm")
public class CommuFreeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommuFreeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int userId = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		
		Board b = new Board(title, content, userId);
		int result = new CommunityService().insertBoard(b);
		
		if(result > 0) {
			response.sendRedirect("fMain.cm");
		} else {
			request.setAttribute("msg", "게시판 등록에 실패하였습니다.");
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
