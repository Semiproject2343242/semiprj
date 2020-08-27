<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
</head>
<style>
    
</style>
<body>
   <%@ include file="../Common/header.jsp" %>
    <section>
        <aside>
            <h2 ><a href="<%= request.getContextPath() %>/main.cm">커뮤니티</h2></a>
            <hr>
            <div>
            <dl>
             	<dt><a href="<%= request.getContextPath() %>/fMain.cm"><h3>자유게시판</h3></a></dt>
                <dt><a href="<%= request.getContextPath() %>/spMain.cm"><h3>지원정책 게시판</h3></a></dt>
                <dt><a href="<%= request.getContextPath() %>/eaMain.cm"><h3>대외활동 게시판</h3></a></dt>
               
            </dl>
            </div>
        </aside>
        <div id="main_section">
            <br>
        <div id="tablename">
            <h2 id="게시판이름">대외활동 게시판</h2>
         

    <table class="table"  width="800px" align="center">
    
    <caption>
    <div align = "right">
    <button><a href="<%= request.getContextPath() %>/eaInsertForm.cm">글쓰기</button>
    </div>
    </caption>
    
        <thead>
        <tr id = "b-main">
            <th width= "30px">번호</th>
            <th width= "400px">제목</th>
            <th width= "50px">작성자</th>
            <th width= "100px">날짜</th>
            <th width= "40px">조회</th>
            <th width= "40px">추천</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><a href="<%= request.getContextPath() %>/eaDetail.cm">나자바바라</a></td>
            <td>구준표</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href="<%= request.getContextPath() %>/eaDetail.cm">메에로옹</a></td>
            <td>박상준</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        <tr>
            <td>3</td>
            <td><a href="<%= request.getContextPath() %>/eaDetail.cm">이리오너르</a></td>
            <td>김준표</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        <tr>
            <td>4</td>
            <td><a href="<%= request.getContextPath() %>/eaDetail.cm">냠냠냠냠</a></td>
            <td>백지후</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        <tr>
            <td>5</td>
            <td><a href="<%= request.getContextPath() %>/eaDetail.cm">옹뇨요</a></td>
            <td>구준표</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        </tbody>
    </table>
    <br>  
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
    </caption>
        </div>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 