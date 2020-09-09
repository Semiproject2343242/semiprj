<%@page import="java.util.ArrayList"%>
<%@page import="board.model.vo.FileVO"%>
<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	Board b = (Board)request.getAttribute("board");
	System.out.println("공지사항내용확인.jsp에서의 board : " + b);
	ArrayList<FileVO> fileList = (ArrayList<FileVO>)request.getAttribute("fileList");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정부지원금 바로지금</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/공지사항내용확인.css">

    <style>
    </style>
</head>
<body>
    <%@ include file="../Common/header.jsp" %>
        <div id="main_section">
			<form action="modifyForm.no" id="detailForm" name="detailForm">
			
			<input type="hidden" name="no" value="<%= b.getBoardNo() %>">
	        <input type="hidden" name="WriterNo" value="<%= b.getBoardWriterNo()%>">
	        <input type="hidden" name="category" value="<%= b.getCgName() %>" />
	        <input type="hidden" name="title"  value="<%= b.getBoardTitle() %>" />
	        
            <div id="contents">
                <!-- <h2 id="h21" >NO.01</h1> -->
                <!-- 넘버  -->
                <h2 id="h21"> NO. <%= b.getBoardNo() %> </h2>
                <h2 id="h22">공지사항</h2>
                <hr>
                <!--카테고리  -->
                <h1 style= "text-align: center" > 
                	<span id="span1">[<%= b.getCgName() %>]</span>  	
                	<span> <%= b.getBoardTitle() %></span> 	
                </h1>
                <br>
                <!--사용자이름 -->	
                <text style="float:left">
	                	<h3> <%= b.getBoardWriter() %> </h3>
	                	<h3> <%= b.getBoardModifyDate() %> </h3>
                </text>
                <br>
                <div id="buttons">
                	<br><br>
                	<% if(b.getBoardWriter().equals(loginUser.getMemberNickName()) && loginUser != null) { %>
						<input type="submit" style="font-size:130%" id="updateBtn" value="수정">
						<input type="button" style="font-size:130%" id="deleteBtn" value="삭제" onclick="deleteBoard();">
					<% } %>
					<input type="button" style="font-size:130%" onclick="location.href='<%= request.getContextPath() %>/main.no'" id="menuBtn" value="메뉴로">
					<script>
						function deleteBoard(){
							var num = <%= b.getBoardNo() %>; 
							var result = window.confirm(num+' 을/를 삭제하시겠습니까?');
							var wno = <%= b.getBoardWriterNo()%>;
							console.log(wno);
						    if(result){
						    	location.href="<%= request.getContextPath() %>/delete.no?no="+num;
						    }
						    else{
						        alert('취소하셨습니다.');
						    }
						}
					</script>
                </div>
                <br clear="all"> 
                <br>   
                <hr>
                <div id="div1">
                    <br>
                    	<textarea cols="125" rows="40" name="content" style="resize:none; font-size:130%; border:none " readonly><%= b.getBoardContent() %></textarea>
                    	<div style="text-align: center">
                        	<img src="img/1.PNG" id="img" ><!-- contents 부분의 크기를 조정하자-->
                    	</div>
                    <br>

                    <h2> 참고자료 (<%= fileList.size() %>) </h2> <!-- 참고자료 링크를 어떻게 넣어야할지..-->
                    <%if(fileList.isEmpty()) { %>
                    	첨부파일 없음.
                    <% } else { %>
                    	<%for(int i=0; i < fileList.size(); i++){ %>
							<a href="<%= request.getContextPath() %>/UploadFolder/notice_uploadFiles/<%=fileList.get(i).getChangeName()%>" download="<%= fileList.get(i).getOriginName() %>">
								<%=fileList.get(i).getOriginName()%>
							</a><br>
						<% } %>
					<% } %>
                    <!-- 댓글 --> 

                    <div> <h2>댓글</h2> </div>
                    <hr><br>

                    <div id="comment">
                        <img src="example/1.PNG" id="img1">
                        <text id="text3"> 백성강 <p id="p1">댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.
                            댓글입니다.댓글입니다.댓글입니다.댓글입니다.</p>
                        </text>
                        <text id="text4">
                            <a href> 답글 </a> <a href> 삭제 </a> <a href> 수정 </a>
                            <!-- 관리자랑 사용자랑 나눠서 사용해야한다. -->
                            <br><%= b.getBoardModifyDate() %> <!-- 날짜 -->
                        </text>
                    </div>
        
                    <br clear="all"><br>    
                    <div>
                        <textarea id="textarea" placeholder="댓글을 입력하세요."></textarea><br>
                        <button id=button4>등록</button>
                    </div>
                </div>
            </div>
          </form>
        </div>
        <br clear="all"><br>
        <%@ include file="../Common/footer.jsp" %>
</body>
</html>

