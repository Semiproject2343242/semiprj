package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import board.model.service.CommunityService;
import board.model.vo.*;

/**
 * Servlet implementation class ExternalSearch
 */
@WebServlet("/eaSearchIeage.cm")
public class CommuExternalSearchImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommuExternalSearchImageServlet() {
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
        ArrayList<FileVO> fList = new ArrayList<FileVO>(); //파일 리스트 가져오기
        String category = request.getParameter("cate");
        
//        if(agearr == null && localarr==null && category==null) {
   	     	fList = service.selectExList(2,pi); //파일 리스트 가져오기
//        }
//        else{
//            String age = "";
//    		 if(agearr != null) {
//    			for (int i = 0; i< agearr.length; i++) {
//    				System.out.println("agearr"+"["+i+"]"+agearr[i]);
//    				if(i == agearr.length -1)
//    					age += agearr[i];
//    				else
//    					age += agearr[i] + ",";
//    			}
//    		 }
//    		 
//    		String local = "";
//    		 if(localarr != null) {
//    			for (int i = 0; i< localarr.length; i++) {
//    				System.out.println(localarr[i]);
//    				if(i == localarr.length -1)
//    					local += localarr[i];
//    				else
//    					local += localarr[i] + ",";
//    			}
//    		 }
//        }
		 response.setContentType("application/json; charset=UTF-8");
			new Gson().toJson(fList, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
