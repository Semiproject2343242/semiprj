<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정부지원금 바로지금1</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/side.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/공지사항글쓰기.css"/>

    <script src="../resources/js/slides.js"></script>

    <style>
    </style>
</head>
  
<body>
	<%@ include file="../Common/header.jsp" %>
     <section>
        <aside>
           <h2> 공지사항</h2>
           <hr>
           <h2>제목</h2>
           <h2>카테고리</h2>
           <h2>내용</h2>
           <br><br><br><br><br><br>
           <h2>첨부파일</h2>
        </aside>
        <div id="main_section">
            <form action="<%= request.getContextPath() %>/insert.no" method="post" encType="multipart/form-data">
            	<h2 style="text-align: center;">공지사항 제목</h2>
            	<hr>
           	 	<input type="text" id="text1" placeholder="제목을 입력해주세요." name="title"><br clear="all"> 
            	<select id="select1" name="category">
               	 	<option value="필독">필독</option>
                	<option value="공지">공지</option>
            	</select>
            	<textarea id="textarea" name="content" placeholder="내용을 입력해주세요."></textarea><br>
            	<!-- 파일 업로드 하는 부분 -->
				<div id="fileArea">
					사진 첨부<input type="file" id="file1" multiple="multiple" name="imageFile"><br>
					첨부 파일<input type="file" id="file2" multiple="multiple" name="uploadfile1"><br>
					첨부 파일<input type="file" id="file3" multiple="multiple" name="uploadfile2"><br>
				</div>
            	<div id="buttons1">
                	<input type="submit" id="button1" value="등록">
               		<input type="button" id="button2" onclick="location.href='javascript:history.go(-1);'" id="cancelBtn" value="취소">
            	</div>
            </form>
        </div>
       </section>
		<br>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>