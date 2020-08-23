<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
    <link rel="stylesheet" type="text/css" href="../../../resources/css/EA_writer.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/body.css">
</head>
<style>
 section{
      display: block;
  }
  .writerinformanion_box{
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
  .writer_box{
      margin: 0px auto;
  }
  .writer_table{
    margin: 0px;
    width: 100%;
    line-height: 80px;
  }
  
  .writer_text{
      margin-left: 80px;
      line-height: 160px;
      width: 100%;
  }
  textarea{
    height: 100px;
    width: 80%;
    resize: none;
  }
  .textline1{
    width: 80%;
    height: 30px;
  }

  .ea_button{
    margin: 0 auto; 
    text-align: center;
  }

  .result_btn{
    height: 50px;
    width: 100px;
    margin: 30px;
  }
</style>
<body>
    <%@ include file="../Common/header.jsp" %>
 <!----------------------------------------header------------------------------------------->
     <section>
  <!-- <from> -->
    <h1 align="center">지원정책 글쓰기</h1>
    <div class="writerinformanion_box">
      <ul class="writertext">
          <th>
              <li class="infomation-item"><h3>카테고리</h3></li>
              <li class="infomation-item"><h3>대상</h3></li>
              <li class="infomation-item"><h3>지역</h3></li>
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
    <div class="writer_box">
        <table class="writer_table">
          <tr>
            <th width="10%">제목</th>
            <td width="80%"><input type ="text" id="ea_title" name = "제목" placeholder="제목을 입력하세요." class=textline1></td>
          </tr>
          <tr>
            <th>모집 일정</th>
            <td><input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1>
              ~ <input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1> 까지</td>
          </tr>
          <tr>
            <th>접수 방법</th>
            <td><textarea class="form-control" id="ea_re_apply" rows="8" name="접수방법" id="ea_text_apply" placeholder="내용을 입력해 주세요" ></textarea></td>
          </tr>
          <tr>
            <th>메인 이미지 첨부</th>
            <td><input type ="file" name = "이미지" class=textline2></td>
          </tr>
          <tr>
            <th>홈페이지</th>
            <td><input type ="text" name = "홈페이지" id="ea_com_url" placeholder="url을 입력하세요." class=textline1></td>
          </tr>
          <tr>
            <th>내용</th>
            <td><textarea class="form-control" name="내용" id="ea_text_Contents" placeholder="내용을 입력해 주세요" ></textarea></td>
          </tr>
        </table>
    </div>
    <div class = "ea_button">
        <button id = ea_submit class="result_btn">등록</button>
        <button id = ea_cancle class="result_btn">취소</button>
    </div>
  <!-- </from> -->
</section>  
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>



 