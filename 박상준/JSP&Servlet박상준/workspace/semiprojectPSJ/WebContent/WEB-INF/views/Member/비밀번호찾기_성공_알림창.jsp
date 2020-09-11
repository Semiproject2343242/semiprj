<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = (String)request.getAttribute("msg");    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	a{border:1px border black;}
</style>
<body>
	<h1 align="center"><%= msg %></h1>
	<div align="center">
		<a href="<%= request.getContextPath() %>">홈으로</a>
	</div>
</body>
</html>