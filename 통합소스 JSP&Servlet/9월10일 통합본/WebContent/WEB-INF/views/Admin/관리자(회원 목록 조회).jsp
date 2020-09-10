<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	Member member = (Member)request.getAttribute("member");
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>관리자(회원 상세 조회)</title>
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
                <div id="subTitle"><b>회원 목록 조회</b></div>
            </h2>
            <hr>
            <div id="bottomContent">
            	<form action = "<%= request.getContextPath() %>/searchMember.ad">
                <div id="searchDiv">
                    <select name="opt">
                    	<option value="전체">전체 검색</option>
                        <option value="회원 번호">회원 번호</option>
                        <option value="아이디">아이디</option>
                        <option value="닉네임">닉네임</option>
                    </select>
                    <input type="search" name="word" value="" placeholder="검색어를 입력하세요">
                    <button type="submit">검색</button>
                </div>
                </form>
                </div>
                <div id="tableDiv">
                	<table class="contentsTable" width="100%" align="center">
	                	<thead>
	                        <tr>
	                            <th width= "50px">번호</th>
	                            <th width= "100px">아이디</th>
	                            <th width= "100px">닉네임</th>
	                            <th width= "30px">성별</th>
	                            <th width= "100px">생년월일</th>
	                            <th width= "100px">핸드폰</th>
	                            <th width= "100px">이메일</th>
	                            <th width= "300px">주소</th>
	                            <th width= "60px">게시글수</th>
	                            <th width= "30px">활성</th>
	                        </tr>
	            		</thead>
	            		<tbody>
							<% if(list.isEmpty()){ %>
							<tr>
								<td colspan="10">회원이 존재하지 않습니다.</td>
							</tr>
						<% } else { %>
						<%		for (Member m : list) { %>
							<tr>
								<td><input type="hidden" value="<%=m.getMemberNo()%>">
									<%=m.getMemberNo()%></td>
								<td><%=m.getMemberId()%></td>
								<td><%=m.getMemberNickName() %></td>
								<td><%=m.getMemberGender()%></td>
								<td><%=m.getMemberBirthDay()%></td>
								<td><%=m.getMemberPhone()%></td>
								<td><%=m.getMemberEmail()%></td>
								<td><%=m.getMemberAddress()%></td>
								<td><%=m.getMemberBoard()%></td>
								<td><%=m.getMemberEnable()%></td>
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
	            	var mNo = $(this).parent().children().children('input').val(); 
	            	<% if(loginUser != null){%>	
	            		location.href = '<%= request.getContextPath() %>/memDetail.ad?mNo=' + mNo;
	 	            <% }else{ %>
		               alert('회원만 이용할 수 있는 서비스입니다.')
		            <% } %>
	            });
	         <% } %>
		});
    </script>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>

