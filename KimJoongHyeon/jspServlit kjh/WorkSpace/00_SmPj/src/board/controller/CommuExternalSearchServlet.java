package board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import board.model.service.CommunityService;
import board.model.service.ExternalService;
import board.model.vo.Board;
import board.model.vo.FileVO;
import board.model.vo.PageInfo;

/**
 * Servlet implementation class ExternalSearch
 */
@WebServlet("/eaSearchList.cm")
public class CommuExternalSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommuExternalSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommunityService service = new CommunityService();
		//페이징
		int currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		PageInfo pi = Page.PageInfo("대외", currentPage, "/eaSearchList.cm");
		//페이징
				
		String[] agearr = request.getParameterValues("age[]");
        String[] localarr = request.getParameterValues("local[]");
        ArrayList<Board> bList = new ArrayList<Board>(); // 게시판 리스트 가져오기
        ArrayList<FileVO> fList = new ArrayList<FileVO>(); //파일 리스트 가져오기
        String category = request.getParameter("cate");
        
        System.out.println("category : " + category);
		 System.out.println("age : " + agearr);
		 System.out.println("local : " +localarr );
        
        if(agearr == null && localarr==null && (category==null || category.equals("선택"))) {
        	bList = service.selectExList(1,pi); // 게시판 리스트 가져오기
        }else {
            String age = "";
    		 if(agearr != null) {
    			for (int i = 0; i< agearr.length; i++) {
    				System.out.println("agearr"+"["+i+"]"+agearr[i]);
    				if(i == agearr.length -1)
    					age += agearr[i];
    				else
    					age += agearr[i] + ",";
    			}
    		 }
    		 
    		String local = "";
    		 if(localarr != null) {
    			for (int i = 0; i< localarr.length; i++) {
    				System.out.println(localarr[i]);
    				if(i == localarr.length -1)
    					local += localarr[i];
    				else
    					local += localarr[i] + ",";
    			}
    		 }
    		 System.out.println("category : " + category);
    		 System.out.println("age : " + age);
    		 System.out.println("local : " +local );
    		 bList = service.selectExSearchList(1,pi,category,agearr,localarr); // 게시판 리스트 가져오기
        }
        request.setAttribute("pi", pi);
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
