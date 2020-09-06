<%@page import="board.model.vo.Reply"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.model.vo.FileVO"%>
<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	Board b = (Board)request.getAttribute("board");
	System.out.println("공지사항내용확인.jsp에서의 board : " + b);
	ArrayList<FileVO> imageList = (ArrayList<FileVO>)request.getAttribute("imageList");
	ArrayList<FileVO> fileList = (ArrayList<FileVO>)request.getAttribute("fileList");
	ArrayList<Reply> replyList = (ArrayList<Reply>)request.getAttribute("replyList");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정부지원금 바로지금</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/공지사항내용확인.css">

    <style>
	  section{
	  	width: 950px;
	  }
	  	#filetext{
	  		margin-top : 220px;
	  	}
	  	.sub1{
	  		width: 80%;
			float:left;
	  	}
		.sub2{
			text-align:right;
		}
	  	.sub3{
	  		width:33%;
	  		float:left;
	  	}
	  	.sub4{
	  		width:33%;
	  		float:left;
	  		text-align:right;
	  	}
	  	.replyIWC{width: 430px;}
		.udlbtn{background-color:sky; width:70px; height:40px; margin:10px;}     
    </style>
</head>
<body>
    <%@ include file="../Common/header.jsp" %>
    <section>
    	<aside>
	    	<h2><%= b.getBoardNo() %></h2>
	        <hr />
	        <h2>제목</h2>
	        <h2>카테고리</h2>
	        <h2 id="content">내용</h2>
	    </aside>
        <div id="main_section">
			<form action="modifyForm.no" id="detailForm" name="detailForm" method="post">	        
	        
	        <input type="hidden" name="no" value="<%= b.getBoardNo() %>">
    		<input type="hidden" name="title" value="<%= b.getBoardTitle() %>" />
    		<input type="hidden" name="content" value="<%= b.getBoardContent() %>" />
			<input type="hidden" name="category" value="<%= b.getCgName() %>" />
            
       		<div class="sub1"><h4><%= b.getBoardTitle() %></h4></div><div class="sub2"><h4> 작성자 : <%= b.getBoardWriter()%></h4></div>

	        <div class="sub3"><h4><%= b.getCgName() %></h4></div><div class="sub4"><h4> 등록 날짜 : <%= b.getBoardModifyDate()%></h4></div><div class="sub4"><h4> 수정 날짜 : <%= b.getBoardModifyDate() %></h4></div><br>

		    <textarea cols="100" rows="15" name="content" style="resize:none;" readonly><%= b.getBoardContent() %></textarea>            
	        
	        <br clear="all"> 
	        <br>   
	        <hr>
	        <div id="div1">
	            <div style="text-align: center">
	            <%if(imageList.isEmpty()) {%>
	               	이미지 자료 없음.
	           	<% } else { %>
	           		<%for(int i=0; i < imageList.size(); i++) { %>
	           			<a href="<%= request.getContextPath() %>/UploadFolder/notice_uploadFiles/<%=imageList.get(i).getChangeName()%>">
						<img src="<%= request.getContextPath() %>/UploadFolder/notice_uploadFiles/<%= imageList.get(i).getChangeName() %>" width="300px" height="80%">
						</a><br>
					<% } %>
				<% } %>
	           	</div>
	            <br>            
	            <h4> 참고자료 (<%= fileList.size() %>) </h4>
	            <%if(fileList.isEmpty()) { %>
	              	첨부파일 없음.
	            <% } else { %>
	               	<%for(int i=0; i < fileList.size(); i++){ %>
						<a href="<%= request.getContextPath() %>/UploadFolder/notice_uploadFiles/<%=fileList.get(i).getChangeName()%>" download="<%= fileList.get(i).getOriginName() %>">
							<%=fileList.get(i).getOriginName()%>
						</a><br>
					<% } %>
				<% } %>
				<div align="right" style="background-color:skyblue;">
					<% if(b.getBoardWriter().equals(loginUser.getMemberNickName()) && loginUser != null || loginUser.getMemberNickName().equals("운영자")) { %>
						<input type="submit" class="udlbtn" id="updateBtn" value="수정">
						<input type="button" class="udlbtn" id="deleteBtn" value="삭제" onclick="deleteBoard();">	
					<% } %>
					<input type="button" class="udlbtn" onclick="location.href='<%= request.getContextPath() %>/main.no'" id="menuBtn" value="메뉴로">
					
					<script>
						function deleteBoard(){
							var num = <%= b.getBoardNo() %>;
							var result = window.confirm(num+'게시글을 삭제하시겠습니까?');
							var wno = <%= b.getBoardWriterNo()%>;
							console.log(wno);
						    if(result){
						    	location.href="<%= request.getContextPath() %>/delete.no?no="+num;
						    }
						    else{
						        alert('취소하셨습니다.');
						    }
						}
					</script>
				</div>
			</div>
			</form>
			<br><br>            
            <!-- 댓글 --> 

            <div> <h2>댓글</h2> </div>
            <hr><br>

            <div id="comment" 	style="line-height:20px; margin: 0px; padding:0px;">
            <% if(replyList.isEmpty()){ %>
               	<text class="text3"><p class="p1">댓글이 없습니다.</p></text>
            <% } else { %>
               	<% for(int i = 0; i < replyList.size(); i++) { %>
              	<table>
              	<% if(replyList.get(i).getProfileImageName() == null) { %>
	              	<td><img src="<%= request.getContextPath() %>/UploadFolder/member_profile/profileDefault.png"  width="80" height="80"  id="profile" style="float:top;")></td>
	            <% } else { %>  	
	              	<td><img src="<%= request.getContextPath() %>/UploadFolder/member_profile/<%= replyList.get(i).getProfileImageName() %>"  width="80" height="80"  id="profile" style="float:top;")></td>
	            <% } %>   	
	               	<text class="text3">
	               		<td style="margin:0px; vartical-align:top;">
	               			<p class="replyIWC"><h3><%= replyList.get(i).getReplyWriter() %></h3></p>
	               			<p class="replyIWC"><%= replyList.get(i).getReplyContent() %></p>
	               		</td>
	               	</text>
	              	<text class="text4">
	                  		
	               		<!-- 관리자랑 사용자랑 나눠서 사용해야한다. -->
	               		<td class="replyDU" style="width:200px; float:right;">
	               			<div><p style="float:right; margin:0px;">게시일 : <%= replyList.get(i).getCreateDate() %></p></div> <!-- 게시 날짜 -->
	               			<div><p style="float:right; margin:0px;">수정일 : <%= replyList.get(i).getModifyDate() %></p></div> <!-- 수정 날짜 -->
	               			<% if(replyList.get(i).getReplyWriter().equals(loginUser.getMemberNickName()) && loginUser != null || loginUser.getMemberNickName().equals("운영자")) { %>
								<div><p style="float:right; margin:0px;"><input type="button" class="udlbtn" id="deleteBtn" value="댓글 삭제" onclick="deleteReply(<%= replyList.get(i).getReplyNo() %>)"></p></div>
							<% } %>
						<script>
							function deleteReply(replyNo){
								var result = window.confirm(replyNo+' 댓글을 삭제하시겠습니까?');
								var boardNo = <%= b.getBoardNo() %>
								
							    if(result){
							    	location.href="<%= request.getContextPath() %>/replyDelete.re?replyNo="+replyNo+"&boardNo="+boardNo+"&bName=공지사항";
							    } else{
							        alert('취소하셨습니다.');
							    }
							}
						</script>   							
	               		</td>
	               	</text>
                </table>
                    <% } %>
               	<% } %>
                </div>             
                          
                <br clear="all"><br>
                        
                <form action="replyInsert.re">
	                <div>
	                    <textarea id="replytextarea" name="replyContent" placeholder="댓글을 입력하세요." style="width: 100%; height: 100px; resize: none;"></textarea><br>
	                   	<input type="hidden" name="boardNo" value="<%= b.getBoardNo() %>">
			            <input type="hidden" name="bName" value="공지사항">	
	                    <input type="submit" class= replySubmit value="등록" style="float:right;" >
	                </div>
                </form>
            </div>
		</section>            
        <br clear="all"><br>
        <%@ include file="../Common/footer.jsp" %>
        
</body>
</html>

