<%@page import="board.model.vo.PageInfo"%>
<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");

	String searchWord = (String)request.getAttribute("searchWord");
	String opt = (String)request.getAttribute("selectedOpt");
	String[] selectedOpt = new String[6];
	
	switch(opt){
		case "all" : selectedOpt[0] = "selected"; break;
		case "writer" : selectedOpt[1] = "selected"; break;
		case "title" : selectedOpt[2] = "selected"; break;
		case "content" : selectedOpt[3] = "selected"; break;
		case "title_content" : selectedOpt[4] = "selected"; break;
		case "category" : selectedOpt[5] = "selected"; break;
	}
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
            <h3 align="center">검색어 : <%= searchWord %></h3>
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
            <% System.out.println(b); %>
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
	                <td colspan="2"></td>
	                <td>
	                <form action = "<%= request.getContextPath() %>/search.qa">
	                	<select name="opt"> <!-- 검색 컬럼 -->
	                		<option value="all" <%= selectedOpt[0] %>>전체 목록</option>
	                		<option value="writer" <%= selectedOpt[1] %>>작성자</option>
	                		<option value="title" <%= selectedOpt[2] %>>제목</option>
	                		<option value="content" <%= selectedOpt[3] %>>내용</option>
	                		<option value="title_content" <%= selectedOpt[4] %>>제목+내용</option>
	                		<option value="category" <%= selectedOpt[5] %>>카테고리</option>
	                	</select>
	                	<input type="text" name="word" value="<%= searchWord %>" placeholder="검색어를 입력하세요">
	           			<button type="submit">검색</button>
	           		</form>
	           		</td>
	           		<td colspan="2"></td>
	                <td>
	                    <% if(loginUser != null){ %>
						<button onclick="location.href='<%= request.getContextPath()  %>/insertForm.qa'">글쓰기</button>
						<% } %>
	                </td>
	                </tr>
                </tfoot>
            </table>
 		<%@ include file="../Common/searchPage.jsp" %>
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
	                  location.href = '<%= request.getContextPath() %>/q_detail.qa?bId=' + bId;
	            })
	        <% } %>
         })
      </script>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 