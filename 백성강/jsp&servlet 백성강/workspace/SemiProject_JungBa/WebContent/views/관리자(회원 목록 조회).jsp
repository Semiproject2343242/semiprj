<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>관리자(회원 상세 조회)</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/headerfooter.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/side.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/pagination.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/boardtool.css">
</head>
<style>
    #bottomContent {
        margin-top: 30px;
    }

    #infoTable {
        width: 80%;
        border: 1px solid black;
        border-collapse: collapse;

    }

    #infoTable th {
        background-color: whitesmoke;
        border: 1px solid black;
    }

    #infoTable td {
        border: 1px solid black;
        text-align: center;
    }
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
                <img id="logo" src="../Media/logo.png" width="80px" height="80px">
            </div>
        </nav>
    </header>
    <section>
        <aside>
            <h2><a href="#">관리자</h2></a>
            <hr>
            <div>
                <dl>
                    <dt><a href="#">
                            <h3>회원 목록 조회</h3>
                        </a></dt>
                    <dt><a href="#">
                            <h3>정보 공유 신청</h3>
                        </a></dt>
                    <dt><a href="#">
                            <h3>대외 활동 신청</h3>
                        </a></dt>
                </dl>
            </div>
        </aside>

        <div id="main_section" align="center">
            <h2>
                <div id="subTitle"><b>회원 목록</b></div>
            </h2>
            <hr>
            <div id="bottomContent">
                <div id="searchDiv">
                    <select id="selectedOption">
                        <option>아이디로 찾기</option>
                        <option>이름으로 찾기</option>
                        <option>전화번호로 찾기</option>
                    </select>
                    <input id="search" type="search">
                    <button type="submit">검색</button>
                </div>
                <div id="tableDiv">
                    <table id="infoTable">
                        <tr>
                            <th>회원번호</th>
                            <th>아이디(ID)</th>
                            <th>이름(Name)</th>
                            <th>휴대전화(Phone)</th>
                            <th>회원 가입 날짜</th>
                            <th>게시글 수</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="#">junghyeon</a></td>
                            <td>김중현</td>
                            <td>010-1111-1111</td>
                            <td>2020.01.01</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><a href="#">sangjun</a></td>
                            <td>박상준</td>
                            <td>010-2222-2222</td>
                            <td>2020.02.02</td>
                            <td>4</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><a href="#">gyuho</a></td>
                            <td>이규호</td>
                            <td>010-3333-3333</td>
                            <td>2020.03.03</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><a href="#">seongang</a></td>
                            <td>백성강</td>
                            <td>010-4444-4444</td>
                            <td>2020.04.04</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td><a href="#">rudy</a></td>
                            <td>김연우</td>
                            <td>010-5555-5555</td>
                            <td>2020.05.05</td>
                            <td>1</td>
                        </tr>
                    </table>
                </div>
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

        </div>


    </section>
    <footer>
        <div class="footer_box">
            Copyrightⓒ2020 Flower than java Project All Rights Reserved.
        </div>
    </footer>
</body>

