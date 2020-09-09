package board.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import board.model.service.NoticeService;
import board.model.vo.Board;
import board.model.vo.FileVO;
import common.MyFileRenamePolicy;
import member.model.vo.Member;

@WebServlet("/modifyForm.no")
public class NoticeModifyFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeModifyFormServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
	      // encType 이 multipart/form-data 로 전송되었는지 확인
	      if(ServletFileUpload.isMultipartContent(request)) {
	         int maxSize = 1024 * 1024 * 10;
	         String root = request.getSession().getServletContext().getRealPath("/");
	         String savePath = root + "UploadFolder/notice_uploadFiles/";
	         
	         File f = new File(savePath);
	         if(!f.exists()) {
	            f.mkdirs();
	         }

	         MultipartRequest multiRequest 
	         = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
	         
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
	         
		int no = Integer.parseInt(multiRequest.getParameter("no"));
		String title = multiRequest.getParameter("title");
		String content = multiRequest.getParameter("content");
		int userId = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		String category = multiRequest.getParameter("category");
		int viewCount = Integer.parseInt(multiRequest.getParameter("viewCount"));
		int reCommend = Integer.parseInt(multiRequest.getParameter("reCommend"));
		int replyCount = Integer.parseInt(multiRequest.getParameter("replyCount"));
		String writer = multiRequest.getParameter("writer");
		
		NoticeService service = new NoticeService();
				
		ArrayList<FileVO> imageList = service.selectImageList(no);
		ArrayList<FileVO> fileList = service.selectFileList(no);
		
		Board b = new Board(no,title,content,null,null,viewCount,reCommend,userId,writer,replyCount,null,null,null,null,category,null,null,null,null);
		
		String page = null;
		page ="WEB-INF/views/Notice/공지사항글수정.jsp";
		request.setAttribute("board", b);
		request.setAttribute("imageList", imageList);
		request.setAttribute("fileList", fileList);
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	    }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
