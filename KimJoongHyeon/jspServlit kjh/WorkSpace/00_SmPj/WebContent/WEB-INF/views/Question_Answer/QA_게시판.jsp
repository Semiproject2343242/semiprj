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
    #b-main{background-color:rgb(15, 76, 130); color:white;}
    tbody{background-color:#F7F7F7}
    .pagingArea button{border-radius: 15px; background: #D5D5D5; margin: 10px;}
	button:hover{cursor: pointer;}
	#numBtn{background: rgb(15, 76, 130); color: white; width: 40px; heigth: 40px;}
	#choosen{background: skyblue; color: white; width: 40px;}
/* 	.paginbtn{padding: 10px;} */
</style>
<body>
    <%@ include file="../Common/header.jsp" %>
     <hr>
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
            <table class="table table-striped"  width="800px" align="center">
                <caption>
                    <div align = "right">
<!--                     <select> -->
<!--                         <option value= "5pc" >5개씩 보기</option> -->
<!--                         <option value= "10pc">10개씩 보기</option> -->
<!--                     </select> -->
                    <button>글쓰기</button>
                    </div>
                </caption>
                <thead>
                    <tr id = "b-main">
                        <th width= "50px">번호</th>
                        <th width= "100px">카테고리</th>
                        <th width= "400px">제목</th>
                        <th width= "100px">작성자</th>
                        <th width= "100px">날짜</th>
                        <th width= "50px">조회</th>
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
            
            <!--  페이징 -->
			<div class="paginArea" align="center">
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
        </div>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 