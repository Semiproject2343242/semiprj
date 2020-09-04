package board.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Reply;
import member.model.vo.Member;

@WebServlet("/replyInsert.re")
public class ReplyInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReplyInsertServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int loginMemberNo = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		int bId = Integer.parseInt(request.getParameter("boardNo"));
		String content = request.getParameter("replyContent");
		
		Reply reply = new Reply(loginMemberNo, bId, content);
		
		BoardService service = new BoardService();
		
		int result = service.insertReply(reply);
		
		if(result > 0) {
			response.sendRedirect("detail.no?bId="+bId);
		} else {			
			request.setAttribute("msg", "댓글 등록에 실패하였습니다.");
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Common/errorPage.jsp");
			view.forward(request, response);
		}
		
		
		
//		response.setContentType("application/json; charset=UTF-8");
//		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
//		gson.toJson(replyList, response.getWriter());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
