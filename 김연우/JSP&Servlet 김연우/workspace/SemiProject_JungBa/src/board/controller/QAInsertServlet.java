package board.controller;

import java.io.File;
import java.io.IOException;
//import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import board.model.service.QuestionService;
import board.model.vo.Board;
import board.model.vo.FileVO;
import common.MyFileRenamePolicy;
import member.model.vo.Member;

/**
 * Servlet implementation class QAInsertServlet
 */
@WebServlet("/insert.qa")
public class QAInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QAInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		/////////////////////// Test ////////////////////////
		
		// enctype이 multipart/form-date로 전송 되었는지 확인
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024 * 1024 * 10; // 10MByte로 전송파일 용량을 제한
			String root = request.getSession().getServletContext().getRealPath("/"); // 웹 서버 컨테이너 경로 추출
			String savePath = root + "thumbnail_uploadFiles/";
			
			File f = new File(savePath);
			if(!f.exists()) {
				f.mkdirs();
			}
		 	
		 	/*
		 	 	파일 명 변환 및 저장 작업
		 	 		사용자가 올린 파일 명을 그대로 저장하지 않는 것이 원칙
		 	 			1) 같은 파일 명이 있는 경우 기존 파일을 덮어쓰거나 시스템이 지정한 이름대로 바껴서 저장될 수 있기 때문
		 	 			2) 특수기호나 띄어쓰기 등 서버에 들어가면 문제가 생기는 이름으로 저장될 수 있기 때문
		 	 		
		 	 		DefaultFileRenamePolicy (cos.jar 안에 존재하는 클래스)
		 	 			같은 파일 명이 있는지 확인 후 있을 경우 파일 명 뒤에 숫자를 붙여줌
		 	 			ex. aaa.png, aaa1.png, aaa2.png ...
		 	 			MultipartRequest multiRequest
		 	 				= new MultiPartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		 	*/
		 	
			MultipartRequest multiRequest 
				= new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
			
			ArrayList<String> saveFiles = new ArrayList<String>();		// 바뀐 파일의 이름 저장
			ArrayList<String> originFiles = new ArrayList<String>();	// 원본 파일의 이름 저장
			
			Enumeration<String> files = multiRequest.getFileNames(); // 폼에서 전송된 파일 리스트들의 name 반환
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				System.out.println(name);
				System.out.println(multiRequest.getFilesystemName(name));
				// multiRequest.getFilesystemName() : MyRenameFilePolicy의 rename메소드에서 작성한대로 rename된 파일 명
				if(multiRequest.getFilesystemName(name) != null) {
					
					saveFiles.add(multiRequest.getFilesystemName(name));
					originFiles.add(multiRequest.getOriginalFileName(name)); // getOriginalFileName() : 실제 사용자가 업로드 할때의 파일명
				}
			}
			
			/////////////////////// Test ////////////////////////
		
		
			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("content");
			int userId = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
			String category = multiRequest.getParameter("category");
			
			System.out.println(title);
			System.out.println(content);
			System.out.println(userId);
			System.out.println(category);
			
			Board b = new Board(title, content, userId, category);
			
			ArrayList<FileVO> fileList = new ArrayList<FileVO>();
			for(int i = originFiles.size() - 1; i >= 0; i--) {
				FileVO file = new FileVO();
				file.setFilePath(savePath);
				file.setOriginName(originFiles.get(i));
				file.setChangeName(saveFiles.get(i));
				
				if(i == originFiles.size() - 1) {
					file.setFileLevel(0);
				}else {
					file.setFileLevel(1);
				}
				
				fileList.add(file);
			}
			
			
			int result = new QuestionService().insertThumbnail(b, fileList);
			
			
//			int result = new QuestionService().insertBoard(b);
			
			
			
			if(result > 0) {
				response.sendRedirect("main.qa");
			} else {
				for(int i = 0; i<saveFiles.size(); i++) {
					File failedFile = new File(savePath + saveFiles.get(i));
					failedFile.delete();
				}
				
				request.setAttribute("msg", "공지사항 등록에 실패하였습니다.");
				RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Common/errorPage.jsp");
				view.forward(request, response);
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
