<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
<link rel="stylesheet" type="text/css" href="../../../resources/css/body.css">
</head>
<style>
	   section {
      display: flex;
      line-height: 40px;
    }
    #main_section {
      width: 100%;
    }
    .div1{
        float: left;;
        padding-left: 40%;
    }
    #topic{
        border-bottom:1.5px solid black;
    }
  
  
</style>
<body>
   <%@ include file="../Common/header.jsp" %>
    <section>
        <aside>
           <a href="#"> <h2 id="topic">마이페이지</h2></a>
            <hr>
            <div> <a href="#"><h2>회원정보</h2></a>
            
            <dl>   
                <dt><a href="#"><h3>&nbsp;정보게시판</h3></a></dt>
                <dt><a href="#"><h3>&nbsp;자유게시판</h3></a></dt>
                <dt><a href="#"><h3>&nbsp;Q / A</h3></a></dt>
                <dt><a href="#"><h3>&nbsp;회원정보 수정</h3></a></dt>
                <dt><a href="#"><h3>&nbsp;회원탈퇴</h3></a></dt>
            </dl>
            </div>
        </aside>
        <div id="main_section">
            <div class="outer">
                <br>
                <div class="div1">
                <h2 align="center">회원정보 수정</h2>
                
                <form action="<%= request.getContextPath() %>/update.me" method="post" id="updateForm" name="updateForm">
                    <table>
                        <tr>
                            <td width="200px"><label class="must">*</label> 아이디</td>
                            <td width="200px"><input type="text" name="myId" style="background:lightgray;" readonly></td>
                        </tr>
                        <tr>
                            <td><label class="must">*</label> 이름</td>
                            <td><input type="text" name="myName" required></td>
                        </tr>
                     
                        <tr>
                            <td>연락처</td>
                            <td>
                                <input type="tel" maxlength="11" name="myPhone" placeholder="(-없이)01012345678">
                            </td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td><input type="email" name="myEmail"></td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td><input type="text" name="myAddress"></td>
                        </tr>
                    
                    </table>
                    
                    <br>
                    
                    <div class="btns" align="center">
                        <input id="updateBtn" type="submit" value="수정하기">
                        <input type="button" id="cancelBtn" onclick="location.href='javascript:history.go(-1)'" value="취소하기">
                    </div>
                </form>
            </div>
          
        </div>
    </div>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>
