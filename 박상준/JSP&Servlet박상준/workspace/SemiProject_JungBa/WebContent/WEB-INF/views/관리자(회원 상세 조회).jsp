<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>관리자(회원 목록 조회)</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/headerfooter.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/side.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/pagination.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/boardtool.css">
</head>
<style>

    .box {
        margin-top: 30px;
        width: 300px;
        height: 300px;
        border-radius: 70%;
        overflow: hidden;
        float: left;
        margin-left: 50px;
    }

    .profile {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    #topContents {
        margin-top: 10px;
    }

    #infoTable {
        border-spacing: 10px;
    }

    .board_area {
        display: flex;
        justify-content: center;
    }

    .board_box {
        padding: 0px;
        padding-top: 24px;
        margin: 10px;
        width: 40%;
        line-height: 30px;
    }

    .board_box a {
        /* text-decoration: none; */
        float: left;
        /* color: white; */
    }

    .board_box a:hover {
        color: black;
        font-weight: bold;
    }

    /* .my_util_area li:hover {
	font-weight: bold;
	} */
    .box_title {
        display: flex;
        align-items: center;
        padding-left: 20px;
        margin-bottom: 0px;
        height: 40px;
        background-color: rgb(15, 76, 130);
        border-radius: 7px;
    }

    .box_title h3 {
        color: white;
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
            <div id="subTitle"><b>user01님의 회원 상세 조회</b></div>
            </h2>
            <hr>
            <div id="topContents">
                <div class="box" style="background: #BDBDBD;">
                    <img class="profile" src="../Media/Music2.jpg">
                </div>
                <div id="memInfo">
                    <table id="infoTable">
                        <tr>
                            <td>이름(Name) : </td>
                            <td>김연우</td>
                        </tr>
                        <tr>
                            <td>아이디(ID) : </td>
                            <td>Rudy</td>
                        </tr>
                        <tr>
                            <td>휴대전화(Phone) : </td>
                            <td>010-1234-5678</td>
                        </tr>
                        <tr>
                            <td>이메일(E-mail) : </td>
                            <td>Rudy@nate.com</td>
                        </tr>
                        <tr>
                            <td>성별(Gender) : </td>
                            <td>여성</td>
                        </tr>
                        <tr>
                            <td>주소(Address) : </td>
                            <td>서울시 강남구</td>
                        </tr>
                        <tr>
                            <td>생년월일(BirthDay) : </td>
                            <td>19900101</td>
                        </tr>
                    </table>
                </div>

                <br clear="all">

                <div id="boardContents">
                    <div class="board_area">
                        <div class="board_box">
                            <div class="box_title">
                                <a href="#">
                                    <h3>공지사항</h3>
                                </a>
                            </div>
                            <ol>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글1</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글2</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글3</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글4</a>
                                    <div>날짜</div>
                                </li>
                            </ol>
                        </div>

                        <div class="board_box">
                            <div class="box_title">
                                <a href="#">
                                    <h3>공지사항</h3>
                                </a>
                            </div>
                            <ol>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글1</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글2</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글3</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글4</a>
                                    <div>날짜</div>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <div class="board_area">
                        <div class="board_box">
                            <div class="box_title">
                                <a href="#">
                                    <h3>공지사항</h3>
                                </a>
                            </div>
                            <ol>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글1</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글2</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글3</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글4</a>
                                    <div>날짜</div>
                                </li>
                            </ol>
                        </div>

                        <div class="board_box">
                            <div class="box_title">
                                <a href="#">
                                    <h3>공지사항</h3>
                                </a>
                            </div>
                            <ol>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글1</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글2</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글3</a>
                                    <div>날짜</div>
                                </li>
                                <li>
                                    <a href="#" class="area_title">공지사항 최신글4</a>
                                    <div>날짜</div>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </section>
    <footer>
        <div class="footer_box">
            Copyrightⓒ2020 Flower than java Project All Rights Reserved.
        </div>
    </footer>
</body>

</html>