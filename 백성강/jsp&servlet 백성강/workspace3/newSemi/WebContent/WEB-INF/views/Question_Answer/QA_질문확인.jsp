<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	Board b = (Board)request.getAttribute("board");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Q&A 질문확인창</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
  </head>
  <style>
  section{
  	width: 60%;
  }
  	#filetext{
  		margin-top : 220px;
  	}
  </style>
  <body>
    <%@ include file="../Common/header.jsp" %>
    <section>
      <aside>
        <h2><br></h2>
        <hr />
        <h2>제목</h2>
        <h2>카테고리</h2>
        <h2 id="content">내용</h2>
        <h2 id="filetext">첨부파일</h2>
      </aside>
      <div id="main_section">
        <h2 align="center">묻고 답하기</h2>
        <hr />
        <h2><input type="hidden" id="title" value="<%= b.getBoardTitle() %>" /><%= b.getBoardTitle() %></h2>
        <h2>
        <input type="hidden" id="title" value="<%= b.getCgName() %>" /><%= b.getCgName() %>
        </h2>
        <h2><textarea cols="60" rows="15" name="content" style="resize:none;" readonly><%= b.getBoardContent() %></textarea></h2>
        <h2><input type="file" id="file" disabled></h2>
        <hr />
        <div align="center">
			<% if(b.getBoardWriter().equals(loginUser.getMemberNickName()) && loginUser != null) { %>
				<input type="submit" id="updateBtn" value="수정">
				<input type="button" id="deleteBtn" value="삭제" onclick="deleteBoard();">
			<% } %>
			<input type="button" onclick="location.href='<%= request.getContextPath() %>/main.qa'" id="menuBtn" value="메뉴로">
		</div>
      </div>
    </section>
    <%@ include file="../Common/footer.jsp" %>
  </body>
</html>
