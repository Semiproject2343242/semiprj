<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
<%--     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/EA_writer.css"> --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
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
    margin-top: 100px;
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
    <h1 align="center">대외활동 글쓰기</h1>
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
              <select class="categoty_select" id="ea_category">
                  <option value="" selected disabled hidden >선택해주세요.</option>
                  <option value="1">공모전</option>
                  <option value="2">채용박람회/취업박람회</option>
                  <option value="3">경진대회</option>
                  <option value="4">봉사활동</option>
                  <option value="5">서포터즈</option>
                  <option value="6">관람/전시/체험</option>
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
            <th width="15%">제목</th>
            <td width="50%" colspan="3"><input type ="text" id="ea_title" name = "제목" placeholder="제목을 입력하세요." class=textline1></td>
          </tr>
          <tr>
            <th>모집 일정</th>
            <td colspan="3"><input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1>
              ~ <input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1> 까지</td>
          </tr>
          <tr>
            <th>활동 기간</th>
            <td colspan="3"><input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1>
              ~ <input type ="date" id="ea_re_date"name = "모집일정"  class=dateline1> 까지</td>
          </tr>
          <tr>
            <th>접수 방법</th>
            <td colspan="3"><textarea class="form-control" id="ea_re_apply" rows="8" name="접수방법" id="ea_text_apply" placeholder="내용을 입력해 주세요" ></textarea></td>
          </tr>
          <tr>
            <th>메인 이미지 첨부</th>
            <td colspan="3"><input type ="file" name = "이미지" class=textline2></td>
          </tr>
          <tr>
            <th>내용</th>
            <td colspan="3"><textarea class="form-control" name="내용" id="ea_text_Contents" placeholder="내용을 입력해 주세요" ></textarea></td>
          </tr>
          <tr>
            <th>내용 이미지 첨부</th>
            <td colspan="3"><input type ="file" name = "이미지" class=textline2></td>
          </tr>
          <tr>
            <th>참고자료</th>
            <td colspan="3"><input type ="file" name = "참고자료" laceholder="자료첨부" class=textline2></td>
          </tr>
          <tr>
            <th>기관명</th>
            <td colspan="3"><input type ="text" name = "기관명" id="ea_name_com" placeholder="기관명" class=textline1></td>
          </tr>
          <tr>
            <th>홈페이지</th>
            <td colspan="3"><input type ="text" name = "홈페이지" id="ea_com_url" placeholder="url을 입력하세요." class=textline1></td>
          </tr>
          <tr>
            <th>담당자</th>
            <td><input type ="text" name = "담당자" id="ea_manager_name" placeholder="담당자" class=textline3></td>
            <th>직위</th>
            <td><input type ="text" name = "직위" id="ea_manager_spot" placeholder="직위" class=textline3></td>
          </tr>
          <tr> 
            <th>연락처</th>
            <td><input type ="tel" name = "연락처" id="ea_manager_phone" placeholder="연락처" class=textline3></td>
            <th>이메일</th>
            <td><input type ="email" name = "이메일" id="ea_manager_email" placeholder="이메일" class=textline3></td>
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



 