<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Member member = (Member)request.getAttribute("member");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지(메인)</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
</head>
<style>
.box {
	width: 200px;
	height: 200px;
	border-radius: 70%;
	overflow: hidden;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.board_area {
	display: flex;
	justify-content: center;
}

.board_box {
	padding: 0px;
	padding-top: 24px;
	margin: 10px;
	width: 40%;
	line-height: 30px;
}

.board_box a {
	/* text-decoration: none; */
	float: left;
	/* color: white; */
}

.board_box a:hover {
	color: black;
	font-weight: bold;
}
/* .my_util_area li:hover {
	font-weight: bold;
	} */
.box_title {
	display: flex;
	align-items: center;
	padding-left: 20px;
	margin-bottom: 0px;
	height: 40px;
	background-color: rgb(15, 76, 130);
	border-radius: 7px;
}

.box_title h3 {
	color: white;
}
</style>

<body>
	<%@ include file="../Common/header.jsp"%>
	<section>
		<aside>
			<h2>마이페이지</h2>
			<hr>
			<div>
				<h2>나의게시물</h2>
				<dl>
					<dt>
						<a href="${pageContext.request.contextPath}/myPageSupport.me">
							<h3>지원정책 게시판</h3>
						</a>
					</dt>
					<dt>
						<a href="${pageContext.request.contextPath}/myPageExternal.me">
							<h3>대외활동 게시판</h3>
						</a>
					</dt>
					<dt>
						<a href="${pageContext.request.contextPath}/myPageCommuFree.me">
							<h3>자유게시판</h3>
						</a>
					</dt>
					<dt>
						<a href="${pageContext.request.contextPath}/myPageQA.me">
							<h3>Q / A</h3>
						</a>
					</dt>
				</dl>
			</div>		
			<a href="${pageContext.request.contextPath}/memberInfo.me">
				<h2>회원정보</h2>
			</a>
			<a href="${pageContext.request.contextPath}/deleteForm.me">
				<h2>회원탈퇴</h2>
			</a>
		</aside>

		<div id="main_section" align="center">
			<div class="box" style="background: #BDBDBD;">
				<img class="profile" src="${pageContext.request.contextPath}/Media/Music2.jpg">
			</div>
			<input type="button" value="Edit">

			<div class="my_board">
				<h1 align='left'>내가 쓴 글</h1>
				<hr>
				<div class="board_area">
					<div class="board_box">
						<div class="box_title">
							<a href="#"><h3>지원정책</h3></a>
						</div>
						<ol>
							<li><a href="#" class="area_title">지원정책 최신글1</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">지원정책 최신글2</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">지원정책 최신글3</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">지원정책 최신글4</a>
								<div>날짜</div></li>
						</ol>
					</div>

					<div class="board_box">
						<div class="box_title">
							<a href="#"><h3>대외활동</h3></a>
						</div>
						<ol>
							<li><a href="#" class="area_title">대외활동 최신글1</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">대외활동 최신글2</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">대외활동 최신글3</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">대외활동 최신글4</a>
								<div>날짜</div></li>
						</ol>
					</div>
				</div>
				<div class="board_area">
					<div class="board_box">
						<div class="box_title">
							<a href="#"><h3>자유게시판</h3></a>
						</div>
						<ol>
							<li><a href="#" class="area_title">자유게시판 최신글1</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">자유게시판 최신글2</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">자유게시판 최신글3</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">자유게시판 최신글4</a>
								<div>날짜</div></li>
						</ol>
					</div>

					<div class="board_box">
						<div class="box_title">
							<a href="#"><h3>Q/A</h3></a>
						</div>
						<ol>
							<li><a href="#" class="area_title">Q/A 최신글1</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">Q/A 최신글2</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">Q/A 최신글3</a>
								<div>날짜</div></li>
							<li><a href="#" class="area_title">Q/A 최신글4</a>
								<div>날짜</div></li>
						</ol>
					</div>
				</div>
			</div>
		</div>

	</section>

	<%@ include file="../Common/footer.jsp"%>
</body>

</html>