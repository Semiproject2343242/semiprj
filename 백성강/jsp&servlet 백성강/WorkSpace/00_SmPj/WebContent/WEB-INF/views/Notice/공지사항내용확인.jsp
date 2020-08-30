<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	Board b = (Board)request.getAttribute("board");
	System.out.println("공지사항내용확인.jsp에서의 board : " + b);
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
            <div id="contents">
                <!-- <h2 id="h21" >NO.01</h1> -->
                <!-- 넘버  -->
                <h2 id="h21" name="no" ><%= b.getBoardNo() %> </h1>
                <h2 id="h22">공지사항</h2>
                <hr>
                <!--카테고리  -->
                <h1 style="text-align: center" > <span id="span1" name="category" ><%= b.getCgName() %></span> <span name="title"> <%= b.getBoardTitle() %></span></h1>
                <br>
                <!--사용자이름 -->
                <text id="text1" name="WriterNo" > <%= b.getBoardWriterNo()%> <br><%= b.getBoardModifyDate() %> 조회수 1 댓글 2</text>
                <br>
                <div id="buttons">
                	<% if(b.getBoardWriter().equals(loginUser.getMemberNickName()) && loginUser != null) { %>
						<input type="submit" id="updateBtn" value="수정">
						<input type="button" id="deleteBtn" value="삭제" onclick="deleteBoard();">
					<% } %>
					<input type="button" onclick="location.href='<%= request.getContextPath() %>/main.no'" id="menuBtn" value="메뉴로">
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
                    <text id="text2" name="date"> <%= b.getBoardContent() %> </text>
                    <br>
                    <div style="text-align: center">
                        <img src="img/1.PNG" id="img" ><!-- contents 부분의 크기를 조정하자-->
                    </div>
                    <h2>참고자료 (1) </h2> <!-- 참고자료 링크를 어떻게 넣어야할지..-->
                    <input type="file" id="ea_write_file"><br><br>

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

