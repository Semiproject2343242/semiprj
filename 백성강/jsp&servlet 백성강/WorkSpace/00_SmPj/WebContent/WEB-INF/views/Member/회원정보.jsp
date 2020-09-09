<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css">
</head>
<style>
	section {
      display: flex;
      line-height: 40px;
    }
    #main_section {
      width: 100%;
    }
    .box{
    	width:50%;
   		text-align: center;
   		background-color: rgb(248, 248, 248); ;
   		border:1px solid black;
   		margin-left:30%
   	}
    #topic{
        border-bottom:1.5px solid black;
    }
  
  
</style>
<body>
   <%@ include file="../Common/header.jsp" %>
    <section>
		<aside>
			<h2>마이페이지</h2>
			<hr>
			<div >
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
			<a href="${pageContext.request.contextPath}/deleteForm.me">
				<h2>회원탈퇴</h2>
			</a>
		</aside>
		
        <div id="main_section" align="center">
            <div class="outer" align="center" >
                <br>
                <div class="box">
                <h2 align="center">회원정보</h2>
                
                <form action="<%= request.getContextPath() %>/update.me" method="post" id="updateForm" name="updateForm">
                    <table align="center">
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
						<input type="submit" style="width: 60pt; height: 30pt" value="수정">
		            	<input type="button" style="width: 60pt; height: 30pt" onclick="location.href='javascript:history.go(-1);'" value="취소">
                    </div>
                    <br>
                </form>
            	</div>
        	</div>
    	</div>
    </section>
   <%@ include file="../Common/footer.jsp" %>
</body>
</html>
