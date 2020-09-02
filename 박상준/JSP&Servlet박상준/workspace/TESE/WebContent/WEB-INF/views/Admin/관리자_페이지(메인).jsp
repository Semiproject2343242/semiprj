<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Board> supportList = (ArrayList<Board>)request.getAttribute("supportList");
	ArrayList<Board> externalList = (ArrayList<Board>)request.getAttribute("externalList");
	ArrayList<Board> commuFreeList = (ArrayList<Board>)request.getAttribute("commuFreeList");
	ArrayList<Board> qaList = (ArrayList<Board>)request.getAttribute("qaList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지(메인)</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 
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
			<h2>관리자</h2>
			<hr>
			<div>
				<h2></h2>
				<dl>
                    <dt><a href="${pageContext.request.contextPath}/memList.ad">
                            <h3>회원 목록 조회</h3>
                        </a></dt>
                    <dt><a href="${pageContext.request.contextPath}/spList.ad">
                            <h3>정보 공유 신청</h3>
                        </a></dt>
                    <dt><a href="${pageContext.request.contextPath}/eaList.ad">
                            <h3>대외 활동 신청</h3>
                        </a></dt>
                </dl>
			</div>		
		</aside>

		<div id="main_section" align="center">
			<div class="box" style="background: #BDBDBD;">
				<img class="profile" src="${pageContext.request.contextPath}/Media/Music2.jpg">
			</div>
			<input type="button" value="Edit">

			<div class="my_board">
				<h1 align='left'>최근 게시글</h1>
				<hr>
				<div class="board_area">
					<div class="board_box">
						<div class="box_title">
							<a href="#"><h3>지원정책</h3></a>
						</div>
						<ol>
						<% if(supportList.isEmpty()) { %>
							<li><a href="#" class="area_title">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : supportList) { %>
								<li>
									<a href="#" class="area_title"><%= b.getBoardTitle() %></a>
									<div><%= b.getBoardCreateDate() %></div>
								</li>
							<% } %>
						<% } %>
						</ol>
					</div>

					<div class="board_box">
						<div class="box_title">
							<a href="#"><h3>대외활동</h3></a>
						</div>
						<ol>
						<% if(supportList.isEmpty()) { %>
							<li><a href="#" class="area_title">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : externalList) { %>
								<li>
									<a href="#" class="area_title"><%= b.getBoardTitle() %></a>
									<div><%= b.getBoardCreateDate() %></div>
								</li>
							<% } %>
						<% } %>
						</ol>
					</div>
				</div>
				
				<div class="board_area">
					<div class="board_box">
						<div class="box_title">
							<a href="#"><h3>자유게시판</h3></a>
						</div>
						<ol>
						<% if(supportList.isEmpty()) { %>
							<li><a href="#" class="area_title">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : commuFreeList) { %>
								<li>
									<a href="#" class="area_title"><%= b.getBoardTitle() %></a>
									<div><%= b.getBoardCreateDate() %></div>
								</li>
							<% } %>
						<% } %>
						</ol>
					</div>

					<div class="board_box">
						<div class="box_title">
							<a href="#"><h3>Q / A</h3></a>
						</div>
						<ol>
						<% if(supportList.isEmpty()) { %>
							<li><a href="#" class="area_title">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : qaList) { %>
								<li>
									<a href="#" class="area_title"><%= b.getBoardTitle() %></a>
									<div><%= b.getBoardCreateDate() %></div>
								</li>
							<% } %>
						<% } %>
						</ol>
					</div>
				</div>
			</div>
		</div>

	</section>

	<%@ include file="../Common/footer.jsp"%>
</body>

</html>