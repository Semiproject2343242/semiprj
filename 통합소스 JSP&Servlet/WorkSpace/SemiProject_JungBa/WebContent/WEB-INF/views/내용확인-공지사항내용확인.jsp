<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Layout01</title>
    <script src="../../resources/js/jquery-3.5.1.min.js"></script> 
    <link rel="stylesheet" type="text/css" href="../../resources/css/headerfooter.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/공지사항내용확인.css">

    <style>
    </style>
</head>
<body>
    <header>
        <div class="header_top">
           <div class="top">
              <li><a href="#" class="top_btn"><b>마이페이지</b></a></li>
              <li><a href="#" class="top_btn"><b>로그인</b></a></li>
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
              <li><a href="#">Q / A</a></li>
           </div>
           <div class="navbar_logo">
              <img id="logo" src="../Media/logo.png" width = "80px" height = "80px">
           </div>
        </nav>
     </header>
        <div id="main_section">
            <div id="contents">
                <h2 id="h21">NO.01</h1>
                <h2 id="h22">공지사항</h2>
                <hr>
                <h1 style="text-align: center"><span id="span1">[필독] </span>공지사항 제목</h1>
                <br>
                <text id="text1"> 백성강 <br>2020.08.07 14:47 조회수 1 댓글 2</text>
                <br>
                <div id="buttons">
                    <button class="button1"> &lt; 이전글</button>
                    <button class="button1">다음글 &gt;</button>
                    <button class="button1">목록</button><br>
                </div>
                <br clear="all"> 
                <br>   
                <hr>
                <div id="div1">
                    <br>
                    <text id="text2"> 내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.
                        내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.내용입니다.
                    </text>
                    <br>
                    <div style="text-align: center">
                        <img src="img/1.PNG" id="img" ><!-- contents 부분의 크기를 조정하자-->
                    </div>
                    <h2>참고자료 (1) </h2> <!-- 참고자료 링크를 어떻게 넣어야할지..-->
                    <input type="file" id="ea_write_file"><br><br>

                    <!-- 댓글 --> 

                    <div> <h2>댓글</h2> </div>
                    <hr><br>

                    <div id="comment">
                        <img src="example/1.PNG" id="img1">
                        <text id="text3"> 백성강 <p id="p1">댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.
                            댓글입니다.댓글입니다.댓글입니다.댓글입니다.</p>
                        </text>
                        <text id="text4">
                            <a href> 답글 </a> <a href> 삭제 </a> <a href> 수정 </a>
                            <!-- 관리자랑 사용자랑 나눠서 사용해야한다. -->
                            <br>2020.08.07 14:47 
                        </text>
                    </div>
        
                    <div id="comment">
                        <img src="example/1.PNG" id="img1">
                        <text id="text3"> 백성강 
                            <p id="p1">댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.댓글입니다.
                                댓글입니다.댓글입니다.댓글입니다.댓글입니다.
                            </p>
                        </text>
                        <text id="text4">
                            <a href> 답글 </a> <a href> 삭제 </a> <a href> 수정 </a>
                            <!-- 관리자랑 사용자랑 나눠서 사용해야한다. -->
                            <br>2020.08.07 14:47 
                        </text>
                    </div>
                    <br clear="all"><br>    
                    <div>
                        <textarea id="textarea" placeholder="댓글을 입력하세요."></textarea><br>
                        <button id=button4>등록</button>
                    </div>
                </div>
            </div>
        </div>
        <br clear="all"><br>
        <footer>
         <div class="footer_box">
             Copyrightⓒ2020 Flower than java Project All Rights Reserved.
         </div>
     </footer>
</body>
</html>

