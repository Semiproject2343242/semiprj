<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Layout01</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
</head>
<style>
    
</style>
<body>
	 <%@ include file="../Common/header.jsp" %>
    <h2 id="게시판이름">공지사항게시판</h2>
    <table class="table" width="800px" align="center">
    	<caption>
    		    <a style="float:right" , href="<%= request.getContextPath() %>/main.no">글쓰기</a>
    	</caption>
    	<thead>
	        <tr id = "b-main">
	            <th width= "30px">번호</th>
	            <th width= "400px">카테고리</th>
	            <th width= "50px">제목</th>
	            <th width= "100px">작성자</th>
	            <th width= "40px">날짜</th>
	            <th width= "40px">조회</th>
	        </tr>
	    </thead>
	    <tbody>
	    	<% if(list.isEmpty()){ %>
	    <tr>
	    	<td colspan="6">글이 존재 하지 않습니다.</td>
	    </tr>
	   <% } else { %>
       <% for(Board b : list){ %>
        <tr>
          		<td><%= b.getBoardNo() %></td>
          		<td><%= b.getCgName() %></td>
          		<td><%= b.getBoardTitle() %></td>
          		<td><%= b.getBoardWriter() %></td>
          		<td><%= b.getBoardCreateDate()  %></td>
          		<td><%= b.getBoardViewCount()  %></td>
        </tr>
            <% 		} %>
            <% } %>    
        </tbody>
    </table>
    <br>  
    <ul align="center">
    	<div class = "pagination">
       		<a href="#" title = "이전" class="pre"><</a>
        	<a href="#" class="active">1</a>
        	<a href="#">2</a>
        	<a href="#">3</a>
        	<a href="#">4</a>
        	<a href="#">5</a>
        	<a href="#" title = "다음" class="next">></a>
    	</div>
    </ul>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>




 



 