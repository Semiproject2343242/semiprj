<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
<style>


#ptag>a{
	text-decoration: none;
}


</style>
</head>
<body>
<%@ include file="../Common/header.jsp" %>

	<section id=loginSection>
		<div>
			<form action="<%=request.getContextPath()%>/login.me">
				<h1 align="center">로그인</h1>
				<table align="center">
					<tr>
						<td><input type="text" id="userId" placeholder="아이디를 입력해주세요"></td>
						<td rowspan="2"><button type="submit" id=loginButton3>로그인</button></td>
					</tr>
					<tr>
						<td><input type="password" id="userPwd" placeholder="비밀번호를 입력해주세요"></td>
					</tr>
				</table>
			</form>
			<p align="center" id="ptag">
				<a href=#>아이디 찾기</a> | <a href=#>비밀번호 찾기</a> | <a href=#>회원가입 찾기</a>
			</p>
		</div>
	</section>

	<hr>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>


