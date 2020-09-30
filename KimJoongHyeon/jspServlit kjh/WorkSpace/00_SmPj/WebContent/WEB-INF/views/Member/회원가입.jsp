<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        <script  src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    </head>
    <style>
    html, body {
	margin: 0px;
	height: 100%;
	min-width: 505px;
}

.lagefont {
	color: rgb(15, 76, 130);
}

section {
	display: flex;
	margin: 0 auto;
	width: 80%;
	font-family: "fantasy";
	position: relative;
	min-height: 80%;
	line-height: 40px;
}

aside {
	min-height: 100%;
	float: left;
	display: block;
	width: 200px;
	line-height: 40px;
	margin-left: 5px;
}

#main_section {
	width: 100%;
	min-height: 100%;
	margin: 0px 50px;
}

a {
	text-decoration: none;
	color: black;
}

hr {
	color: black;
	background-color: black;
	height: 1px;
	margin: 0px;
	border: 1px;
}

.pagination a{
    padding: 8px 16px;
    text-decoration: none;
    border: 1px solid black;
    color: black;
    border-radius : 3px;
}    
.pagination a:hover:not(.action){
    background-color: gray;
}

/* pagination 설정부  */
.com{text-indent : 20px;}

 	.btn{
  		background-color : #E3F2FD;
  		margin : 10px 2px;
  		padding: 10px;
  	}
