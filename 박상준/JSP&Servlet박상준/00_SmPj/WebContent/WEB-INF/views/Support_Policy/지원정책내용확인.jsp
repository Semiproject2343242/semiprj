<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Layout01</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/대외활동내용확인.css">

    <style>
    </style>
</head>
<body>
    <%@ include file="../Common/header.jsp" %>
        <div id="main_section">
            <div id="contents">
                <h2 id="ea_h21">NO.01</h2>
                <h2 id="ea_h22">지원정책</h2>
                <hr>
                <h1 style="text-align: center">지원정책 제목</h1>
                <br>
                <text id="ea_text1"> 백성강 <br>2020.08.07 14:47 조회수 1 댓글 2</text>
                <br>
                <div id="ea_buttons">
                    <button class="ea_button1"> &lt; 이전글</button>
                    <button class="ea_button1">다음글 &gt;</button>
                    <button class="ea_button1">목록</button><br>
                </div>

                <br clear="all"><br> 

                <div id="ea_div1">
                    <div id="ea_div2">
                        <img src="../img/1.PNG" id="ea_img1" >
                    </div>

                    <div id="ea_div3"> 
                        <text><h2>제목 입력란</h2></text>
                        <ul>
                            <li class="ea_li">모집일정 : 2020-08-01(토) ~ 2020-08-18(화) 18:00 까지</li>
                            <br>
                            <li class="ea_li">지원대상: 만 18세 이상 만 34세 이하 경기도 거주자</li>
                            <br>
                            <li class="ea_li">접수상태 : 접수중</li>
                            <br>
                            <li class="ea_li">접수방법 : 이메일 접수</li>
                        </ul>
                    </div>
                    <button id="ea_button2">홈페이지 바로가기</button>
                    
                    <br clear="all"><br> 

                    <div class="ea_div4"><a href="#ea_act_info">상세정보</a></div>
                    <div class="ea_div4"><a href="#ea_write_file">참고자료</a></div>
                    <div class="ea_div4"><a href="#ea_org_name">기관명/연락처</a></div>

                    <div id="ea_div5">
                        <h2 style="text-align: center;"  id="ea_act_info">활동정보</h2>
                        <ul>
                            <li>대상 : 경기도내 소재한 민간 관광업체</li>
                            <li>신청기간 : 2020.07.29(수) ~ 2020.08.06(목) 까지</li>
                            <li>신청방법 : <a href="#" >이메일접수</a></li>
                            <li>상세페이지 : <button id="ea_button3">홈페이지 바로가기</button> </button></li>
                            <li>담당자 이메일 : nandong@gto.or.kr</li>
                            <li>담당자 전화번호 : 031-259-4790</li>
                            <li>
                                공모개요
                                <ul>
                                    <li>공모명 : 경기도 즐거운 체험 프로그램 공모</li>
                                    <li>공모대상 : 경기도내 소재한 민간 관광업체가 운영하는 체험 프로그램<br>
                                        ※ 제외 : 공공(정부, 지자체 등이 운영)부문 및 대기업 계열사 관광시설, 여행사 상품, 단순관람 위주 프로그램, 축제/이벤트/행사, 기 인증 프로그램
                                    </li>
                                    <li>선정절차 : 접수 → 서류심사 → 선정 → 컨설팅 및 홍보 마케팅 지원</li>
                                    <li>선정규모 : 5개 체험 프로그램</li>
                                </ul>
                            </li>
                        </ul>
                        <h2 style="text-align: center;" id="ea_org_name">기관명</h2>
                        <div id="ea_divtable">
                            <table id="ea_table1">
                                <tr>
                                    <td width="130px">기관명</td>
                                    <td width="300px">파주 청년 일자리 지원 센터</td>
                                </tr>
                                <tr>
                                    <td>주소</td>
                                    <td>경기 성남시</td>
                                </tr>
                                <tr>
                                    <td>전화번호</td>
                                    <td>02-545-4848</td>
                                </tr>
                                <tr>
                                    <td>이메일</td>
                                    <td>sdjflksnf@naver.com</td>
                                </tr>
                            </table>
                        </div>       
                    </div>
                    
                    <div sytle="float:left; width:70%;"><h2 id="참고자료">참고자료</h2></div>
                    <input type="file" id="ea_write_file"><br><br>


                    <br clear="all"><br> 

                </div>
            </div>
        </div>
        <br clear="all"><br>
        <%@ include file="../Common/footer.jsp" %>
</body>
</html>

