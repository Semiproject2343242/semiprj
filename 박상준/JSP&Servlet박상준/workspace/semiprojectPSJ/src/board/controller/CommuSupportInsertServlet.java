package board.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import board.model.service.CommunityService;
import board.model.vo.AddFile;
import board.model.vo.Board;
import common.MyFileRenamePolicy;
import member.model.vo.Member;


/**
 * Servlet implementation class CommuSupportInsertServlet
 */
@WebServlet("/spInsert.cm")
public class CommuSupportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommuSupportInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
	      
	      // encType 이 multipart/form-data 로 전송되었는지 확인
	      if(ServletFileUpload.isMultipartContent(request)) {
	         int maxSize = 1024 * 1024 * 10;
	         String root = request.getSession().getServletContext().getRealPath("/");
	         String savePath = root + "thumbnail_uploadFiles/";
	         
	         System.out.println(savePath);
	         
	         File f = new File(savePath);
	         if(!f.exists()) {
	            f.mkdirs();
	         }
	         
			
	         MultipartRequest multiRequest = new MultipartRequest(request, savePath,
				 maxSize, "UTF-8", new MyFileRenamePolicy());
	         
	         ArrayList<String> saveFiles = new ArrayList<String>(); // 바뀐 파일의 이름을 저장 할 ArrayList
	         ArrayList<String> originFiles = new ArrayList<String>(); //원본 파일의 이름을 저장할 ArrayList
	         
	         Enumeration<String> files = multiRequest.getFileNames(); // getFileNames() : 폼에서 전송된 File의 name 반환 //여러개 가능
	    
	         while(files.hasMoreElements()) {
	            String name = files.nextElement();
	            
	            if(multiRequest.getFilesystemName(name)!= null) { // getFilesystemName() : RenamePolicy의 rename()에서 작성한대로 rename된 파일 명
	               saveFiles.add(multiRequest.getFilesystemName(name));
	               originFiles.add(multiRequest.getOriginalFileName(name));
	            }
	         }
	         System.out.println("여기는 타나5");
	         
		request.setCharacterEncoding("UTF-8");
		 String category = multiRequest.getParameter("sp_category");
         String[] agearr = multiRequest.getParameterValues("ck_sp_age");
         String[] localarr = multiRequest.getParameterValues("ck_lc");
         String title = multiRequest.getParameter("sp_title");
         String content = multiRequest.getParameter("sp_text_contents");
         String bWriter = ((Member)request.getSession().getAttribute("loginUser")).getMemberNickName();
         int userId = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
 		 String age = "";
 		 if(agearr != null) {
 			for (int i = 0; i< agearr.length; i++) {
 				if(i == agearr.length -1)
 					age += agearr[i];
 				else
 					age += agearr[i] + ",";
 			}
 		 }
 		 
 		String local = "";
 		 if(localarr != null) {
 			for (int i = 0; i< localarr.length; i++) {
 				if(i == localarr.length -1)
 					local += localarr[i];
 				else
 					local += localarr[i] + ",";
 			}
 		 }
 		
         Board b = new Board();
         
         b.setBoardTitle(title);
         b.setBoardContent(content);
         b.setBoardWriter(bWriter);
         b.setBoardWriterNo(userId);
         b.setCgName(category);
         b.setTcName(age);
         b.setLcName(local);
         System.out.println(b);
         System.out.println(originFiles);
         System.out.println(saveFiles);
         
         ArrayList<AddFile> fileList = new ArrayList<AddFile>();
         for(int i  = originFiles.size() - 1; i>=0; i--) {
        	 AddFile af = new AddFile();
        	 af.setFilePath(savePath);
        	 af.setOriginName(originFiles.get(i));
        	 af.setChangeName(saveFiles.get(i));
            
            if(i == originFiles.size()-1) {
            	af.setFileLevel(0);
            }else {
            	af.setFileLevel(1);
            }
            fileList.add(af);
         }
         int result = new CommunityService().insertAddFile(b, fileList);
         
         if(result>0) {
            response.sendRedirect("spMain.cm");
         }else {
            for(int i = 0; i < saveFiles.size(); i++) {
               File failedFile = new File(savePath + saveFiles.get(i));
               failedFile.delete();
            }
            request.setAttribute("msg", "게시판 등록에 실패하였습니다.");
            request.getRequestDispatcher("WEB-INF/views/Common/errorPage.jsp").forward(request, response);
         }
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
