<%@page import="board.model.vo.FileVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="oracle.net.aso.*"%>
<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board b = (Board)request.getAttribute("board"); 
	System.out.println("자유게시판 글수정 에서의 Board : " + b);	
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
           <h2>내용</h2>
           <br><br><br><br><br><br>
        </aside>
        <div id="main_section">
  		
        
            <form action="<%= request.getContextPath() %>/fmodify.cm" method="post">
            	<input type="hidden" name="no" value="<%= b.getBoardNo() %>">
            	
            	<h2 style="text-align: center;">자유게시판 게시글 수정하기</h2> <hr>
            
           	 	<input type="text" id="text1" name="title" value="<%= b.getBoardTitle() %>">
           	 	
           	 	<br clear="all"> 
           	 	            	
            	<textarea id="textarea" name="content" style="resize:none; "> <%= b.getBoardContent() %></textarea><br>
            	
            	<div id="buttons1">
                	<input type="submit" id="insertNoBtn" value="수정">
                	<input type="button" onclick="location.href='javascript:history.go(-1);'" id="cancelBtn" value="취소">
            	</div>
            </form>
        </div>
       </section>
		<br>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>