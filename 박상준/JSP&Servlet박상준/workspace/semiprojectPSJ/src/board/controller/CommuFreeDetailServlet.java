package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.CommunityService;
import board.model.service.QuestionService;
import board.model.vo.Board;
import board.model.vo.Reply;

/**
 * Servlet implementation class CommuFreeDetailServlet
 */
@WebServlet("/fDetail.cm")
public class CommuFreeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommuFreeDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bId = Integer.parseInt(request.getParameter("bId"));
		Board board = new CommunityService().selectBoard(bId,"자유");
		
		String page = null;
		if(board != null) {
			page = "WEB-INF/views/Community/자유게시판내용확인(커뮤니티).jsp";
			request.setAttribute("board", board);
		} else {
			page = "WEB-INF/views/Common/errorPage.jsp";
			request.setAttribute("msg", "게시판 상세조회에 실패하였습니다.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
