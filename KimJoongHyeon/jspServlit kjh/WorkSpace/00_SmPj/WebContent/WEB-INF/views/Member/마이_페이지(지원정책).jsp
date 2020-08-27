<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member = (Member)request.getAttribute("member");
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>마이페이지 내가 쓴 글(지원정책)</title>
    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">

</head>
<style>
    #bottomContent {
        margin-top: 30px;
    }
</style>

<body>
    <%@ include file="../Common/header.jsp" %>
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
            <h2>
                <div id="subTitle"><b>내가 쓴 글 - 지원정책</b></div>
            </h2>
            <hr>
            <div id="bottomContent">
                <div id="searchDiv">
                    <select id="selectedOption">
                        <option>승인 대기</option>
                        <option>승인 완료</option>
                    </select>
                    <input id="search" type="search">
                    <button type="submit">검색</button>
                </div>
                <div id="tableDiv">
                	<table class="contentsTable" width="800px" align="center">
	                	<thead>
	                        <tr>
	                            <th>번호</th>
	                            <th>제목</th>
	                            <th>카테고리</th>
	                            <th>작성자</th>
	                            <th>게시 날짜</th>
	                            <th>조회수</th>
	                            <th>승인상태</th>
	                        </tr>
	            		</thead>
	            		<tbody>
							<% if(list.isEmpty()){ %>
							<tr>
								<td colspan="6">글이 존재 하지 않습니다.</td>
							</tr>
						<% } else { %>
						<%		for (Board b : list) { %>
							<tr>
								<td><input type="hidden" value="<%=b.getBoardNo()%>">
									<%=b.getBoardNo()%></td>
								<td><%=b.getBoardTitle()%></td>
								<td><%=b.getCgName() %></td>
								<td><input type="hidden" value="<%=b.getBoardWriterNo()%>">
									<%=b.getBoardWriter()%></td>
								<td><%=b.getBoardCreateDate()%></td>
								<td><%=b.getBoardViewCount()%></td>
								<td><input type="hidden" value="<%=b.getEnrollState()%>">
									<%=b.getEnrollState()%></td>
							</tr>
						<%		} %>
						<%	} %>
						</tbody>
                    </table>
                    <%@ include file="../Common/page.jsp" %>
                </div>
            </div>
        </div>


    </section>
    <%@ include file="../Common/footer.jsp" %>
</body>

</html>