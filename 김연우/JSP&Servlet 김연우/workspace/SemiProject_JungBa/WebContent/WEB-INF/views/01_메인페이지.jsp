<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="../../resources/css/headerfooter.css">
 <link rel="stylesheet" type="text/css" href="../../resources/css/maincontents.css">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
	<%@ include file="../common/header.jsp" %>
<section>
   <!-- 이미지 슬라이더 -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
      <div class="swiper-container">
         <div class="swiper-wrapper">
            <div class="swiper-slide" ><img src="http://oldmidi.cdn3.cafe24.com/p/0315.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0316.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0067.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0423.jpg"></div>
            <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0074.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0637.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0348.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0824.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0764.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0239.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0804.jpg"></div>
            <div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0441.jpg"></div>
            <div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0178.jpg"></div>
            <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0454.jpg"></div>
            <div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0187.jpg"></div>
         </div>
      
         <!-- 네비게이션 -->
         <div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
         <div class="swiper-button-prev"></div><!-- 이전 버튼 -->
      
         <!-- 페이징 -->
         <div class="swiper-pagination"></div>
      </div>
      <!-- 이미지 슬라이더 -->
      <div class="util_area">
         <div class="notice_util_area" >
            <div class="list_type_a">
                  <div class="area_title">
                     <a href="#"><h3>공지사항</h3></a>
                  </div>
                  <ul>
                     <li>
                        <a href="#">공지사항 최신글1</a>
                     </li>
                     <li>
                        <a href="#">공지사항 최신글2</a>
                     </li>
                     <li>
                        <a href="#">공지사항 최신글3</a>
                     </li>
                     <li>
                        <a href="#">공지사항 최신글4</a>
                     </li>
                  </ul>
            </div>
         </div>
   
         <div class="policy_util_area" >
            <div class="list_type_a">
                  <div class="area_title">
                     <a href="#"><h3>지원정책</h3></a>
                  </div>
                  <ul>
                     <li>
                        <a href="#">지원정책 최신글1</a>
                     </li>
                     <li>
                        <a href="#">지원정책 최신글2</a>
                     </li>
                     <li>
                        <a href="#">지원정책 최신글3</a>
                     </li>
                     <li>
                        <a href="#">지원정책 최신글4</a>
                     </li>
                  </ul>
            </div>
         </div>
      </div>
   
      <div class="community_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>커뮤니티</h3></a>
                  <div class="all_link_area">
                     <a href="#">커뮤니티1</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티2</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티3</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티4</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">커뮤니티 최신글1</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글2</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글3</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글4</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글5</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글6</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글7</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글8</a>
                  </li>
               </ul>
         </div>
      </div>
   
      <div class="external_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>대외활동</h3></a>
                  <div class="all_link_area">
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">대외활동 최신글1</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글2</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글3</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글4</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글5</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글6</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글7</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글8</a>
                  </li>
               </ul>
         </div>
      </div>
   
      <div class="community_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>커뮤니티</h3></a>
                  <div class="all_link_area">
                     <a href="#">커뮤니티1</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티2</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티3</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티4</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">커뮤니티 최신글1</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글2</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글3</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글4</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글5</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글6</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글7</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글8</a>
                  </li>
               </ul>
         </div>
      </div>
   
      <div class="external_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>대외활동</h3></a>
                  <div class="all_link_area">
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">대외활동 최신글1</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글2</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글3</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글4</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글5</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글6</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글7</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글8</a>
                  </li>
               </ul>
         </div>
      </div>
      <div class="community_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>커뮤니티</h3></a>
                  <div class="all_link_area">
                     <a href="#">커뮤니티1</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티2</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티3</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티4</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">커뮤니티 최신글1</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글2</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글3</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글4</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글5</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글6</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글7</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글8</a>
                  </li>
               </ul>
         </div>
      </div>
   
      <div class="external_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>대외활동</h3></a>
                  <div class="all_link_area">
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">대외활동 최신글1</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글2</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글3</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글4</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글5</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글6</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글7</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글8</a>
                  </li>
               </ul>
         </div>
      </div> <div class="community_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>커뮤니티</h3></a>
                  <div class="all_link_area">
                     <a href="#">커뮤니티1</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티2</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티3</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티4</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">커뮤니티 최신글1</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글2</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글3</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글4</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글5</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글6</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글7</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글8</a>
                  </li>
               </ul>
         </div>
      </div>
   
      <div class="external_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>대외활동</h3></a>
                  <div class="all_link_area">
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">대외활동 최신글1</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글2</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글3</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글4</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글5</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글6</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글7</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글8</a>
                  </li>
               </ul>
         </div>
      </div> <div class="community_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>커뮤니티</h3></a>
                  <div class="all_link_area">
                     <a href="#">커뮤니티1</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티2</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티3</a>
                     <span class="text_bar">|</span>
                     <a href="#">커뮤니티4</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">커뮤니티 최신글1</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글2</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글3</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글4</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글5</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글6</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글7</a>
                  </li>
                  <li>
                     <a href="#">커뮤니티 최신글8</a>
                  </li>
               </ul>
         </div>
      </div>
   
      <div class="external_util_area" >
         <div class="list_type_b">
               <div class="area_title">
                  <a href="#"><h3>대외활동</h3></a>
                  <div class="all_link_area">
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                     <span class="text_bar">|</span>
                     <a href="#">대외활동</a>
                  </div>
               </div>
               <ul>
                  <li>
                     <a href="#">대외활동 최신글1</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글2</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글3</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글4</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글5</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글6</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글7</a>
                  </li>
                  <li>
                     <a href="#">대외활동 최신글8</a>
                  </li>
               </ul>
         </div>
      </div>
      <!-- <br clear="all"> -->
      <div id="mySerach" align = "middle">
            <h3><p align = "left" style="padding-left: 30px;">나를 위한 지원금 찾기</p></h3>   
            <div align ="left">
            <select id = "age" class="mySerach" > 
               <option value="1">청년</option>
               <option value="2">중년</option>
               <option value="3">노년</option>
            </select> 
            <select id = "gender" class="mySerach" > 
               <option value="1">남</option>
               <option value="2">여</option>
            </select> 
            <select id = "location" class="mySerach">
               <option value="1">가평군</option>
               <option value="2">고양시</option>
               <option value="3">과천시</option>
               <option value="4">광명시</option>
               <option value="5">광주시</option>
               <option value="6">구리시</option>
               <option value="7">군포시</option>
               <option value="8">김포시</option>
               <option value="9">남양주시</option>
               <option value="10">동두천시</option>
               <option value="11">부천시</option>
               <option value="12">성남시</option>
               <option value="13">수원시</option>
               <option value="14">시흥시</option>
               <option value="15">안산시</option>
               <option value="16">안성시</option>
               <option value="17">안양시</option>
               <option value="18">양주시</option>
               <option value="19">양평군</option>
               <option value="20">여주시</option>
               <option value="21">연천군</option>
               <option value="22">오산시</option>
               <option value="23">용인시</option>
               <option value="24">의왕시</option>
               <option value="25">의정부시</option>
               <option value="26">이천시</option>
               <option value="27">파주시</option>
               <option value="28">평택시</option>
               <option value="29">포천시</option>
               <option value="30">하남시</option>
               <option value="31">화성시</option>
            </select>
            <button onclick="search();">검색</button>
            </div>   
         </div>
         <br>
</section>
<%@ include file="../common/footer.jsp" %>

<script>
// 이미지 슬라이더
   new Swiper('.swiper-container', {
   
      slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
      spaceBetween : 30, // 슬라이드간 간격
      slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
   
      // 그룹수가 맞지 않을 경우 빈칸으로 메우기
      // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
      loopFillGroupWithBlank : true,
   
      loop : true, // 무한 반복
   
      pagination : { // 페이징
         el : '.swiper-pagination',
         clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
      },
      navigation : { // 네비게이션
         nextEl : '.swiper-button-next', // 다음 버튼 클래스명
         prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
      },
   });
// 이미지 슬라이더
   
</script>
</body>
</html>