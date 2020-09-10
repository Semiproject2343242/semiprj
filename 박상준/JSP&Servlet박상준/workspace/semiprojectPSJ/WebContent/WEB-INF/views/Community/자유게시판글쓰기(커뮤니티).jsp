<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Layout01</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
    <style>
     #filetext{
  		margin-top : 220px;
  	}
    </style>
</head>
<body>
	<%@ include file="../Common/header.jsp" %>
     <section>
        <aside>
        <h2>커뮤니티</h2>
        <hr />
        <h2>제목</h2>
        <h2>내용</h2>
        <h2 id="filetext">첨부파일</h2>
      </aside>
        <div id="main_section">
            <form action="<%= request.getContextPath() %>/finsert.cm" method="post" encType="multipart/form-data">
            <h2 style="text-align: center;">자유게시판</h2>
            <hr />
          	<h2>
			<input type="text" size="50" name="title" placeholder="제목을 입력해주세요.">
			</h2>
			<h2><textarea id="textarea" name="content" placeholder="내용을 입력해주세요." cols="100" rows="15" style="resize:none;"></textarea></h2>
            <!-- 파일 업로드 하는 부분 -->
			<div id="fileArea">
				사진 첨부<input type="file" id="file1" multiple="multiple" name="imageFile"><br>
				첨부 파일<input type="file" id="file2" multiple="multiple" name="uploadfile1"><br>
				첨부 파일<input type="file" id="file3" multiple="multiple" name="uploadfile2"><br>
			</div>
			<hr />
			<h2>
			  <div align="right">
               <input type="submit" id="insertNoBtn" value="등록">
               <input type="button" onclick="location.href='javascript:history.go(-1);'" id="cancelBtn" value="취소">
            </div>
			</h2>
	       </form>
        </div>
       </section>
		<br>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>