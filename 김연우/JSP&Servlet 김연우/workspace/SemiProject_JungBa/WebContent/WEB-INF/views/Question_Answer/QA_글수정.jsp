<%@page import="oracle.net.aso.*"%>
<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board b = (Board)request.getAttribute("board"); 
	System.out.println("QA_글수정 에서의 Board : " + b);	


	String categoryStr = b.getCgName();
	String[] category = new String[6];
	String[] splitStr = categoryStr.split(",");
	for(int i = 0; i < splitStr.length; i++){
		switch(splitStr[i]){
		case "이용관련" : category[0] = "selected"; break; 
		case "회원관련" : category[1] = "selected"; break; 
		case "게시글등록" : category[2] = "selected"; break; 
		case "이벤트" : category[3] = "selected"; break; 
		case "신고" : category[4] = "selected"; break; 
		case "기타" : category[5] = "selected"; break; 
	}
}
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>정부지원금 바로지금</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
  </head>
  <style>
  #filetext{
  		margin-top : 220px;
  	}
  </style>
  <body>
    <%@ include file="../Common/header.jsp" %>
    <section>
      <aside>
        <h2>묻고답하기</h2>
        <hr />
        <h2>제목</h2>
        <h2>카테고리</h2>
        <h2>내용</h2>
        <h2 id="filetext">첨부파일</h2>
      </aside>
      <div id="main_section">
	      <form action="<%= request.getContextPath() %>/modify.qa" method="post">
			<h2>질문하기</h2>
			<input type="hidden" size="50" name="no" value="<%= b.getBoardNo() %>">
			<hr />
			<h2>
			<input type="text" size="50" name="title" value="<%= b.getBoardTitle() %>">
			</h2>
			<h2>
			  <select name="category">
				<option value="이용관련" <%= category[0] %>>이용관련</option>
				<option value="회원관련" <%= category[1] %>>회원관련</option>
				<option value="게시글등록" <%= category[2] %>>게시글</option>
				<option value="이벤트" <%= category[3] %>>이벤트</option>
				<option value="신고" <%= category[4] %>>신고</option>
				<option value="기타" <%= category[5] %>>기타</option>
			  </select>
			</h2>
			<h2><textarea id="textarea" name="content" cols="100" rows="15" style="resize:none;"><%= b.getBoardContent() %></textarea></h2>
			<h2><input type="file" name="file" /></h2>
			<hr />
			<h2>
			  <div align="right">
               <input type="submit" id="insertNoBtn" value="등록">
               <input type="button" onclick="location.href='javascript:history.go(-1);'" id="cancelBtn" value="취소">
            </div>
			</h2>
	       </form>
      </div>
    </section>
    <%@ include file="../Common/footer.jsp" %>
  </body>
</html>
