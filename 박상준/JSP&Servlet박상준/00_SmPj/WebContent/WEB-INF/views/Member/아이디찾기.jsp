<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 기본틀</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
</head>
<style>
    
	section {
      display: block;
      line-height: 40px;
    }
    #main_section {
      width: 100%;
    }
    .checknumber{width:100px;}
    #idsearchbutton{background-color:darkgray; border-radius: 3px; border:none;}
</style>
<body>
    <%@ include file="../Common/header.jsp" %>
    <section>
    
        <div id="main_section">
            <section id=id_serch_Section>
                <form>
                    <div>
                        <h1 align="center">아이디 찾기</h1>
                        
                        <table align="center">
                            <tr>
                                <td style = text-align:right>이름 :</td>
                                <td><input type="text" id="userName" placeholder="이름을 입력해주세요"></td>
                                <td></td>
                                <td></td>
                            <tr>
                                <td style = text-align:right><input type=radio name=idsearchradio>휴대폰번호 :</td>
                                <td><input type="phone" id="userPhone" placeholder="'-' 없이 입력해주세요"></td>
                                <td><button>인증번호 받기</button></td>
                                <td><input type="text" class="checknumber" placeholder="인증번호"></td>
                            </tr>   
                            </tr>
                            <tr>
                                <td style = text-align:right><input type=radio name=idsearchradio>이메일 :</td>
                                <td><input type="email" id="userEmail" placeholder="이메일을 입력해주세요"></td>
                                <td><button>인증번호 받기</button></td>
                                <td><input type="text" class="checknumber" placeholder="인증번호"></td>
                            </tr>
                        </table>
                        
                        <p align="center"><input type="button" id="idsearchbutton" style="width: 60pt; height: 30pt" value="확인"></p>
                    </div>
                </form>
            </section>
        </div>
    </section>
    <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 