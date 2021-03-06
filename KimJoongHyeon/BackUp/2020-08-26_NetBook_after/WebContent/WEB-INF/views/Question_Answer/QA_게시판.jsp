<%@page import="board.model.vo.PageInfo"%>
<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();	
%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
</head>
<style>
    .pagingArea button{border-radius: 5px; background: #D5D5D5; margin: 1px;}
	button:hover{cursor: pointer;}
	#numBtn{background: rgb(15, 76, 130); color: white; border-radius: 7px; width: 40px; heigth: 40px;}
	#choosen{background: skyblue; color: white; width: 40px; border-radius: 7px;}
</style>
<body>
    <%@ include file="../Common/header.jsp" %>
    <section>
        <aside>
           <h2> 묻고 답하기</h2></a>
            <hr>
            <dl>
                <dt>
                    <a href="<%=request.getContextPath()%>/main.qa"><h3>Q/A</h3></a>
                </dt>
                <dt>
                    <a href="<%=request.getContextPath()%>/main.fa"><h3>FAQ</h3></a>
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
	                    <button onclick="location.href='<%= request.getContextPath()  %>/mainForm.qa'">글쓰기</button>
	                </td>
	                </tr>
                </tfoot>
            </table>
            <!--  페이징 -->
			<div class="pagingArea" align="center">
				<!-- 맨처음으로 -->
				<button class="paginbtn" onclick="location.href='<%= request.getContextPath() %>/main.qa?currentPage=1'">처음</button>
	
				<!-- 이전 페이지로 -->
				<button class="paginbtn" onclick="location.href='<%= request.getContextPath() %>/main.qa?currentPage=<%= currentPage - 1 %>'" id="beforeBtn">이전</button>
				<script>
					if(<%= currentPage %> <=1){
						var before = $('#beforeBtn');
						before.attr('disabled', 'true');
					}
				</script>
				
				<!-- 10개 페이지 목록 -->
				<% for(int p = startPage; p<= endPage; p++){ %>
					<% if(p == currentPage){ %>
					<button id="choosen" disabled><%= p %></button>
					<% } else{ %>
						<button id="numBtn" onclick="location.href='<%= request.getContextPath() %>/main.qa?currentPage=<%= p %>'"><%= p %></button>
					<% } %>
				<% } %>
				
				<!-- 다음 페이지로 -->
				<button class="paginbtn" onclick="location.href='<%= request.getContextPath() %>/main.qa?currentPage=<%= currentPage + 1 %>'" id="afterBtn">다음</buuton>
				<script>
					if(<%= currentPage %> >= <%= maxPage %>){
						var after = $('#afterBtn');
						after.attr('disabled','true');
					}
				</script>
				
				<!-- 맨 끝으로 -->
				<button class="paginbtn" onclick="location.href='<%= request.getContextPath() %>/main.qa?currentPage=<%= maxPage %>'">맨끝</button>
			</div>
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



 