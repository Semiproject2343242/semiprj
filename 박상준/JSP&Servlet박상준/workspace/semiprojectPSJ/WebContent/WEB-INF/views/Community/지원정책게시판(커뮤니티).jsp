<%@page import="board.model.vo.AddFile"%>
<%@page import="board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Board> bList = (ArrayList<Board>) request.getAttribute("bList");
	ArrayList<AddFile> fList = (ArrayList<AddFile>) request.getAttribute("fList");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
</head>
<style>
    
</style>
<body>
   <%@ include file="../Common/header.jsp" %>
    <section>
         <aside>
           <h2 ><a href="<%= request.getContextPath() %>/main.cm">커뮤니티</h2></a>
            <hr>
            <div>
            <dl>
             	<dt><a href="<%= request.getContextPath() %>/fMain.cm"><h3>자유게시판</h3></a></dt>
                <dt><a href="<%= request.getContextPath() %>/spMain.cm"><h3>지원정책 게시판</h3></a></dt>
                <dt><a href="<%= request.getContextPath() %>/eaMain.cm"><h3>대외활동 게시판</h3></a></dt>
               
            </dl>
            </div>
        </aside>
      <div id="main_section" align="center">
			<h2 align="center">지원 정책
			<div class="buttonArea">
				<%if (loginUser != null) {%>
				<input type="button" onclick="location.href='spInsertForm.cm'"
					id="insertBtn" value="작성하기">
				<%}%>
			</div>
			</h2>
			<ul class="thumbnailArea">
				<%if (bList.isEmpty()) {%>
				등록된 사진이 없습니다.
				<%} else {%>
				<%for (int i = 0; i < bList.size(); i++) {%>
				<%Board b = bList.get(i);%>
				<li class="thumb-list">
					<div class="imageArea">
						<input type="hidden" value="<%=b.getBoardNo()%>">
						<%for (int j = 0; j < fList.size(); j++) {%>
						<%AddFile f = fList.get(j);%>
						<%if (b.getBoardNo() == f.getBoardNo()) {%>
						<img
							src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=f.getChangeName()%>"
							width="150px" height="100%">
						<%}%>
						<%}%>
					</div>
					<div class="textArea">
						<p>
							<%=b.getBoardNo()%>.
							<%=b.getBoardTitle()%></p>
						<p>
							<b>접수상태 </b>
							<%=b.getAcState()%></p>
						<p>
							<b>지원대상 </b>
							<%=b.getTcName()%></p>
						<p>
							<b>지역 </b>
							<%=b.getLcName()%></p>
					</div>
				</li>
				<%}%>
				<%}%>
				<script>
			$(function(){
				$('.thumb-list').click(function(){
					var bId = $(this).children().children().eq(0).val();
					location.href='<%= request.getContextPath()%>/spDetail.cm?bId=' + bId;
				});
			});
		</script>
			</ul>
			<%@ include file="../Common/page.jsp"%>
			
		</div>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 