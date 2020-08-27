<%@page import="board.model.vo.PageInfo"%>
<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정부지원금 바로지금</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
</head>
<style>
    
</style>
<body>
	 <%@ include file="../Common/header.jsp" %>
    <section>
        <div id="main_section">
            <h2 align="center">공지사항</h2>
            <table class="contentsTable" width="800px" align="center">
                <thead>
                    <tr>
                        <th width= "50px">번호</th>
                        <th width= "100px">카테고리</th>
                        <th width= "400px">제목</th>
                        <th width= "100px">작성자</th>
                        <th width= "100px">날짜</th>
                        <th width= "60px">조회</th>
                    </tr>
                </thead>
                <tbody>
                  <% if(list.isEmpty()){ %>
	            <tr>
	               <td colspan="6">글이 존재 하지 않습니다.</td>
	            </tr>
            <% } else { %>
            <% 		for(Board b : list){ %>
          	<tr>
          		<td>
          			<input type="hidden" value="<%= b.getBoardNo() %>">
          			<%= b.getBoardNo() %>
          		</td>
          		<td><%= b.getCgName() %></td>
          		<td><%= b.getBoardTitle() %></td>
          		<td><%= b.getBoardWriter() %></td>
          		<td><%= b.getBoardCreateDate()  %></td>
          		<td><%= b.getBoardViewCount()  %></td>
          	</tr>
            <% 		} %>
            <% } %>
                </tbody>
                <tfoot>
	                <tr>
	                <td colspan="5"></td>
	                <td>
	                    <button onclick="location.href='<%= request.getContextPath()  %>/insertForm.no'">글쓰기</button>
	                </td>
	                </tr>
                </tfoot>
            </table>
 		<%@ include file="../Common/page.jsp" %>
		</div>
        <script>
         $(function(){
            $('tbody td').mouseenter(function(){
               $(this).parent().css({'background':'darkgray', 'cursor':'pointer'});
            }).mouseout(function(){
               $(this).parent().css('background', 'none');
            }).click(function(){
               var bId = $(this).parent().children().children('input').val();
               <% if(loginUser != null){%>
                  location.href = '<%= request.getContextPath() %>/q_detail.qa?bId=' + bId;
               <% }else{ %>
                  alert('회원만 이용할 수 있는 서비스입니다.')
               <% } %>
            })
         })
      </script>
    </section>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>




 



 