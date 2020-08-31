<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	ArrayList<Board> noticeList = (ArrayList<Board>)request.getAttribute("noticeList");
	ArrayList<Board> supportList = (ArrayList<Board>)request.getAttribute("supportList");
	ArrayList<Board> externalList = (ArrayList<Board>)request.getAttribute("externalList");
	ArrayList<Board> commuList = (ArrayList<Board>)request.getAttribute("commuList");
	ArrayList<Board> qaList = (ArrayList<Board>)request.getAttribute("qaList");
	
%>
    
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="resources/css/body.css">
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
section{display: block;}
.mySerach {
  width: 100px;
  height: 30px;
  margin-left: 100px;
}

#mySerach {
  width: 100%;
  height: 80px;
  margin-left: 20px;
  background-color: #efefef;
}

/* 이미지 슬라이더 */
.swiper-container {
	height:420px;
	border:5px solid silver;
	border-radius:7px;
	box-shadow:0 0 20px #ccc inset;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	box-shadow:0 0 5px #555;
	max-width:90%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
	/* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */
}

/* 이미지 슬라이더 */
.notice_util_area {
  padding: 24px 14px 0px 20px;
  /* float: left; */
}

.policy_util_area {
  /* float: left; */
  padding: 24px 14px 0px 20px;
}

.community_util_area {
  padding: 24px 14px 0px 20px;
  /* float: left; */
}

.external_util_area {
  /* float: left; */
  padding: 24px 14px 0px 20px;
}

/* .list_type_a {
  display: inline;
} */

.util_area {
  display: flex;
}

.notice_util_area {
  padding: 0px;
  padding-top: 24px;
  width: 50%;
}

.policy_util_area {
  padding: 0px;
  padding-top: 24px;
  width: 50%;
}
.list_type_a ul {
  padding: 0px;
  padding-top: 20px;
  margin: 0px;
  list-style: none;
  font-family: "돋움";
}

/* external_util_area
community_util_area */
.community_util_area {
  padding: 0px;
  padding-top: 24px;
}

.external_util_area {
  padding: 0px;
  padding-top: 24px;
}

.list_type_a li {
  line-height: 30px;
  margin: 0px 15px;
}
.list_type_a li:hover {
  font-weight: bold;
}

.list_type_b {
  padding: 0px;
  /* border: 1pxblack; */
  /* width: 80%; */
  font-size: 14px;
}

.list_type_b ul {
  padding: 0px;
  padding-top: 20px;
  margin: 0px;
  list-style: none;
  column-count: 2;
  font-family: "돋움";
}

.list_type_b li {
  line-height: 30px;
  margin: 0px 15px;
}

.list_type_b li:hover {
  font-weight: bold;
}

.area_title {
  display: flex;
  align-items: center;
  padding-left: 20px;
  margin-bottom: 0px;
  height: 40px;
  background-color: rgb(15, 76, 130);
  border-radius: 7px;
  color: rgb(255, 213, 0);
}
.area_title a {
  text-decoration: none;
  color: white;
}
.area_title a:hover {
  color: black;
  font-weight: bold;
}

.all_link_area {
  margin-left: 40px;
  font-size: 12px;
}

/* .area_list{ */
/*  	width:50%; */
/*  	float:left; */
/*  } */

.area_date{
	width:50%;
	float:right;
}
</style>
 
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>

</head>
<body>
<%@ include file="../Common/header.jsp" %>
<section>
	<!-- 이미지 슬라이더 -->
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>


	<!-- 클래스명은 변경하면 안 됨 -->
	<div class="swiper-container">
	<div class="swiper-wrapper">
		<div class="swiper-slide" ><img src="Media/mainimage_1.png"></div>
		<div class="swiper-slide" ><img src="Media/mainimage_2.png"></div>
		<div class="swiper-slide" ><img src="Media/mainimage_3.png"></div>
	</div>

	<!-- 네비게이션 -->
	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev"></div><!-- 이전 버튼 -->

	<!-- 페이징 -->
	<div class="swiper-pagination"></div>
</div>

<script>

