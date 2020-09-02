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
		
		String title = request.getParameter("title"); //HTTP ��û�� �Ķ���� ���� ��� ���� ����ϴ� ���� request.getParameter() �޽���Դϴ�.
		String content = request.getParameter("content");
		int userId = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		String category = request.getParameter("category");
		
		Board b = new Board(title, content, userId, category);
		int result = new NoticeService().insertBoard(b);
		
		if(result > 0) {
			response.sendRedirect("main.no"); //JSP ���������� Ư���� �۾��� ������ �� ������ �������� �̵��ϰ� ���� ��찡 ���� ���̴�
		} else {
			request.setAttribute("msg", "�������� ��Ͽ� �����Ͽ����ϴ�."); //setAttribute(), getAttribute()���� �Ӽ� ������ ����ϴ� Ÿ���� Object�Դϴ�. msge���� �Ӽ� �̸���, �������� ��Ͽ� �����Ͽ����ϴ� ���� �Ӽ����� �ֽ��ϴ�.
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
