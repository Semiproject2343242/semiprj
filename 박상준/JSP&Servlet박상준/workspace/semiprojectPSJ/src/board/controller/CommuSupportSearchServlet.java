package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import board.model.service.SupportService;
import board.model.vo.Board;
import board.model.vo.FileVO;

/**
 * Servlet implementation class CommuSupportSearchServlet
 */
@WebServlet("/spSearchList.cm")
public class CommuSupportSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommuSupportSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SupportService service = new SupportService();
		
		String[] emStatearr = request.getParameterValues("emState[]");
		String[] agearr = request.getParameterValues("age[]");
        String[] localarr = request.getParameterValues("local[]");
        ArrayList<Board> bList = new ArrayList<Board>(); // 게시판 리스트 가져오기
        ArrayList<FileVO> fList = new ArrayList<FileVO>(); //파일 리스트 가져오기
        String category = request.getParameter("cate");
       
        
        if(agearr == null && localarr==null && emStatearr ==null &&(category==null || category.equals("선택"))) {
        	bList = service.selectSpList(1); // 게시판 리스트 가져오기
        }else {
		 bList = service.selectSpSearchList(1,category,emStatearr,agearr,localarr); // 게시판 리스트 가져오기
        }
        response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(bList, response.getWriter());
	} 
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
