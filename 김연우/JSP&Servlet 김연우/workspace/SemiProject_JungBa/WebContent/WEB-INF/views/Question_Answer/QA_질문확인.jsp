<%@page import="board.model.vo.Reply"%>
<%@page import="board.model.vo.FileVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	Board b = (Board)request.getAttribute("board");
	System.out.println("질문확인.jsp에서의 board : " + b);
	ArrayList<FileVO> imageList = (ArrayList<FileVO>)request.getAttribute("imageList");
	ArrayList<FileVO> fileList = (ArrayList<FileVO>)request.getAttribute("fileList");
	ArrayList<Reply> replyList = (ArrayList<Reply>)request.getAttribute("replyList");
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
  section{
  	width: 60%;
  }
  	#filetext{
  		margin-top : 220px;
  	}
  	.sub1{
  		width: 50%;
		float:left;
  	}
  </style>
  <body>
    <%@ include file="../Common/header.jsp" %>
    <section>
      <aside>
        <h2><%= b.getBoardNo() %></h2>
        <hr />
        <h2>제목</h2>
        <h2>카테고리</h2>
        <h2 id="content">내용</h2>
      </aside>
      <div id="main_section">
      	<form action="modifyForm.qa" id="detailForm" name="detailForm">
	        <input type="hidden" size="50" name="no" value="<%= b.getBoardNo() %>">
	        <input type="hidden" size="50" name="WriterNo" value="<%= b.getBoardWriterNo()%>">
	        <h2 align="center">묻고 답하기</h2>
	        <hr>
       			<input type="hidden" name="title" value="<%= b.getBoardTitle() %>" />
				<input type="hidden" name="writer" value="<%= b.getBoardWriter()%>">
       			<input type="hidden" name=category value="<%= b.getCgName() %>" />

       			<h2><div class="sub1"><%= b.getBoardTitle() %></div><div class="sub2"> <div>작성자 : <%= b.getBoardWriter()%></div></h2>

	        	<h2><div class="sub1"><%= b.getCgName() %></div><div class="sub2">등록 날짜 : <%= b.getBoardModifyDate() %></div><h2>
      			
				<input type="hidden" name="date" value="<%= b.getBoardCreateDate()%>">
	        </h2>
	        <h2>
		        <textarea cols="100" rows="15" name="content" style="resize:none;" readonly><%= b.getBoardContent() %></textarea>
	        </h2>
	        <hr>
	        <div align="right">
				<% if(b.getBoardWriter().equals(loginUser.getMemberNickName()) && loginUser != null) { %>
					<input type="submit" class="btn" id="updateBtn" value="수정">
					<input type="button" class="btn" id="deleteBtn" value="삭제" onclick="deleteBoard();">
				<% } %>
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
        <br clear="all"> 
        <br>   
        <hr>
        <div id="div1">
            <div style="text-align: center">
            <%if(imageList.isEmpty()) {%>
               	이미지 자료 없음.
           	<% } else { %>
           		<%for(int i=0; i < imageList.size(); i++) { %>
           			<a href="<%= request.getContextPath() %>/UploadFolder/QA_uploadFiles/<%=imageList.get(i).getChangeName()%>">
					<img src="<%= request.getContextPath() %>/UploadFolder/QA_uploadFiles/<%= imageList.get(i).getChangeName() %>" width="300px" height="80%">
					</a><br>
				<% } %>
			<% } %>
           	</div>
            <br>

            <h2> 참고자료 (<%= fileList.size() %>) </h2> <!-- 참고자료 링크를 어떻게 넣어야할지..-->
            <%if(fileList.isEmpty()) { %>
              	첨부파일 없음.
            <% } else { %>
               	<%for(int i=0; i < fileList.size(); i++){ %>
					<a href="<%= request.getContextPath() %>/UploadFolder/QA_uploadFiles/<%=fileList.get(i).getChangeName()%>" download="<%= fileList.get(i).getOriginName() %>">
						<%=fileList.get(i).getOriginName()%>
					</a><br>
				<% } %>
			<% } %>
            <!-- 댓글 --> 
	
			<hr>
			<input type="button" class="btn" onclick="location.href='<%= request.getContextPath() %>/main.qa'" id="menuBtn" value="메뉴로">
			
            <div> <h2>댓글</h2> </div>
            <hr><br>

            <div id="comment">
            <% if(replyList.isEmpty()){ %>
               	<text class="text3"><p class="p1">댓글이 없습니다.</p></text>
            <% } else { %>
               	<% for(int i = 0; i < replyList.size(); i++) { %>
              	<img src="<%= request.getContextPath() %>/UploadFolder/member_profile/<%= replyList.get(i).getProfileImageName() %>" id="profile">
               	<text class="text3">
               		<p><%= replyList.get(i).getReplyWriter() %></p>
               		<p><%= replyList.get(i).getReplyContent() %></p>
               	</text>
              	<text class="text4">
              		<p><a href> 답글 </a> <a href> 삭제 </a> <a href> 수정 </a></p>
               		<!-- 관리자랑 사용자랑 나눠서 사용해야한다. -->
               		<p>게시일 : <%= replyList.get(i).getCreateDate() %></p> <!-- 게시 날짜 -->
               		<p>수정일 : <%= replyList.get(i).getModifyDate() %></p> <!-- 수정 날짜 -->
               	</text>
                <% } %>
           	<% } %>
            </div>
        			
            <br clear="all"><br>
                        
            <form action="replyInsert.re">
	            <div>
	                <textarea id="textarea" name="replyContent" placeholder="댓글을 입력하세요."></textarea><br>
	                <input type="hidden" name="boardNo" value="<%= b.getBoardNo() %>">
	                <input type="submit" value="등록">
	            </div>
            </form>
        </div>		
      </div>
    </section>
    <br clear="all"><br>
    <%@ include file="../Common/footer.jsp" %>
  </body>
</html>
