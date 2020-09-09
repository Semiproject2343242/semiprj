<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	Board b = (Board)request.getAttribute("board");
	System.out.println("자유게시판.jsp에서의 board : " + b);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정부 지원금 바로 지금</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/공지사항내용확인.css">

    <style>
    section{
  	width: 60%;
  	}
   	#filetext{
	margin-top : 220px;
  	}
    </style>
</head>
<body>
    <%@ include file="../Common/header.jsp" %>
    <section>
      <aside>
        <h2><%= b.getBoardNo() %></h2>
        <hr />
        <h2>제목</h2>
        <h2>카테고리</h2>
        <h2 id="content">내용</h2>
        <h2 id="filetext">첨부파일</h2>
      </aside>
        <div id="main_section">
            <form action="modifyForm.qa" id="detailForm" name="detailForm">
	        <input type="hidden" size="50" name="no" value="<%= b.getBoardNo() %>">
	        <input type="hidden" size="50" name="WriterNo" value="<%= b.getBoardWriterNo()%>">
	        <h2 align="center">자유 게시판</h2>
	        <hr />
	        <h2>
		        <input type="hidden" name="title" value="<%= b.getBoardTitle() %>" />
		        <%= b.getBoardTitle() %>
	        </h2>
	        <h2>
	        	<table>
	        		<tr>
	        			<td style="width: 60%">
		        			<input type="hidden" name=category value="자유" />
				        	자유
	        			</td>
	        			
	        			<td>
				        	등록 날짜
	        			</td>
	        			<td>
				        	<%= b.getBoardModifyDate() %>
							<input type="hidden" name="date" value="<%= b.getBoardCreateDate()%>">
	        			</td>
	        		</tr>
	        	</table>
	        </h2>
	        <h2>
		        <textarea cols="100" rows="15" name="content" style="resize:none;" readonly><%= b.getBoardContent() %></textarea>
	        </h2>
	        <h2>
	        	<input type="file" id="file" disabled>
	        </h2>
	        <hr />
	        <div align="right">
				<% if(b.getBoardWriter().equals(loginUser.getMemberNickName()) && loginUser != null) { %>
					<input type="submit" id="updateBtn" value="수정">
					<input type="button" id="deleteBtn" value="삭제" onclick="deleteBoard();">
				<% } %>
				<input type="button" onclick="location.href='<%= request.getContextPath() %>/fmain.cm'" id="menuBtn" value="메뉴로">
				<script>
				function deleteBoard(){
					var num = <%= b.getBoardNo() %>;
					var result = window.confirm(num+'삭제?');
					var wno = <%= b.getBoardWriterNo()%>;
					console.log(wno);
				    if(result){
				    	location.href="<%= request.getContextPath() %>/delete.qa?no="+num;
				    }
				    else{
				        alert('취소하셨습니다.');
				    }
				}
		</script>
			</div>
		</form>
        </div>
       </section>
        <%@ include file="../Common/footer.jsp" %>
</body>
</html>

