<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>게시판 기본틀</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/headerfooter.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/side.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/QAcontents.css" />
  </head>
  <style></style>
  <body>
    <header>
      <div class="header_top">
        <div class="top">
          <li>
            <a href="#" class="top_btn"><b>마이페이지</b></a>
          </li>
          <li>
            <a href="#" class="top_btn"><b>로그인</b></a>
          </li>
        </div>
      </div>
      <nav class="navbar">
        <div class="navbar_title">
          <a href="#"><span class="lagefont">정</span>부지원금<span class="lagefont">바</span>로 지금</a>
        </div>
        <div class="navbar_menu">
          <li><a href="#">공지사항</a></li>
          <li><a href="#">지원정책</a></li>
          <li><a href="#">커뮤니티</a></li>
          <li><a href="#">대외활동</a></li>
          <li><a href="#">묻고 답하기</a></li>
        </div>
        <div class="navbar_logo">
          <img id="logo" src="../Media/logo.png" width="80px" height="80px" />
        </div>
      </nav>
    </header>
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
    <footer>
      <div class="footer_box">
        Copyrightⓒ2020 Flower than java Project All Rights Reserved.
      </div>
    </footer>
  </body>
</html>
