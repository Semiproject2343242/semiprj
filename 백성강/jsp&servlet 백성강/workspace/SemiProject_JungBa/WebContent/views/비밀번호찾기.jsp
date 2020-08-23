<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/headerfooter.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/side.css">
</head>
<style>
    
	section {
      display: block;
      line-height: 40px;
    }
    #main_section {
      width: 100%;
    }
    #pwsearchbutton{background-color:darkgray; border-radius: 3px; border:none;}
    
</style>
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
    <section>
    
        <div id="main_section">
            <section id=pw_serch_Section>
                <form>
                    <div>
                        <h1 align="center">비밀번호 찾기</h1>
                        <table align="center">
                            <tr>
                                <td style = text-align:right>이름 :</td>
                                <td><input type="text" id="userName" placeholder="이름을 입력해주세요"></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style = text-align:right>ID :</td>
                                <td><input type="text" id="userName" placeholder="ID를 입력해주세요"></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style = text-align:right><input type=radio name=pwsearchradio>휴대폰 번호 :</td>
                                <td><input type="phone" id="userPhone" placeholder="'-' 없이 입력해주세요"></td>
                                <td><button>인증번호 받기</button></td>
                                <td><input type="number" class="checknumber" placeholder="인증번호"></td>   
                            </tr>
                            <tr>
                                <td style = text-align:right><input type=radio name=pwsearchradio>이메일 :</td>
                                <td><input type="email" id="userEmail" placeholder="이메일을 입력해주세요"></td>
                                <td><button>인증번호 받기</button></td>
                                <td><input type="number" class="checknumber" placeholder="인증번호"></td>
                            </tr>
                        </table>
                        <p align="center"><input type="button" id="pwsearchbutton" style="width: 60pt; height: 30pt" value="확인"></p>
                    </div>
                </form>
            </section>
        </div>
    </section>
    <footer>
        <div class="footer_box">
            Copyrightⓒ2020 Flower than java Project All Rights Reserved.
        </div>
    </footer>
</body>
</html>



 