<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>정부지원금 바로지금</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
  </head>
  <style>
  	#titleImgArea {width:350px; height:200px; border:2px dashed darkgray; text-align:center; display:table-cell; vertical-align:middle;}
	#titleImgArea:hover, #contentImgArea1:hover, #contentImgArea2:hover, #contentImgArea3:hover {cursor:pointer;}
	#contentImgArea1, #contentImgArea2, #contentImgArea3 {
		width:150px; height:100px; border:2px dashed darkgray;
		text-align:center; display:table-cell; vertical-align:middle;
	}
	#insertThumbTable{margin: auto;}
  
  #filetext{
  		margin-top : 220px;
  	}
  </style>
  <body>
    <%@ include file="../Common/header.jsp" %>
    <section>
      <aside>
        <h2>묻고답하기</h2>
        <hr />
        <h2>제목</h2>
        <h2>카테고리</h2>
        <h2>내용</h2>
        <h2 id="filetext">첨부파일</h2>
      </aside>
      <div id="main_section">
	      <form action="<%= request.getContextPath() %>/insert.qa" method="post" encType="multipart/form-data"><!-- 파일올리는 거기 때문에 -->
			<h2>질문하기</h2>
			<hr />
			<h2>
			<input type="text" size="50" name="title" placeholder="제목을 입력해주세요.">
			</h2>
			<h2>
			  <select name="category">
			    <option value="이용관련">이용관련</option>
			    <option value="회원관련">회원관련</option>
			    <option value="게시글등록">게시글 등록</option>
			    <option value="이벤트">이벤트</option>
			    <option value="신고">신고</option>
			    <option value="기타">기타</option>
			  </select>
			</h2>
			<h2><textarea id="textarea" name="content" placeholder="내용을 입력해주세요." cols="100" rows="15" style="resize:none;"></textarea></h2>
			<h2><input type="file" name="file" /></h2>
			<hr />
			<hr>
				<div id="titleImgArea">
					<img id="titleImg" width="350" height="200">
				</div>

				<div id="fileArea">
				<input type="file" id="thumbnailImg1" multiple="multiple" name="thumbnailImg1" onchange="LoadImg(this,1)">
			</div>
			<h2>
			<div align="right">
               <input type="submit" id="insertNoBtn" value="등록">
               <input type="button" onclick="location.href='javascript:history.go(-1);'" id="cancelBtn" value="취소">
            </div>
			</h2>
		</form>
	</div>
      
      <script>	
      // 내용 작성 부분의 공간을 클릭할 때 파일 첨부 창이 뜨도록 설정하는 함수
      $(function(){
    	  $("#fileArea").hide();
    	  
    	  $("#titleImgArea").click(function(){
    		  $("#thumbnailImg1").click();	
    	  });
    	  $("#contentImgArea1").click(function(){
    		  $("#thumbnailImg2").click();
    	  });
    	  $("#contentImgArea2").click(function(){
    		  $("#thumbnailImg3").click();
    	  });
    	  $("#contentImgArea3").click(function(){	
    		  $("#thumbnailImg4").click();
    	  });
      });
					
      // 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 함수				
      function LoadImg(value, num){		
    	  if(value.files && value.files[0]){			
    		  var reader = new FileReader();
    		  reader.onload = function(e){											
    			  switch(num){
    			  case 1: 
    				  $("#titleImg").attr("src", e.target.result);	
    				  break;			
    			  case 2:	
    				  $("#contentImg1").attr("src", e.target.result);
    				  break;			
    			  case 3: 
    				  $("#contentImg2").attr("src", e.target.result);	
    				  break;			
    			  case 4:	
    				  $("#contentImg3").attr("src", e.target.result);
    				  break;  
    			  }			
    		  }	
    		  reader.readAsDataURL(value.files[0]);	
    	  }			
      }		
      </script>
      
    </section>
    <%@ include file="../Common/footer.jsp" %>
  </body>
</html>
