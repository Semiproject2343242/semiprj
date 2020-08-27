<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member = (Member)request.getAttribute("member");
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>마이페이지 내가 쓴 글(Q/A)</title>
    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">

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
                <div id="subTitle"><b>내가 쓴 글 - Q / A</b></div>
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
                    <table id="infoTable">
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>카테고리</th>
                            <th>작성자</th>
                            <th>게시 날짜</th>
                            <th>조회수</th>
                            <th>답변상태</th>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td><a href="#">제목1</a></td>
                            <td>카테고리1</td>
                            <td>김중현</td>
                            <td>2020.01.01</td>
                            <td>123</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><a href="#">제목2</a></td>
                            <td>카테고리2</td>
                            <td>박상준</td>
                            <td>2020.02.02</td>
                            <td>4</td>
                            <td>Y</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><a href="#">제목3</a></td>
                            <td>카테고리3</td>
                            <td>이규호</td>
                            <td>2020.03.03</td>
                            <td>13</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><a href="#">제목4</a></td>
                            <td>카테고리4</td>
                            <td>백성강</td>
                            <td>2020.04.04</td>
                            <td>128</td>
                            <td>N</td>
                        </tr>
                                                <tr>
                            <td>1</td>
                            <td><a href="#">제목5</a></td>
                            <td>카테고리5</td>
                            <td>김연우</td>
                            <td>2020.05.05</td>
                            <td>8</td>
                            <td>Y</td>
                        </tr>
                    </table>
                </div>
            </div>

            <ul align="center">
                <div class = "pagination">
                    <a href="#" title = "이전" class="pre"><</a>
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#" title = "다음" class="next">></a>
                </div>
            </ul>

        </div>


    </section>
    <%@ include file="../Common/footer.jsp" %>
</body>

</html>