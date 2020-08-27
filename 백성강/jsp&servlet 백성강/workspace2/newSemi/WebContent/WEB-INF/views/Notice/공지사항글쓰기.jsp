<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.model.vo.PageInfo"%>
<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정부지원금 바로지금</title> 
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/side.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/공지사항글쓰기.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
</head>
<style></style>

<body>
	<%@ include file="../Common/header.jsp" %>
     <section>
        <aside>
            <a href="#"><h2>NO.01</h2></a>
            <hr>
            <a href="#"><h2>제목</h2></a>
            <a href="#"><h2>카테고리</h2></a>
            <a href="#"><h2>내용</h2></a>
            <br><br><br><br><br><br>
            <a href="#"><h2>첨부파일</h2></a>
        </aside>
        
        <div id="main_section">
            <h2 style="text-align: center;" >공지사항 제목</h2>
            
            <input type="text" id="text1" placeholder="제목을 입력해주세요."><br clear="all"> 
            <select id="select1">
                <option value="필독">필독</option>
                <option value="공지">공지</option>
            </select>
            <textarea id="textarea" placeholder="내용을 입력해주세요."></textarea><br>
            <input type="file" id="file"><br>
            <div id="buttons1">
                <button id="button1">등록</button>
                <button id="button2">취소</button>
            </div>
        </div>
       </section>
		<br>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>