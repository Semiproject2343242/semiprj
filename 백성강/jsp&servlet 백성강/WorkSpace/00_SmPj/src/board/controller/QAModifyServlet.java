package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.QuestionService;
import board.model.vo.Board;
import member.model.vo.Member;

/**
 * Servlet implementation class QAModifyFormServlet
 */
@WebServlet("/modify.qa")
public class QAModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QAModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int userId = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		String category = request.getParameter("category");
		
		Board b = new Board(no,title,content,userId,category);
		int result = new QuestionService().modifyBoard(b);
		String page = null;
		
		if(result > 0) {
			Board board = new QuestionService().selectBoard(b.getBoardNo());
			if(board != null) {
				page = "WEB-INF/views/Question_Answer/QA_질문확인.jsp";
				request.setAttribute("board", board);
			} else {
				request.setAttribute("msg", "게시판 수정에 실패하였습니다.");
				page = "WEB-INF/views/common/errorPage.jsp";
			}
		} else {
			request.setAttribute("msg", "게시판 수정에 실패하였습니다.");
			page = "WEB-INF/views/common/errorPage.jsp";
		}
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
