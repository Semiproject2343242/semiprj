<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../resources/css/headerfooter.css" />
    <!-- <script src="../resources/js/slides.js"></script> -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <style>
      #ptag > a {
        text-decoration: none;
      }
    </style>
  </head>
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
          <a href="#"><font size="7">정</font>부지원금<font size="7">바</font>로 지금</a>
        </div>
        <div class="navbar_menu">
          <li><a href="#">공지사항</a></li>
          <li><a href="#">지원정책</a></li>
          <li><a href="#">커뮤니티</a></li>
          <li><a href="#">대외활동</a></li>
          <li><a href="#">Q / A</a></li>
        </div>
        <div class="navbar_logo">
          <img id="logo" src="../Media/logo.png" width="80px" height="80px" />
        </div>
      </nav>
    </header>
    <hr />

    <section id="loginSection">
      <form>
        <div>
          <h1 align="center">로그인</h1>
          <table align="center">
            <tr>
              <td><input type="text" id="userId" placeholder="아이디를 입력해주세요" /></td>
              <td rowspan="2"><button type="submit" id="loginButton3">로그인</button></td>
            </tr>
            <tr>
              <td><input type="password" id="pw" placeholder="비밀번호를 입력해주세요" /></td>
            </tr>
          </table>
          <p align="center" id="ptag"><a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a> | <a href="#">회원가입 찾기</a></p>
        </div>
      </form>
    </section>

    <footer>
      <div class="footer_box">
        Copyrightⓒ2020 Flower than java Project All Rights Reserved.
      </div>
    </footer>
  </body>
</html>
