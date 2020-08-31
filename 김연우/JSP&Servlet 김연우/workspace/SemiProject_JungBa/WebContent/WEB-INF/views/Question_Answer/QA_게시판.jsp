<%@page import="board.model.vo.FileVO"%>
<%@page import="board.model.vo.PageInfo"%>
<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	
	//////////////// FILE 테스트 /////////////////
	ArrayList<FileVO> fList = (ArrayList<FileVO>)request.getAttribute("fList");
	////////////////////////////////////////////
%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Q&A 게시판</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
</head>
<style>
    
</style>
<body>
    <%@ include file="../Common/header.jsp" %>
    <section>
        <aside>
           <h2>묻고 답하기</h2>
            <hr>
            <dl>
               <dt>
                    <a href="<%=request.getContextPath()%>/main.fa"><h3>FAQ</h3></a>
                </dt>
                <dt>
                    <a href="<%=request.getContextPath()%>/main.qa"><h3>Q/A</h3></a>
                </dt>
            </dl>
        </aside>
        <div id="main_section">
            <h2 align="center">Q/A</h2>
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
            	<%	for(int i = 0; i < fList.size(); i++){ %>
            		<% Board b = list.get(i); %>
          	<tr>
          		<td>
          			<input type="hidden" value="<%= b.getBoardNo() %>">
          			<% for(int j = 0; j < fList.size(); j++){ %>
						<% FileVO f = fList.get(i); %>
							<% if(b.getBoardNo() == f.getBoardNo()){ %>
								<img src="<%= request.getContextPath() %>/thumbnail_uploadFiles/<%= f.getChangeName() %>" width="200px" height="150px">
						<% } %>
					<% } %>	
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
	                    <% if(loginUser != null){ %>
						<button onclick="location.href='<%= request.getContextPath()  %>/insertForm.qa'">글쓰기</button>
						<% } %>
	                </td>
	                </tr>
                </tfoot>
            </table>
 		<%@ include file="../Common/page.jsp" %>
		</div>
        <script>
        $(function(){
        	<%if(!list.isEmpty()){%> 
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
	        <% } %>
         })
      </script>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 