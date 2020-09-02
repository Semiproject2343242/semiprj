<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>정부지원금 바로지금</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
  </head>
  <style>
  #filetext{
  		margin-top : 220px;
  	}
  </style>
  <body>
    <%@ include file="../Common/header.jsp" %>
    <section>
      <aside>
        <h2>묻고답하기</h2>
        <hr />
        <h2>제목</h2>
        <h2>카테고리</h2>
        <h2>내용</h2>
      </aside>
      <div id="main_section">
	      <form action="<%= request.getContextPath() %>/insert.qa" method="post">
			 <h2 style="text-align: center;">질문하기</h2>
			<hr />
			<h2>
			<input type="text" size="50" name="title" placeholder="제목을 입력해주세요.">
			</h2>
			<h2>
			  <select name="category" class="combo_category">
			    <option value="이용관련">이용관련</option>
			    <option value="회원관련">회원관련</option>
			    <option value="게시글등록">게시글 등록</option>
			    <option value="이벤트">이벤트</option>
			    <option value="신고">신고</option>
			    <option value="기타">기타</option>
			  </select>
			</h2>
			<h2><textarea id="textarea" name="content" placeholder="내용을 입력해주세요." cols="100" rows="15" style="resize:none;"></textarea></h2>
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
    <%@ include file="../Common/footer.jsp" %>
  </body>
</html>
