<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
    <link rel="stylesheet" type="text/css" href="../../../resources/css/EA_writer.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/SP_search.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/body.css">
  
</head>
<style>

</style>
<body>
   <%@ include file="../Common/header.jsp" %> 
 <!----------------------------------------header------------------------------------------->
     <from>
          <h1 id = writing_maintext>지원정책 검색</h1>
            <div id=External_mainbox>
                <div class="container">
                        <div class="writertext">
                        <ul class="writerinformanion-list">
                        <th>
                        <li class="infomation-item">카테고리:</li>
                        <li class="infomation-item">접수상태:</li>
                        <li class="infomation-item">취업상태:</li>
                        <li class="infomation-item">대상별:</li>
                        <li class="infomation-item">지역별:</li><br>
                        </th>
                    
                    </ul>
                        
                    </div>
                      

                    <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->

                    <div class="writertext-answer">
                      <div> 
                      <select class="categoty-select" id="sp_category">
                        <option value="" selected disabled hidden >선택해주세요.</option>
                        <option value="1">재직지원</option>
                        <option value="2">취업지원</option>
                        <option value="3">기업지원</option>
                        <option value="4">창업지원</option>
                        <option value="5">생활/금융</option>
                        <option value="6">교통/주거</option>
                     </select>
                      </div>

                      <div class="sp_Receipt_status">
                          <table>
                        <tr>
                        <td><button class = "ea_areabutton" >접수중</button></td>
                        <td><button class = "ea_areabutton" >마감</button></td>
                    </tr>
                </table>
                    </div>
                      <div class="sp_Employment_status">
                        <table>
                            <tr>
                            <td><button class = "ea_areabutton" >구직중</button></td>
                            <td><button class = "ea_areabutton" >재직중</button></td>
                        </tr>
                    </table>
                      </div>


                      <div>
                        <table class="ea_table_age">
                          <th>
                            <td><button class="ea_age" id="ea_age_18">청년<br>(18~34세) </button></td>
                            <td><button class="ea_age" id="ea_age_35">중년<br>(35~49세) </button></td>
                            <td><button class="ea_age" id="ea_age_50">장년<br>(50~64세) </button></td>
                            <td><button class="ea_age" id="ea_age_65">어르신<br>(65세 이상) </button></td>
                          </th>
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
                    <br>

                   <div class = "sp_button">
                    <input type='button' class='sp_searchbutton' name='btn' value='초기화' style="float: right;" id="p_sp_search_reset">
                    <input type='button' class='sp_searchbutton' name='btn' value='검색' style="float: right;" id="p_sp_search_submit">
                   </div>
                  
                   <br><br><br>
                   <h1 class = "sp_search_result">N건이 검색되었습니다.</h1><br><br>
                   </div>
            </div>
            <div class="sp_search_result_table">
            <table>
                <tr class="sp_search_result_table_tr">
                    <td class=sp_search_result_table_title>
                        <a href="#">[오산시] KH정보교육원 점심값 지원<br></a>
                        2020-08-16 ~ 2020-09-16</td>
                    <td>추천 수 : 5</td>
                </tr>
                <tr class="sp_search_result_table_tr">
                    <td class=sp_search_result_table_title>
                        <a href="#">[오산시] KH정보교육원 점심값 지원<br></a>
                        2020-08-16 ~ 2020-09-16</td>
                    <td>추천 수 : 4</td>
                </tr>
                <tr class="sp_search_result_table_tr">
                    <td class=sp_search_result_table_title>
                        <a href="#">[오산시] KH정보교육원 점심값 지원<br></a>
                        2020-08-16 ~ 2020-09-16</td>
                    <td>추천 수 : 1 </td>
                </tr>
                <tr class="sp_search_result_table_tr">
                    <td class=sp_search_result_table_title>
                        <a href="#">[오산시] KH정보교육원 점심값 지원<br></a>
                        2020-08-16 ~ 2020-09-16</td>
                    <td>추천 수 : 2</td>
                </tr>
                <tr class="sp_search_result_table_tr">
                    <td class=sp_search_result_table_title>
                        <a href="#">[오산시] KH정보교육원 점심값 지원<br></a>
                        2020-08-16 ~ 2020-09-16</td>
                    <td>추천 수 : 3</td>
                </tr>
            
            </table>
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
    
        </section>
    </from>
    <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 