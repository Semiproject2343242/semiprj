<%@page import="board.model.vo.FileVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="oracle.net.aso.*"%>
<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board b = (Board)request.getAttribute("board"); 
	System.out.println("공지사항글수정 에서의 Board : " + b);	
	ArrayList<FileVO> imageList = (ArrayList<FileVO>)request.getAttribute("imgaeList");
	ArrayList<FileVO> fileList = (ArrayList<FileVO>)request.getAttribute("fileList");
	
	String categoryStr = b.getCgName();
	String[] category = new String[2];
	String[] splitStr = categoryStr.split(",");
	for(int i = 0; i < splitStr.length; i++){
		switch(splitStr[i]){
		case "필독" : category[0] = "selected"; break; 
		case "공지" : category[1] = "selected"; break; 
	}
} 
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정부지원금 바로지금1</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/side.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/공지사항글쓰기.css"/>

    <script src="../resources/js/slides.js"></script>

    <style>
    </style>
</head>
  
<body>
	<%@ include file="../Common/header.jsp" %>
     <section>
        <aside>		   
		   <h2>NO.1<%= b.getBoardNo() %></h2>
		   <hr>
           <h2>제목</h2>
           <h2>카테고리</h2>
           <h2>내용</h2>
           <br><br><br><br><br><br>
           <h2>현재 첨부파일</h2>
           <h2>첨부파일 수정</h2>
           <h2>첨부파일 추가</h2>
        </aside>
        <div id="main_section">
  		
        
            <form action="<%= request.getContextPath() %>/modify.no" method="post" encType="multipart/form-data">
            	<input type="hidden" name="no" value="<%= b.getBoardNo() %>">
            	
            	<h2 style="text-align: center;">공지사항 수정하기</h2> <hr>
            
           	 	<input type="text" id="text1" name="title" value="<%= b.getBoardTitle() %>">
           	 	
           	 	<br clear="all"> 
           	 	
            	<select id="select1" name="category" >
               	 	<option value="필독" <%= category[0] %>>필독</option>
                	<option value="공지"<%= category[1] %>>공지</option>
            	</select>
            	
            	<textarea id="textarea" name="content" style="resize:none; "> <%= b.getBoardContent() %></textarea><br>
            	
            	<div id="fileArea">
					<input type="file" id="file1" multiple="multiple" name="file1">
					<input type="file" id="file2" multiple="multiple" name="file2">
					<input type="file" id="file3" multiple="multiple" name="file3">
				</div>
            	
            	<div id="buttons1">
                	<input type="submit" id="insertNoBtn" value="등록">
                	<input type="button" onclick="location.href='javascript:history.go(-1);'" id="cancelBtn" value="취소">
            	</div>
            </form>
        </div>
       </section>
		<br>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>