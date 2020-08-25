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
 section{
        display: block;
    }
    .serach_box{
        background-color: RGB(248,248,248);
        display: flex;
    }
    .writertext{
        list-style: none;
        line-height: 70px;
    }
    .select_box{
        margin: 16px;
        line-height: 70px;
    }
    .select_btn{
        height: 50px;
        width: 100px;
        background-color:  RGB(221,228,236);
    }
    .categoty_select{
        height: 40px;
    }
    .result_btn{
        height: 50px;
        width: 100px;
        margin-top: 30px;
        margin-right: 30px;
    }
    .sp_search_result_table{
        text-align: center;
    }
    .sp_search_result_table table{
        margin: 0px auto;
    }
    .sp_search_result_table table tr{
        Font-size: 20px
       }
        
       .sp_search_result_table_title{width:600px;
        
       }
       
       
       .sp_search_result_table_tr td{
        border-bottom: 1px solid #444444;
           
}
</style>
<body>
   <%@ include file="../Common/header.jsp" %> 
 <!----------------------------------------header------------------------------------------->
    <section>
        <!-- <from> -->
            <h1 align="center">지원정책 검색</h1>
            <!-- <div id=External_mainbox> -->
                <div class="serach_box">
                    <ul class="writertext">
                        <th>
                            <li class="infomation-item"><h3>카테고리:</h3></li>
                            <li class="infomation-item"><h3>접수상태:</h3></li>
                            <li class="infomation-item"><h3>취업상태:</h3></li>
                            <li class="infomation-item"><h3>대상별:</h3></li>
                            <li class="infomation-item"><h3>지역별:</h3></li>
                        </th>
                    </ul>
                    <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->
                    <!-- <div class="writertext-answer"> -->
                    <div class="select_box">
                        <h3>
                            <select class="categoty_select" id="sp_category">
                                <option value="" selected disabled hidden >선택해주세요.</option>
                                <option value="1">재직지원</option>
                                <option value="2">취업지원</option>
                                <option value="3">기업지원</option>
                                <option value="4">창업지원</option>
                                <option value="5">생활/금융</option>
                                <option value="6">교통/주거</option>
                            </select>
                        </h3>
                        <h3 class="sp_Receipt_status">
                            <div>
                                <button class = "select_btn" >접수중</button>
                                <button class = "select_btn" >마감</button>
                            </div>
                        </h3>
                        <h3 class="sp_Employment_status">
                            <div>
                                <button class = "select_btn" >구직중</button>
                                <button class = "select_btn" >재직중</button>
                            </div>
                        </h3>
                        <h3>
                            <div>
                                <button class="select_btn" id="ea_age_18">청년<br>(18~34세) </button>
                                <button class="select_btn" id="ea_age_35">중년<br>(35~49세) </button>
                                <button class="select_btn" id="ea_age_50">장년<br>(50~64세) </button>
                                <button class="select_btn" id="ea_age_65">어르신<br>(65세 이상) </button>
                                    <!-- 나이 카테고리
                                    청년  ea_age_18
                                    중년  ea_age_35
                                    장년  ea_age_50
                                    어르신 ea_age_65 
                                    -->
                            </div>
                        </h3>
                        <h3 id = "ea_areatable_div">
                            <div id= "ea_areatable">
                                    <button class = "select_btn" id= "GP">가평군</button>
                                    <button class = "select_btn" id= "GY">고양시</button>
                                    <button class = "select_btn" id= "GC">과천시</button>
                                    <button class = "select_btn" id= "GM">광명시</button>
                                    <button class = "select_btn" id= "GJ">광주시</button>
                                    <button class = "select_btn" id= "GL">구리시</button>
                                    <button class = "select_btn" id= "GP2">군포시</button>
                                    <br>
                                    <button class = "select_btn" id= "GP3">김포시</button>
                                    <button class = "select_btn" id= "NYJ">남양주시</button>
                                    <button class = "select_btn" id= "DDC">동두천시</button>
                                    <button class = "select_btn" id= "BC">부천시</button>
                                    <button class = "select_btn" id= "SN">성남시</button>
                                    <button class = "select_btn" id= "SW">수원시</button>
                                    <button class = "select_btn" id= "SH">시흥시</button>
                                    <br>
                                    <button class = "select_btn" id= "AS">안산시</button>
                                    <button class = "select_btn" id= "AY">안양시</button>
                                    <button class = "select_btn" id= "PJ">파주시</button>
                                    <button class = "select_btn" id= "PT">평택시</button>
                                    <button class = "select_btn" id= "PC">포천시</button>
                                    <button class = "select_btn" id= "HN">하남시</button>
                                    <button class = "select_btn" id= "HS">화성시</button>
                            </div>
                        </h3>
                    </div>  
                    <!-- </div> -->
                </div>
                    <!-- 대외활동 글쓰기 카테고리,대상,지역별 선택 -->
                    <div class = "sp_button">
                    <input type='button' class='result_btn' name='btn' value='초기화' style="float: right;" id="p_sp_search_reset">
                    <input type='button' class='result_btn' name='btn' value='검색' style="float: right;" id="p_sp_search_submit">
                    </div>
                   <br><br><br>
                   <!-- </div> -->
                   <div class="sp_search_result_table">
                        <h1>N건이 검색되었습니다.</h1><br>
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
    <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 