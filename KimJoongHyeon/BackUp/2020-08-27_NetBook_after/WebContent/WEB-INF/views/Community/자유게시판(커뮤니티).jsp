<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자유게시판</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">

</head>
<style>
    
</style>
<body>
   <%@ include file="../Common/header.jsp" %>
    <section>
         <aside>
           <h2 ><a href="<%= request.getContextPath() %>/main.cm">커뮤니티</h2></a>
            <hr>
            <div>
            <dl>
             	<dt><a href="<%= request.getContextPath() %>/fMain.cm"><h3>자유게시판</h3></a></dt>
                <dt><a href="<%= request.getContextPath() %>/spMain.cm"><h3>지원정책 게시판</h3></a></dt>
                <dt><a href="<%= request.getContextPath() %>/eaMain.cm"><h3>대외활동 게시판</h3></a></dt>
               
            </dl>
            </div>
        </aside>
        <div id="main_section">
            <h2 align="center">자유 게시판</h2>
            <table class="contentsTable" width="800px" align="center">
                <thead>
                    <tr>
                        <th width= "50px">번호</th>
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
	                    <button onclick="location.href='<%= request.getContextPath()  %>/mainForm.qa'">글쓰기</button>
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



 