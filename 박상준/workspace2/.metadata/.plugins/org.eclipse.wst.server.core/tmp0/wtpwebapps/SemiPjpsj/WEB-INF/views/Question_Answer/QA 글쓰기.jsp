<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>게시판 기본틀</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/QAcontents.css" />
  </head>
  <style></style>
  <body>
    <%@ include file="../Common/header.jsp" %>
    <section>
      <aside>
        <h2>NO.01</h2>
        <hr />
        <h2>제목</h2>
        <h2>카테고리</h2>
        <h2>내용</h2>
        <h2 id="filetext">첨부파일</h2>
      </aside>
      <div id="main_section">
        <h2>묻고 답하기</h2>
        <hr />
        <h2><input type="text" id="title" placeholder="제목을 입력해주세요." /></h2>
        <h2>
          <select id="category">
            <option value="필독">필독</option>
            <option value="공지">공지</option>
          </select>
        </h2>
        <h2><textarea id="textarea" placeholder="내용을 입력해주세요."></textarea></h2>
        <h2><input type="file" id="file" /></h2>
        <hr />
        <h2>
          <div id="buttons">
            <button id="button1" class="buttons">등록</button>
            <button id="button2" class="buttons">취소</button>
          </div>
        </h2>
      </div>
    </section>
    <%@ include file="../Common/footer.jsp" %>
  </body>
</html>
