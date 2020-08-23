<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/EA_writer.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/headerfooter.css">
</head>
<style>

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
 <!----------------------------------------header------------------------------------------->
     <from>
          <h1 id = writing_maintext>대외활동 글쓰기</h1>
            <div id=External_mainbox>
                <div class="container">
                    <p>기관명<input type ="text" name = "기관명" id="ea_com_name" placeholder="기관명을 입력하세요." class=textline1></p>
                    <p>홈페이지<input type ="text" name = "홈페이지" id="ea_com_url" placeholder="url을 입력하세요." class=textline1></p>
                    <p>
                        <span>담당자&nbsp:&nbsp<input type ="text" id="ea_manager_name" name = "담당자" placeholder="담당자를 성함을 입력하세요." class=textline2></span>
                        <span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp직위&nbsp:&nbsp
                            <input type ="text" id="ea_manager_spot" name = "직위"  placeholder="직위를 입력하세요." class=textline2></span>
                    </p>
                    <p>
                        <span>연락처&nbsp:&nbsp<input type ="tel" id="ea_manager_phone"name = "연락처" placeholder="연락처를 입력하세요."placeholder="연락처를 입력하세요." class=textline2 ></span>
                        <span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp이메일&nbsp:&nbsp
                            <input type ="text" name = "이메일" id="ea_manager_email"placeholder="이메일을 입력하세요."class=textline2 ></span>
                    </p>
                        <!-- 
                            담당자 
                            기관명 ea_com_name
                            홈페이지  ea_com_url
                            이름 ea_manager_name
                            직위 ea_manager_spot
                            연락처 ea_manager_phone
                            이메일 ea_manager_phone
                         -->
                
            
                    <div class="writertext">
                        <ul class="writerinformanion-list">
                        <th>
                        <li class="infomation-item">카테고리:</li>
                        <li class="infomation-item">대상별:</li>
                        <li class="infomation-item">지역별:</li><br>
                        </th>
                    
                    </ul>
                        
                    </div>
                      

                    <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->

                    <div class="writertext-answer">
                      <div> 
                      <select class="categoty-select" id="ea_category">
                        <option value="" selected disabled hidden >선택해주세요.</option>
                        <option value="1">공모전</option>
                        <option value="2">채용박람회/취업설명회</option>
                        <option value="3">경진대회</option>
                        <option value="4">봉사활동</option>
                        <option value="5">서포터즈</option>
                        <option value="6">관람/전시/체험</option>
                     </select>
                      </div>
                      <div>
                        <table class="ea_table_age">
                          <tr>
                            <td><button class="ea_age" id="ea_age_18">청년<br>(18~34세) </button></td>
                            <td><button class="ea_age" id="ea_age_35">중년<br>(35~49세) </button></td>
                            <td><button class="ea_age" id="ea_age_50">장년<br>(50~64세) </button></td>
                            <td><button class="ea_age" id="ea_age_65">어르신<br>(65세 이상) </button></td>
                          </tr>
                          <!-- 나이 카테고리
                            청년  ea_age_18
                            중년  ea_age_35
                            장년  ea_age_50
                            어르신 ea_age_65 
                        -->
                        </table>
                      </div>
                      <div id = "ea_areatable_div">
                        <table id= "ea_areatable">
                          <tr>
                            <td><button class = "ea_areabutton" id= "GP">가평군</button></td>
                            <td><button class = "ea_areabutton" id= "GY">고양시</button></td>
                            <td><button class = "ea_areabutton" id= "GC">과천시</button></td>
                            <td><button class = "ea_areabutton" id= "GM">광명시</button></td>
                            <td><button class = "ea_areabutton" id= "GJ">광주시</button></td>
                            <td><button class = "ea_areabutton" id= "GL">구리시</button></td>
                            <td><button class = "ea_areabutton" id= "GP2">군포시</button></td>
                          </tr>
                          <tr>
                            <td><button class = "ea_areabutton" id= "GP3">김포시</button></td>
                            <td><button class = "ea_areabutton" id= "NYJ">남양주시</button></td>
                            <td><button class = "ea_areabutton" id= "DDC">동두천시</button></td>
                            <td><button class = "ea_areabutton" id= "BC">부천시</button></td>
                            <td><button class = "ea_areabutton" id= "SN">성남시</button></td>
                            <td><button class = "ea_areabutton" id= "SW">수원시</button></td>
                            <td><button class = "ea_areabutton" id= "SH">시흥시</button></td>
                          </tr>
                          <tr>
                            <td><button class = "ea_areabutton" id= "AS">안산시</button></td>
                            <td><button class = "ea_areabutton" id= "AY">안양시</button></td>
                            <td><button class = "ea_areabutton" id= "PJ">파주시</button></td>
                            <td><button class = "ea_areabutton" id= "PT">평택시</button></td>
                            <td><button class = "ea_areabutton" id= "PC">포천시</button></td>
                            <td><button class = "ea_areabutton" id= "HN">하남시</button></td>
                            <td><button class = "ea_areabutton" id= "HS">화성시</button></td>
                          </tr>
                        </table>
                      </div>
                    </div>
                    <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->

                    <br clear="all">

                    <div>
                        <p>제목<input type ="text" id="ea_title" name = "제목" placeholder="제목을 입력하세요." class=textline1></p>
                        <p><span>모집일정 : <input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1></span>
                        <span> ~ <input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1> 까지</span></p> 
                        <p><span>활동기간 : <input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1></span>
                          <span> ~ <input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1> 까지</span></p> 
                        <p>접수방법<textarea class="form-control" id="ea_re_apply" rows="5" name="접수방법" id="ea_text_apply" placeholder="내용을 입력해 주세요" ></textarea></p>
                        
                        <p>
                            <span>메인 이미지 첨부 : <input type ="file" name = "연락처" class=textline2></span><br><br>
                            <span>참고자료 : <input type ="file" name = "이메일" class=textline2></span>
                        </p>
                        
                        <p >내용<textarea class="form-control" rows="5" name="내용" id="ea_text_Contents" placeholder="내용을 입력해 주세요" ></textarea>
                        
                        <p>
                            <span>내용 이미지 첨부 : <input type ="file" name = "이미지" class=textline2></span><br><br>
                            <span>참고자료 : <input type ="file" name = "참고자료" placeholder="자료첨부" class=textline2></span>
                        </p>
                        <p>기관명<input type ="text" id="ea_name_com" name = "기관명" placeholder="기관명을 입력하세요." class=textline1></p>
                        <p>주소<input type ="text" id="ea_address"name = "주소" placeholder="주소를 입력하세요" class=textline1></p>
                        <p>전화번호<input type ="phone" id="ea_callnumber" name = "전화번호"placeholder="전화번호를 입력하세요." class=textline1></p>
                        <p>이메일<input type ="email" id="ea_com_email" name = "이메일" placeholder="이메일을 입력하세요." class=textline1></p>
                    </div><br><br>
                <div id = ea_button>
                    <button id = ea_submit>등록</button>
                    <button id = ea_cancle>취소</button>
                </div>
                  </div>
           
            </div>
    
        </section>
    </from>
    <footer>
        <div class="footer_box">
            Copyrightⓒ2020 Flower than java Project All Rights Reserved.
        </div>
    </footer>
</body>
</html>



 