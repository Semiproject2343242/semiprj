<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.ArrayList, board.model.vo.Board" %>
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
    <table class="table"  width="800px" align="center">
    	<caption>
    		<div align = "right">
    			<select>
       				 <option value= "5pc" >5개씩 보기</option>
        			 <option value= "10pc">10개씩 보기</option>
    			</select>
    		    <a href="<%= request.getContextPath() %>/main.no">글쓰기</a>
    		</div>
    	</caption>
        <thead>
        <tr id = "b-main">
            <th width= "30px">번호</th>
            <th width= "400px">제목</th>
            <th width= "50px">작성자</th>
            <th width= "100px">날짜</th>
            <th width= "40px">조회</th>
            <th width= "40px">추천</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><a href>공지사항1</a></td>
            <td>구준표</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>

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




 



 