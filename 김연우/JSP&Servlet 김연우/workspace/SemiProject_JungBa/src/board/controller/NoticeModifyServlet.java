package board.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import board.model.service.CommunityService;
import board.model.service.NoticeService;
import board.model.vo.Board;
import board.model.vo.FileVO;
import common.MyFileRenamePolicy;
import member.model.vo.Member;

@WebServlet("/modify.no")
public class NoticeModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NoticeModifyServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// encType 이 multipart/form-data 로 전송되었는지 확인
		if (ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024 * 1024 * 10;
			String root = request.getSession().getServletContext().getRealPath("/");
			String savePath = root + "UploadFolder/notice_uploadFiles/";

			System.out.println("savePath : " + savePath);

			File f = new File(savePath);
			if (!f.exists()) {
				f.mkdirs();
			}

			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
					new MyFileRenamePolicy());

			ArrayList<String> saveFiles = new ArrayList<String>(); // 바뀐 파일의 이름을 저장 할 ArrayList
			ArrayList<String> originFiles = new ArrayList<String>(); // 원본 파일의 이름을 저장할 ArrayList

			Enumeration<String> files = multiRequest.getFileNames(); // getFileNames() : 폼에서 전송된 File의 name 반환 //여러개 가능

			while (files.hasMoreElements()) {
				String name = files.nextElement();

				if (multiRequest.getFilesystemName(name) != null) { // getFilesystemName() : RenamePolicy의 rename()에서
																	// 작성한대로 rename된 파일 명
					saveFiles.add(multiRequest.getFilesystemName(name));
					originFiles.add(multiRequest.getOriginalFileName(name));
				}
			}

			int no = Integer.parseInt(multiRequest.getParameter("no"));
			String imageFile = multiRequest.getFilesystemName("imageFile");
			String uploadFile1 = multiRequest.getFilesystemName("uploadFile1");
			String uploadFile2 = multiRequest.getFilesystemName("uploadFile2");
			String category = multiRequest.getParameter("category");
			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("content");
			String bWriter = ((Member) request.getSession().getAttribute("loginUser")).getMemberNickName();
			int userId = ((Member) request.getSession().getAttribute("loginUser")).getMemberNo();

			Board b = new Board();
			b.setBoardNo(no);
			b.setBoardTitle(title);
			b.setBoardContent(content);
			b.setBoardWriter(bWriter);
			b.setBoardWriterNo(userId);
			b.setCgName(category);
			System.out.println(b);
			System.out.println("originFiles : " + originFiles);
			System.out.println("saveFiles : " + saveFiles);
			System.out.println("imageFile : " + imageFile);
			System.out.println("uploadFile1 : " + uploadFile1);
			System.out.println("uploadFile2 : " + uploadFile2);

			ArrayList<FileVO> fileList = new ArrayList<FileVO>();
			int result = 0;

			// 들어온 파일이 없으면 안돌아갈 것이다.
			for (int i = originFiles.size() - 1; i >= 0; i--) {
				FileVO file = new FileVO();
				file.setFilePath(savePath);
				file.setOriginName(originFiles.get(i));
				file.setChangeName(saveFiles.get(i));
				file.setbBoardNo(no);
				
				String extension3 = file.getOriginName().substring(file.getOriginName().length() - 3);
				String extension4 = file.getOriginName().substring(file.getOriginName().length() - 4);

				// 파일 하나일때
				if (i == originFiles.size() - 1 && (extension3.equals("jpg") || extension3.equals("JPG")
						|| extension4.equals("jpeg") || extension4.equals("JPEG") || extension3.equals("png")
						|| extension3.equals("PNG") || extension3.equals("gif") || extension3.equals("GIF")
						|| extension3.equals("bmp") || extension3.equals("BMP"))) {
					file.setFileLevel(0);
					System.out.println("file.getOriginName : " + file.getOriginName());
					System.out.println("file.getOriginName().substring(file.getOriginName().length()-3) : "
							+ file.getOriginName().substring(file.getOriginName().length() - 3));

				// 파일 여러개 일때
				} else if (extension3.equals("jpg") || extension3.equals("JPG") || extension4.equals("jpeg")
						|| extension4.equals("JPEG") || extension3.equals("png") || extension3.equals("PNG")
						|| extension3.equals("gif") || extension3.equals("GIF") || extension3.equals("bmp")
						|| extension3.equals("BMP")) {
					file.setFileLevel(0);
				
				// 이미지 파일 x 첨부파일일때
				} else {
					file.setFileLevel(1);
					System.out.println("file.getOriginName : " + file.getOriginName());
					System.out.println("file.getOriginName().substring(file.getOriginName().length()-3) : "
							+ file.getOriginName().substring(file.getOriginName().length() - 3));
				}

				fileList.add(file);
			}
			
			// 글만 수정할때
			if(fileList.isEmpty()) {
				result = new NoticeService().modifyBoard(b, fileList);
			
			// 첨부파일 추가할때
			} else {
				System.out.println("파일 건드렸는데 롤백되었나?.");
				result = new NoticeService().AddFile(b, fileList);
				result = new NoticeService().modifyBoard(b, fileList);
			}
			
			String page = "";
			if(result > 0) {
				response.sendRedirect("detail.no?bId="+no);
			} else {
				for(int i = 0; i<saveFiles.size(); i++) {
					File failedFile = new File(savePath + saveFiles.get(i));
					failedFile.delete();
				}				
				request.setAttribute("msg", "공지사항 수정에 실패하였습니다.");
				RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/Common/errorPage.jsp");
				view.forward(request, response);
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
