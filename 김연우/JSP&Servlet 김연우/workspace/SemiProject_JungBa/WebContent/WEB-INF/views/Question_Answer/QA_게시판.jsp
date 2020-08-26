<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); %>
    
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
                    <select>
                        <option value= "5pc" >5개씩 보기</option>
                        <option value= "10pc">10개씩 보기</option>
                    </select>
                    <button>글쓰기</button>
                    </div>
                </caption>
                <thead>
                    <tr id = "b-main">
                        <th width= "30px">번호</th>
                        <th width= "100px">카테고리</th>
                        <th width= "400px">제목</th>
                        <th width= "50px">작성자</th>
                        <th width= "100px">날짜</th>
                        <th width= "40px">조회</th>
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
            
            <ul align="center">
            <div class = "pagination">
                <a href="#" title = "이전" class="pre"></a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#" title = "다음" class="next"></a>
            </div>
            </ul>
            </caption>
        </div>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 