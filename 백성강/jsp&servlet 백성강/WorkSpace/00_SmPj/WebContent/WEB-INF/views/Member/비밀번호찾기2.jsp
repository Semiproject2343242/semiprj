<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.model.vo.Member"%>
<%
	 Member m = (Member)request.getAttribute("m"); 
%> 
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
        	<div id="main_section">
            	<section id=pw_serch_Section>
	            	<form action="<%=request.getContextPath()%>/SearchPwdServlet2.me" method="post">
		            	<div class="box">
		            		<br>
							<h1><%= m.getMemberId() %>님</h1>
							<input type="hidden" name="id" value="<%= m.getMemberId() %>">
							<h1> 새로운 비밀번호를 입력해주세요.</h1>
							<table align="center" >	
								<tr>
									<td>비밀번호 : </td>
									<td align="left" ><input style="width:200px" type="password"  id="userPwd1" name="userPwd1" placeholder="비밀번호를 입력해주세요"></td>
									<td><label id="pwd1Result"></label></td>
								</tr>
								<tr>
									<td></td>
									<td colspan=2><span class="info">6~12자로 영어와 숫자, !*$만 가능합니다.(영어로 시작)</span></td>
							  	</tr>
								<tr>
									<td>비밀번호 확인:</td>
									<td align="left"><input style="width:200px" type="password" width="200px" id="userPwd2" name="userPwd2" placeholder="비밀번호를 다시 입력해주세요"></td>
									<td><label id="pwd2Result"></label></td>
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
						$("#userPwd1").change(function(){
							var regExp = /^[a-zA-Z]([a-zA-Z0-9\!\*\$]){5,11}$/;
							
							if(!regExp.test($(this).val())){
								$("#pwd1Result").text("불가능한 비밀번호 입니다.").css("color","red");
								isPw = false;
							}else{
								$("#pwd1Result").text("가능한 비밀번호 입니다.").css("color","green");
								$(this).css("background","initial");
								isPw = true;
							}
						});

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