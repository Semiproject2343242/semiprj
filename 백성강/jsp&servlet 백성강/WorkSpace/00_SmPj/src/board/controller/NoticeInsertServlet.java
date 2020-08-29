package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.NoticeService;
import board.model.service.QuestionService;
import board.model.vo.Board;
import member.model.vo.Member;

/**
 * Servlet implementation class NoticeInsertServlet
 */
@WebServlet("/insert.no")
public class NoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title"); //HTTP 요청의 파라미터 값을 얻기 위해 사용하는 것이 request.getParameter() 메쏘드입니다.
		String content = request.getParameter("content");
		int userId = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		String category = request.getParameter("category");
		
		Board b = new Board(title, content, userId, category);
		int result = new NoticeService().insertBoard(b);
		
		if(result > 0) {
			response.sendRedirect("main.no"); //JSP 페이지에서 특정한 작업을 수행한 후 지정한 페이지로 이동하고 싶은 경우가 있을 것이다
		} else {
			request.setAttribute("msg", "공지사항 등록에 실패하였습니다."); //setAttribute(), getAttribute()에서 속성 값으로 사용하는 타입은 Object입니다. msge에는 속성 이름을, 공지사항 드록에 실패하였습니다 에는 속성값을 넣습니다.
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
