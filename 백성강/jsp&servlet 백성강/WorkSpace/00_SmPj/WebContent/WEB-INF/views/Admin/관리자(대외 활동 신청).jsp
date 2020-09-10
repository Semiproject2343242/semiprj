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
    <title>정부 지원금 바로 지금</title>
    
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />

</head>
<style>
    #bottomContent {
        margin-top: 30px;
    }

    #infoTable {
        width: 80%;
        border: 1px solid black;
        border-collapse: collapse;

    }

    #infoTable th {
        background-color: whitesmoke;
        border: 1px solid black;
    }

    #infoTable td {
        border: 1px solid black;
        text-align: center;
    }
</style>

<body>
    <%@ include file="../Common/header.jsp" %>
    <section>
        <aside>
            <h2><a href="${pageContext.request.contextPath}/adminPage.ad">
            	관리자
            </h2></a>
            <hr>
            <div>
                <dl>
                    <dt><a href="${pageContext.request.contextPath}/memList.ad">
                            <h3>회원 목록 조회</h3>
                        </a></dt>
                    <dt><a href="${pageContext.request.contextPath}/spList.ad">
                            <h3>지원 정책 신청</h3>
                        </a></dt>
                    <dt><a href="${pageContext.request.contextPath}/eaList.ad">
                            <h3>대외 활동 신청</h3>
                        </a></dt>
                </dl>
            </div>
        </aside>

        <div id="main_section" align="center">
            <h2>
                <div id="subTitle"><b>대외 활동 신청</b></div>
            </h2>
            <hr>
            <div id="bottomContent">
            	<form action = "<%= request.getContextPath() %>/searchExternal.ad">
                <div id="searchDiv">
                    <select name="opt">
                    	<option value="전체">전체 목록</option>
                        <option value="승인 대기">승인 대기</option>
                        <option value="승인 완료">승인 완료</option>
                    </select>
                    <button type="submit">검색</button>
                </div>
                </form>
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
								<td colspan="7">글이 존재 하지 않습니다.</td>
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
								<td><input id="enroll" type="hidden" value="<%=b.getEnrollState()%>">
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
    <script>
	    $(function(){
	    	<%if(!list.isEmpty()){%> 
	        	$('tbody td').mouseenter(function(){
	            	$(this).parent().css({'background':'darkgray', 'cursor':'pointer'});
	            }).mouseout(function(){
	            	$(this).parent().css('background', 'none');
	            }).click(function(){
	                var bId = $(this).parent().children().children('input').val();
	                var enroll = $(this).parent().children().children('#enroll').val();
	            		if(enroll == 'N'){
	            			location.href = '<%= request.getContextPath() %>/eaDetail.cm?bId=' + bId;
	            		} else {
	            			location.href = '<%= request.getContextPath() %>/detail.ea?bId=' + bId;
	            		}        		
	         });
	         <% } %>
		});
    </script>
    </section>
    <%@ include file="../Common/footer.jsp" %>
</body>

</html>