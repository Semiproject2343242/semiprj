<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD

=======
>>>>>>> e356bdb8fac60072254471828b84f1520819144c
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<<<<<<< HEAD
    <title>Layout01</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
=======
    <title>게시판 기본틀</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
>>>>>>> e356bdb8fac60072254471828b84f1520819144c
</head>
<style>
    
</style>
<body>
<<<<<<< HEAD
	 <%@ include file="../Common/header.jsp" %>
    <h2 id="게시판이름">공지사항게시판</h2>
    <table class="table"  width="800px" align="center">
    	<caption>
    		<div align = "right">
    			<select>
       				 <option value= "5pc" >5개씩 보기</option>
        			 <option value= "10pc">10개씩 보기</option>
    			</select>
    		    <a href="<%= request.getContextPath() %>/main.no">글쓰기</a>
    		</div>
    	</caption>
=======
   <%@ include file="../Common/header.jsp" %>
    <section>
        <div id="main_section">
            <br>
        <div id="tablename">
            <h2 id="게시판이름">공지사항</h2>
         

    <table class="table"  width="800px" align="center">
    
    <caption>
    <div align = "right">
    <select>
        <option value= "5pc" >5개씩 보기</option>
        <option value= "10pc">10개씩 보기</option>
    </select>
    <button>글쓰기</button>
    </div>
    </caption>
    
>>>>>>> e356bdb8fac60072254471828b84f1520819144c
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
<<<<<<< HEAD
            <td><a href>공지사항1</a></td>
            <td>구준표</td>
=======
            <td><a href>공지사항게시판 입니다.</a></td>
            <td>운영자</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href>여러분 여기는 공지사항이에요</a></td>
            <td>운영자</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        <tr>
            <td>3</td>
            <td><a href>공지사항..</a></td>
            <td>운영자</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        <tr>
            <td>4</td>
            <td><a href>공지사..</a></td>
            <td>운영자</td>
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
        <tr>
            <td>5</td>
            <td><a href>항..</a></td>
            <td>운영자</td>
>>>>>>> e356bdb8fac60072254471828b84f1520819144c
            <td>2020.08.02</td>
            <td>1</td>
            <td>1</td>
        </tr>
<<<<<<< HEAD

        </tbody>
    </table>
    <br>  
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
	<%@ include file="../Common/footer.jsp" %>
=======
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
>>>>>>> e356bdb8fac60072254471828b84f1520819144c
</body>
</html>



<<<<<<< HEAD

 



=======
>>>>>>> e356bdb8fac60072254471828b84f1520819144c
 