new Swiper('.swiper-container', {

	slidesPerView : 1, // 동시에 보여줄 슬라이드 갯수
	spaceBetween : 10, // 슬라이드간 간격
	slidesPerGroup : 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

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

</script>
	<!-- 이미지 슬라이더 -->
	<div class="util_area">
		<div class="notice_util_area" >
			<div class="list_type_a">
				<div class="area_title">
					<a href="<%= request.getContextPath() %>/main.no"><h3>공지사항</h3></a>
				</div>
                <ul>
                  <% if(noticeList.isEmpty()) { %>
							<li><a href="#" class="area_list">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : noticeList) { %>
								<li>
										<input type="hidden" value="<%= b.getBoardNo() %>">
									<div class="area_list"><%= b.getBoardTitle() %><div class="area_date"><%= b.getBoardCreateDate() %></div></div>
								</li>
							<% } %>
						<% } %>
                </ul>
            </div>
         </div>
   <!-- 	<script> 
        $(function(){
	            $('.area_list').mouseenter(function(){
	               $(this).css({'cursor':'pointer'});
	            }).mouseout(function(){
	               $(this).css('none');
	            }).click(function(){
	               var bId = $(this).parent().children('input').val();
	               <% if(loginUser != null){%>
	                  location.href = '<%= request.getContextPath() %>/q_detail.qa?bId=' + bId;
	               <% }else{ %>
	                  alert('회원만 이용할 수 있는 서비스입니다.')
	               <% } %>
	            })
         })
 </script> -->
	<div class="policy_util_area" >
 		<div class="list_type_a">
			<div class="area_title">
				<a href="<%= request.getContextPath() %>/main.sp"><h3>지원정책</h3></a>
			</div>
            <ul>
              <% if(supportList.isEmpty()) { %>
							<li><a href="#" class="area_list">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : supportList) { %>
								<li>
									<input type="hidden" value="<%= b.getBoardNo() %>">
									<div class="area_list"><%= b.getBoardTitle() %><div class="area_date"><%= b.getBoardCreateDate() %></div></div>
								</li>
							<% } %>
						<% } %>
            </ul>
           </div>
		</div>
	</div>
   
	<div class="external_util_area" >
		<div class="list_type_b">
			<div class="area_title">
	            <a href="#"><h3>대외활동</h3></a>
			</div>
            <ul>
                 <% if(externalList.isEmpty()) { %>
							<li><a href="#" class="area_list">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : externalList) { %>
								<li>
									<input type="hidden" value="<%= b.getBoardNo() %>">
									<div class="area_list"><%= b.getBoardTitle() %><div class="area_date"><%= b.getBoardCreateDate() %></div></div>
									
								</li>
							<% } %>
						<% } %>
            </ul>
		</div>
	</div>
<!-- 	<script> 
        $(function(){
	            $('.area_list').mouseenter(function(){
	               $(this).css({'cursor':'pointer'});
	            }).mouseout(function(){
	               $(this).css('none');
	            }).click(function(){
	               var bId = $(this).parent().children('input').val();
	               <% if(loginUser != null){%>
	                  location.href = '<%= request.getContextPath() %>/q_detail.qa?bId=' + bId;
	               <% }else{ %>
	                  alert('회원만 이용할 수 있는 서비스입니다.')
	               <% } %>
	            })
         })
 </script> -->
 
  	<div class="community_util_area" >
		<div class="list_type_b">
 			<div class="area_title">
				<a href="#"><h3>커뮤니티</h3></a>
                <div class="all_link_area">
                   <a href="<%= request.getContextPath() %>/fMain.cm">자유게시판</a>
                   <span class="text_bar">|</span>
                   <a href="<%= request.getContextPath() %>/spMain.cm">지원정책</a>
                   <span class="text_bar">|</span>
                   <a href="<%= request.getContextPath() %>/eaMain.cm">대외활동</a>
                </div>
			</div>
            <ul>
              <% if(commuList.isEmpty()) { %>
							<li><a href="#" class="area_list">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : commuList) { %>
								<li>
									<div class="area_list">[<%= b.getBoardName() %>]<%= b.getBoardTitle() %><div class="area_date"><%= b.getBoardCreateDate() %></div></div>
								</li>
							<% } %>
						<% } %>
            </ul>
		</div>
	</div>
	<!-- 	<script> 
        $(function(){
	            $('.area_list').mouseenter(function(){
	               $(this).css({'cursor':'pointer'});
	            }).mouseout(function(){
	               $(this).css('none');
	            }).click(function(){
	               var bId = $(this).parent().children('input').val();
	               <% if(loginUser != null){%>
	                  location.href = '<%= request.getContextPath() %>/q_detail.qa?bId=' + bId;
	               <% }else{ %>
	                  alert('회원만 이용할 수 있는 서비스입니다.')
	               <% } %>
	            })
         })
 </script> -->
	<div class="external_util_area" >
		<div class="list_type_b">
			<div class="area_title">
	            <a href="#"><h3>QA_TEST용</h3></a>
			</div>
            <ul>
                 <% if(qaList.isEmpty()) { %>
							<li><a href="#" class="area_list_qa">조회된 리스트가 없습니다.</a></li>
						<% } else { %>
							<% for (Board b : qaList) { %>
								<li>
									<input type="hidden" value="<%= b.getBoardNo() %>">
									<div class="area_list_qa"><%= b.getBoardTitle() %><div class="area_date"><%= b.getBoardCreateDate() %></div></div>
									
								</li>
							<% } %>
						<% } %>
            </ul>
		</div>
	</div>
	<script>
        $(function(){
	            $('.area_list_qa').mouseenter(function(){
	               $(this).css({'cursor':'pointer'});
	            }).mouseout(function(){
	               $(this).css('none');
	            }).click(function(){
	               var bId = $(this).parent().children('input').val();
	               <% if(loginUser != null){%>
	                  location.href = '<%= request.getContextPath() %>/q_detail.qa?bId=' + bId;
	               <% }else{ %>
	                  alert('회원만 이용할 수 있는 서비스입니다.')
	               <% } %>
	            })
         })
      </script>
</section>
<br>
<%@ include file="../Common/footer.jsp" %>

</body>
</html>