<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.model.vo.Member"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정부지원금 바로지금</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
</head>
<style>
	section {
      display: block;
      line-height: 40px;
    }
    #main_section {
      width: 100%;
    }
    #pwsearchbutton{background-color:darkgray; border-radius: 3px; border:none;}
    .box{
   	 text-align: center;
   	 background-color: rgb(248, 248, 248); ;
   	}
    
</style>
<body>
	<%@ include file="../Common/header.jsp" %>
	    <section>
		    <aside>
				<h2>마이페이지</h2>
				<hr>
				<div>
					<h2>나의게시물</h2>
					<dl>
						<dt>
							<a href="${pageContext.request.contextPath}/myPageSupport.me">
								<h3>지원정책 게시판</h3>
							</a>
						</dt>
						<dt>
							<a href="${pageContext.request.contextPath}/myPageExternal.me">
								<h3>대외활동 게시판</h3>
							</a>
						</dt>
						<dt>
							<a href="${pageContext.request.contextPath}/myPageCommuFree.me">
								<h3>자유게시판</h3>
							</a>
						</dt>
						<dt>
							<a href="${pageContext.request.contextPath}/myPageQA.me">
								<h3>Q / A</h3>
							</a>
						</dt>
					</dl>
				</div>		
				<a href="${pageContext.request.contextPath}/memberInfo.me">
					<h2>회원정보</h2>
				</a>
				<a href="${pageContext.request.contextPath}/changePwdForm.me">
					<h2>비밀번호 변경</h2>
				</a>
				<a href="${pageContext.request.contextPath}/deleteForm.me">
					<h2>회원탈퇴</h2>
				</a>
			</aside>
		
        	<div id="main_section">
            	<section id=pw_serch_Section>
	            	<form action="<%=request.getContextPath()%>/changePwdForm.me" method="post">
	            	<input type="hidden" name="id" value="<%= loginUser.getMemberId() %>">
		            	<div class="box">
		            		<br>
							<h1><%= loginUser.getMemberId() %>님</h1>
							<h1> 현재 비밀번호를 입력해주세요.</h1>
							<table align="center" >	
								<tr>
									<td>비밀번호 : </td>
									<td align="left" ><input style="width:200px" type="password"  id="userPwd1" name="userPwd1" placeholder="비밀번호를 입력해주세요"></td>
									<td style="width:180px"><label   id="pwd1Result"></label></td>
								</tr>
								<tr>
									<td>비밀번호 확인:</td>
									<td align="left"><input style="width:200px" type="password" width="200px" id="userPwd2" name="userPwd2" placeholder="비밀번호를 다시 입력해주세요"></td>
									<td ><label   id="pwd2Result"></label></td>
								</tr>
							</table>
							<p>
		                        <input type="submit" style="width: 60pt; height: 30pt" id="pwsearchbutton"  value="확인">
		                        <input type="button" style="width: 60pt; height: 30pt" onclick="location.href='javascript:history.go(-1);'" value="취소">
		                    </p>
		                    <br>
						</div>
					</form>			
					<script>				
						$("#userPwd2").keyup(function(){
							if($("#userPwd1").val() != $(this).val()){
								$("#pwd2Result").text("비밀번호 불일치").css("color","red");
								isPw2 = false;
							}else{
								$("#pwd2Result").html("비밀번호가 일치합니다.").css("color","green");
								isPw2 = true;
							}
						});
					</script>
	            </section>
        	</div>
    	</section>
	 <%@ include file="../Common/footer.jsp" %>
</body>
</html>