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
    <title>마이페이지 내가 쓴 글(자유게시판)</title>
    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 

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
                <div id="subTitle"><b>내가 쓴 글 - 자유게시판</b></div>
            </h2>
            <hr>
            <div id="bottomContent">
                <div id="tableDiv">
                	<table class="contentsTable" width="800px" align="center">
	                	<thead>
	                        <tr>
	                            <th>번호</th>
	                            <th>제목</th>
	                            <th>작성자</th>
	                            <th>게시 날짜</th>
	                            <th>조회수</th>
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
								<td><input type="hidden" value="<%=b.getBoardWriterNo()%>">
									<%=b.getBoardWriter()%></td>
								<td><%=b.getBoardCreateDate()%></td>
								<td><%=b.getBoardViewCount()%></td>
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
    <script>
	    $(function(){
	    	<%if(!list.isEmpty()){%> 
	        	$('tbody td').mouseenter(function(){
	            	$(this).parent().css({'background':'darkgray', 'cursor':'pointer'});
	            }).mouseout(function(){
	            	$(this).parent().css('background', 'none');
	            }).click(function(){
	                var bId = $(this).parent().children().children('input').val();
	            <% if(loginUser != null){%>
	            		location.href = '<%= request.getContextPath() %>/fDetail.cm?bId=' + bId;
	            <% }else{ %>
	            		alert('회원만 이용할 수 있는 서비스입니다.')
	            <% } %>
	         });
	         <% } %>
		});
    </script>
</body>
</html>