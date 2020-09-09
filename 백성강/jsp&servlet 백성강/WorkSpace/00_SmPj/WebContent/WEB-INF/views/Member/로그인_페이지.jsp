<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
<style>

#ptag>a{
   text-decoration: none;
}
section{
   display: block;
}
.loginbox{
   width: 80%;
   padding: 2% 10%;
   text-align: center;
   /* margin-top: 10%; */
   background-color: rgb(248, 248, 248); ;
}
table{
   margin : 0px auto;
}
.logintext{
   height: 30px;
   width: 200px;
}
#loginButton{
   height: 80px;
}


</style>
</head>
<body>
<%@ include file="../Common/header.jsp" %>

   <section id=loginSection>
         <form action="<%=request.getContextPath()%>/login.me" method="post">
         <div class="loginbox">
            <h1 style="margin:0px;">로그인</h1>
            <table>
               <tr>
                  <td><input type="text" name="userId" id="userId" class="logintext" placeholder="아이디를 입력해주세요" autofocus tabindex="1"></td>
                  <td rowspan="2"><button type="submit"id=loginButton autofocus tabindex="3">로그인</button></td>
               </tr>
               <tr>
                  <td><input type="password" name="userPwd" id="userPwd" class="logintext" placeholder="비밀번호를 입력해주세요" autofocus tabindex="2"></td>
               </tr>
            </table>
            <p align="center" id="ptag">
               <a href="<%=request.getContextPath()%>/searchIdForm.me">아이디 찾기</a> | <a href="<%=request.getContextPath()%>/searchPwdForm.me">비밀번호 찾기</a> | <a href="<%=request.getContextPath()%>/insertForm.me">회원가입</a>
            </p>
         </div>
         </form>
   </section>

   <hr>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>