.contentsTable{text-align:center; font-size:12pt;}
.contentsTable thead{background-color:rgb(15, 76, 130); color:white;}
.contentsTable tbody{background-color:#F7F7F7}
#tablename{align-self:center;}
#게시판이름{text-align:center;}

    
        section {
            line-height: 40px;
        }
        #main_section {
            width: 100%;
        }
        .signup {

            text-align: left;

        }
        #signup1 {
            background-color:rgb(15, 76, 130);
            color:white;

        }
        #signup2 {
            border: 1px solid black;
            padding: 3%;
        }
        #sign1 {
         background: #97BAD6; 
         padding-bottom: 10px;
        }
        #signup4{
           margin-top:-3%;
           margin-bottom: 3%;
         padding: 5px;
         border: 1px solid black;
        }
        #signup5{     
     
           text-align:center;
        }

        td{
           text-align:center;
        }
        .middletable{
           text-align:left;
        }
		#idCheck, #nickCheck{border-radius: 15px; color: white; background: #FFD8D8;}
		#joinForm td {text-align: center;}
		#joinForm tr:nth-child(1) > td:nth-child(3),
         #joinForm tr:nth-child(5) > td:nth-child(3){text-align: center;}
      #joinForm.input{
         text-align: left;
      }   
		#signUpBtn {background: #D1B2FF; color: white;}
		#goMain {background: #B2CCFF; color: white;}
		td>.must{color: red; font-weight: bold;}
      #signUpBtns{
         text-align: center;
         padding-right:0%;
      }
      #test{
         padding-left:27%
      }
      
      .div11{
         background: #97BAD6; 
         border-bottom:1px solid black;
         color:white;
        
        float: left; 
        text-align: left;
        width:100%;
        height:45px;        

    }
    .btn{
      float:right;
      border:none;
      cursor: pointer;
      background-color:#97BAD6; 
      color:white;
    }
    .contents{  
      overflow:scroll;
        background-color: lightgray;
        width:100%; 
        height: 200px; 
        display: none;          
    } 
    #mtable{
      border-collapse: collapse;
      border:1px solid black;
      width:100%;
    }
    #mtable td{

      border-collapse: collapse;
      border-bottom:1px solid black;
      border-right:1px solid black;
    }
    
    input[type="tel"]{
    	width: 50px;
    }
    </style>
    <body>
		<%@ include file="../Common/header.jsp" %>
        <section>
			<div id="main_section" align="center">
				<h2>회원가입</h2>
                <div id="signup1" class="signup">
                    <input type="checkbox" id="checkall">약관 전체동의
                </div>
                <br>
                <div id="signup2" class="signup">
                    <div id="signup3" class="signup">
                        	이용 약관 및 개인정보 수집과 이용, 위치정보 이용약관에 동의
                        <div id="sign1">
                           <div class="div11">
	                            <input type="checkbox" name="chk" id="chk1">이용약관 동의(필수)
	                            <button id="btn1" class ="btn">▽</button> 
	                            <br>
                        	</div>
                           <p id ="ct1" class="contents">
                             
                           </p>
                          <br>

                           <div class="div11">
	                           <input type="checkbox" name="chk" id="chk2">개인정보 수집 및 이용 동의(필수)
	                           <button id="btn2" class ="btn">▽</button>      
	                           <br>
                           </div>
                           <p id ="ct2" class="contents">
                              
                           </p>
                           <br>

                           <div class="div11">
	                           <input type="checkbox"  name="chk" id="chk3">위치정보 이용약관 동의(선택)
	                           <button id="btn3" class ="btn">▽</button> 
	                           <br>
                           </div>
                            <p id ="ct3" class="contents">
                        	</p>
                           <br>
                           <script>                            
                             $('#btn1').click(function(){   
                                 $('#ct1').slideToggle();
                                 });
                             $('#btn2').click(function(){   
                                 $('#ct2').slideToggle();
                                 });
                             $('#btn3').click(function(){   
                                 $('#ct3').slideToggle();
                                 });   
                           </script>
                        </div>
                        <div>
                            <p>
                                <b>※마케팅 수신 동의(선택)</b><br>
                                </p>
                                <table id="mtable">
                                    <tr>
                                        <td>전달 매체</td>
                                        <td>SMS, 이메일, APP Push</td>
                                    </tr>
                                    <tr>
                                        <td>제공 내용</td>
                                        <td>지원정책 안내, 지원정책 신청현황 및 선발여부 안내, 고객문의 진행 상태 및 답변, 이벤트 안내 등 서비스 운영에 필요한 내용</td>
                                    </tr>
                                </table>
                                <input type="radio" name="chk" value="agree" id="chk4">동의함
                                <input type="radio"  name="chk1" value="deagree" id="chk5" >동의하지 않음
                            </div>
                        </div>
                    </div>
                    <br>
                    <div id="signup4" class="signup">
                    <div id="signup5" class="signup">
                

                     <div id="test">
                                    
                        <form action="<%= request.getContextPath() %>/insert.me" method="post" id="joinForm" name="joinForm">
                           <table>
                              <tr>
                                 <td width="200px" rowspan=2><label class="must">*</label> 아이디</td>
                                 <td class="middletable"><input type="text" maxlength="13" name="joinUserId" id="userId"required></td>
                                 <td><label id="idResult"></label></td>
                              </tr>
                              <tr>
								<td colspan=2><span class="info">3~12자로 영어와 숫자만 가능합니다.(영어로 시작)</span></td>
							  </tr>
                              <tr>
                                 <td rowspan=2><label class="must">*</label> 비밀번호</td>
                                 <td><input type="password" maxlength="13" name="joinUserPwd" id="pwd1" required></td>
                                 <td><label id="pwd1Result"></label></td>
                              </tr>
                              <tr>
								<td colspan=2><span class="info">6~12자로 영어와 숫자, !@#$%^&*만 가능합니다.(영어로 시작)</span></td>
							  </tr>
                              <tr>
                                 <td><label class="must">*</label> 비밀번호 확인</td>
                                 <td class="middletable"><input type="password" maxlength="13" name="joinUserPwd2" id="pwd2" required></td>
                                 <td><label id="pwd2Result"></label></td>
                              </tr>
                              <tr>
                                 <td rowspan=2><label class="must" >*</label> 이름</td>
                                 <td class="middletable"><input type="text" name="userName" id="name" required></td>
                                 <td><label id="nameResult"></label></td>
                              </tr>
                              <tr>
								<td colspan=2><span class="info">이름은 한글로 된 2글자 이상으로 입력하셔야합니다.</span></td>
							  </tr>
                              <tr>
                                 <td><label class="must">*</label>닉네임</td>
                                 <td class="middletable"><input type="text" name="nickName" id="nickName" required></td>
                                   <td><label id="nickNameResult"></label></td>
                              </tr>
                              <tr>
                               <td><label class="must">*</label>성별</td>
                              <td> <input type="radio" name="gender" id="genderM" value="M" >남자
                                  <input type="radio"  name="gender" id="genderW" value="W" >여자</td>	
                              </tr>
                              <tr>
                                 <td><label class="must">*</label>생년월일</td>
                                 <td class="middletable"><input type="date" name="userBirthday" id="userDate" required></td>
                              </tr>
                              
                              <tr>
                                 <td>연락처</td>
                                 <td class="middletable">
                                    <input type="tel" maxlength="3" name="phone1" class="phone">-
                                    <input type="tel" maxlength="4" name="phone2" class="phone">-
                                    <input type="tel" maxlength="4" name="phone3" class="phone">
                                 </td>
                                  <td><label id="phoneResult"></label></td>
                              </tr>
                              <tr>
                                 <td>이메일</td>
                                 <td class="middletable">
                                 	<input type="text" name="email"> @ 
                                 	<input type="text" id="selectEmail">
                                 </td>
                                <td>
									<select class="email_select" id="email_select" onchange="selectMail()">
						                <option value="직접입력" selected>직접입력</option>
						                <option value="naver.com">naver.com</option>
						                <option value="hanmail.net">hanmail.net</option>
						                <option value="nate.com">nate.com</option>
						                <option  value="gmail.com">gmail.com</option>
						                <option value="hotmail.com">hotmail.com</option>
						                <option value="lycos.co.kr">lycos.co.kr</option>
						                <option value="empal.com">empal.com</option>
						                <option value="korea.com">korea.com</option>
              						</select>
                                </td>
                                 <td><input type="button" onclick="Email_Check()" value="이메일 인증"></td>
                              </tr>
                               <tr>
                                 <td></td>
                                 <td class="passNum">
                                    <input type="text" name="pass" class="pass">
                                 </td>
                                  <td><input type="button" onclick="Email_Check()" value="인증 확인"></td>
                              </tr>
                              <tr>
                                <td>주소</td>
                              	<td><input type="text" id="sample6_postcode" placeholder="우편번호"></td>
								<td><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"></td>
								</tr>
								<tr>
								<td></td>	
								<td><input type="text" id="sample6_address" name="address1" placeholder="주소"></td>
								<td><input type="text" id="sample6_detailAddress" name="address2" placeholder="상세주소"></td>
							  </tr>
								
                           </table>
								<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
							<script>
							$(function(){
							$("#name").change(function(){
								var regExp = /[가-힣]{2,}/;
								if(!regExp.test($(this).val())){
									$("#nameResult").text("알맞은 이름을 입력하세요").css("color","red");
									$(this).focus().css("background","red");
									isName = false;
								}else{
									$("#nameResult").text("정상입력").css("color","green");
									$(this).css("background","initial");
									isName = true;
								}
							});
							
							$("#userId").change(function(){
								var regExp = /^[a-zA-Z][a-zA-Z0-9]{2,11}$/;
								if(!regExp.test($(this).val())){
									$("#idResult").text("알맞은 아이디를 입력하세요").css("color","red");
									$(this).focus().css("background","red");
									isId = false;
								}else{
									var result = overlapCheck($(this).val(),"");
									console.log("result : " + result);
									if(result==false){
										$("#idResult").text("아이디 중복입니다.").css("color","red");
										$(this).focus().css("background","red");
										isId = false;	
									}else{
										$("#idResult").text("사용 가능한 아이디 입니다").css("color","green");
										$(this).css("background","initial");
										isId = true;
									}
								}
							});
							$("#nickName").change(function(){
								var result = overlapCheck("",$(this).val());
								if(result==false){
									$("#nickNameResult").text("닉네임 중복입니다.").css("color","red");
									$(this).focus().css("background","red");
									isId = false;	
								}else{
									$("#nickNameResult").text("사용 가능한 닉네임 입니다").css("color","green");
									$(this).css("background","initial");
									isId = true;
								}
							});
							
							$("#pwd1").change(function(){
								var regExp = /^[a-zA-Z]([a-zA-Z0-9\!\@\#\$\%\^\&\*]){5,11}$/;
								
								if(!regExp.test($(this).val())){
									$("#pwd1Result").text("알맞은 비밀번호를 입력하세요").css("color","red");
									$(this).focus().css("background","red");
									isPw = false;
								}else{
									$("#pwd1Result").text("비밀번호가 일치합니다.").css("color","green");
									$(this).css("background","initial");
									isPw = true;
								}
							});
							
							$("#pwd2").keyup(function(){
								if($("#pwd1").val() != $(this).val()){
									$("#pwd2Result").text("비밀번호 불일치").css("color","red");
									isPw2 = false;
								}else{
									$("#pwd2Result").html("비밀번호가 일치합니다.").css("color","green");
									isPw2 = true;
								}
							});
							
							$(".phone").change(function(){
								var regExp = /[0-9]/;
								if(!regExp.test($(this).val())){
									$("#phoneResult").text("숫자를 입력하세요").css("color","red");
									$(this).focus().css("background","red");
									isPhone = false;
								}else{
									$("#phoneResult").text("정상 입력").css("color","green");
									$(this).css("background","initial");
									isPhone = true;
								}
							});
							$('form').submit(function(){
								if(($("#chk1").is(":checked") == true) && ($("#chk2").is(":checked") == true)){
									  if($("#chk4").is(":checked") == "" && $("#chk5").is(":checked") == ""){
										  alert("약관을 확인해주세요");
										  return false;
									  }else{
										  if(isName && isId && isPw && isPw2 && isPhone){
											  if($("#genderM").is(":checked") == "" && $("#genderW").is(":checked") == ""){
												alert('성별을 선택해주세요.');
												return false;
											  }
										  	return true;
											} else{
											alert('회원가입 폼에 맞춰주세요.');
											if(!isName) $('#name').focus();
											else if(!isId) $('#userId').focus();
											else if(!isPw) $('#pwd1').focus();
											else if(!isPw2) $('#pwd2').focus();
											else if(!isPhone) $('#phone1').focus();
											return false;
										}
									  }
								  }else{
									  alert("약관을 확인해주세요");
									  return false;
								  }
							});
							//최상단 체크박스 클릭
	                           $("#checkall").click(function(){
	                      		//클릭되었으면
	                             if($("#checkall").prop("checked")){
	                     				//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	                                $("input[name=chk]").prop("checked",true);
	                                $("input[name=chk1]").prop("checked",false);
	                     			//클릭이 안되있으면
	                             }else{
	                    				 //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	                                 $("input[name=chk]").prop("checked",false);
	                                $("input[name=chk1]").prop("checked",true);
	                               }
	                            });
							
							});
							function selectMail(){
								var email = $("#email_select").val();
								if(email == "직접입력"){
									$("#selectEmail").val("");
								}else{
									$("#selectEmail").val(email);
								}
								
							}
							function Email_Check(){
								
							}
							
							
							function overlapCheck(userId,userNickName){
								console.log("userId : "+userId);
								console.log("userNickName : "+userNickName);
								var result=false;
								 $.ajax({
							            url: 'overlapCheck.me',
							            async: false,
							            data: {
					    					userId:userId,
					    					userNickName:userNickName,
					   						},
							            success: function(data){
							            	if(data==null){
							            		result=true;
							            		console.log("null : " + result);
							            	}else{
							            	 console.log(data);
							            	 if(data.memberId==userId || data.memberNickName==userNickName){
							            	 console.log(false);
							            	 }else{
								             console.log(true);
								             result=true;
							            	 }
							            		
							            	}
							            },
							            error: function(data){
							               alert("ajax 중복체크 에러 발생");
							            }
							         });
								 console.log("result0 : "+ result);
								 return result;
							}	
							//주소에 대한 함수
						    function sample6_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
						                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						
						                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
						                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						                var addr = ''; // 주소 변수
						                var extraAddr = ''; // 참고항목 변수
						
						                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						                    addr = data.roadAddress;
						                } else { // 사용자가 지번 주소를 선택했을 경우(J)
						                    addr = data.jibunAddress;
						                }
						
						                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						                if(data.userSelectedType === 'R'){
						                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
						                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						                        extraAddr += data.bname;
						                    }
						                    // 건물명이 있고, 공동주택일 경우 추가한다.
						                    if(data.buildingName !== '' && data.apartment === 'Y'){
						                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                    }
						                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						                    if(extraAddr !== ''){
						                        extraAddr = ' (' + extraAddr + ')';
						                    }
						                    // 조합된 참고항목을 해당 필드에 넣는다.
						                    document.getElementById("sample6_extraAddress").value = extraAddr;
						                
						                } else {
						                    document.getElementById("sample6_extraAddress").value = '';
						                }
						
						                // 우편번호와 주소 정보를 해당 필드에 넣는다.
						                document.getElementById('sample6_postcode').value = data.zonecode;
						                document.getElementById("sample6_address").value = addr;
						                // 커서를 상세주소 필드로 이동한다.
						                document.getElementById("sample6_detailAddress").focus();
						            }
						        }).open();
						    }
					</script>
                           <div class="btns" id="signUpBtns">
                              <input id="signUpBtn" type="submit" value="가입하기">
                              <input type="button" id="goMain" onclick="goMain();" value="메인으로">
                           </div>
                        </form>
                     </div>
                        </div>
                    </div>
                </div>
    </section>
<%@ include file="../Common/footer.jsp" %>
</body>
</html>