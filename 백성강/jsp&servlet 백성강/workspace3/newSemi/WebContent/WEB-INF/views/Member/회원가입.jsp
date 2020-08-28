<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script> 
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
    </style>
    <body>
        <%@ include file="../Common/header.jsp" %>
        <section>
            <aside></aside>
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
                            <input type="checkbox" name="chk" id="chk">이용약관 동의(필수)
                            <button id="btn1" class ="btn">▽</button> 
                            <br>
                     
                           </div>
                           <p id ="ct1" class="contents">
                              1장 총칙
                              제 1조 (목적)
                              본 약관은 꽃보다 자바가 운영하는 정바 홈페이지의 모든 서비스를 이용함에 있어 "재단"과 회원간의 이용 조건 및 제반 절차, 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
                              
                              제 2조 (용어의 정의)
                              이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
                              ① "서비스"라 함은 "정바"를 통해 "회원"들이 이용할 수 있는 웹사이트, 앱 등의 서비스를 의미합니다
                              ② "회원"이라 함은 “정바”의 "서비스"에 접속하여 이 약관에 따라 "재단"과 이용계약을 체결하고 "정바"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
                              ③ "아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "재단"이 승인하는 문자와 숫자의 조합을 의미합니다.
                              ④ "비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다
                              ⑤ "포인트"라 함은 서비스의 효율적 이용을 위해 재단이 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.
                              
                              제3조 (약관의 효력 및 변경)
                              ① 이 약관은 서비스 화면에 게시하거나 기타의 방법으로 공지함으로써 이용자에게 공시하고, 이에 동의한 이용자가 서비스에 가입함으로써 효력이 발생합니다.
                              ② "재단"에서 필요하다고 인정할 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스 화면에 공지함으로써 이용자가 직접 확인할 수 있도록 합니다
                              ③ 이용자는 변경된 약관에 동의하지 않을 경우 서비스 이용을 중단하고 회원 등록을 취소할 수 있습니다. 다만, 이용자가 약관 변경 이후 서비스에 접속하여 별도의 의사표시 없이 계속 서비스를 이용하는 경우에는 약관 변경에 동의한 것으로 간주됩니다.
                              ④ "재단"의 서비스 제공 행위 및 이용자의 서비스 이용 행위에는 이 약관이 우선적으로 적용됩니다. 이 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 방송통신심의위원회 심의규정, 정보통신 윤리강령 등 과 같은 대한민국의 관련 법령과 일반적인 관습에 의합니다.
                              
                              제 2 장 회원가입
                              제4조 (회원가입의 성립)
                              ① 회원가입은 이용자의 이 약관에 대한 동의와 이용자의 회원가입신청에 대한 "재단"의 승인에 의하여 성립합니다.
                              ② 회원가입에 대한 동의는 이용신청 당시 신청서 상의 "이용 약관에 동의합니다" 버튼을 선택함으로써 약관에 동의하는 것으로 간주됩니다.
                              
                              제5조 (회원가입신청)
                              회원가입신청은 이용자가 서비스의 가입신청 양식에 이용자의 인적 사항에 관한 정보와 서비스 회원가입 의사를 등록하는 방식으로 합니다.
                              
                              제6조 (회원가입신청의 승인과 거절)
                              ① "재단"은 제5조에서 정한 사항을 정확히 기재한 회원가입신청이 있을 경우 특별한 거부 사유가 없는 한 회원가입신청을 승인합니다.
                              ② "재단"은 아래 각 호에 해당하는 경우에는 이용자의 서비스 이용을 일부 또는 전부 제한할 수 있습니다. 서비스 이용을 일부 또는 전부 제한하는 것에는 이용자의 회원자격 박탈, 서비스 접속 차단, 이용자가 올린 게시물의 삭제 등을 포함합니다.
                              1. 이용자가 제공한 자신의 인적 사항에 관한 정보가 허위(예컨대, 이름, 이메일, 전화번호가 실제와 다른 경우 등)인 것으로 판명되거나, 허위라고 의심할만한 합리적인 사유가 발생한 경우
                              2. 이용자가 회원가입신청 시 허위의 내용을 입력하였을 경우
                              3. 이용자가 서비스를 이용하여 불법적인 게시물(예컨대, 허위사실 유포, 명예훼손적 표현, 욕설 내지 비방, 상업광고, 음란 또는 저속한 글이나 사진 또는 동영상 등)을 올리는 등과 같이 서비스의 존립목적에 반하여 사회의 안녕 질서 또는 미풍양속을 저해하는 행위를 하였을 경우
                              4. 이용자가 서비스를 이용하여 부당한 민원을 제기하였을 경우
                              5. 기타 "재단"이 서비스의 이용제한이 필요하다고 판단하는 경우(예컨대, 이용자가 특정 후보 또는 정당에 대한 지지의사를 밝히는 게시물을 올리는 등의 행위를 하여 서비스 내에서 의견대립이나 논쟁이 발생하는 경우 등 포함)
                              
                              제7조 (회원정보의 변경)
                              ① 회원은 서비스 내 마이페이지 > 내정보관리를 통하여 언제든지 자신의 가입 정보를 열람할 수 있습니다.
                              ② 회원은 회원가입신청 시 기재한 회원정보가 변경되었을 때에는 수정이 가능하며, 회원이 회원정보를 수정하지 아니하여 발생하는 일체의 문제에 관한 책임은 회원에게 있습니다.
                              
                              제 3장 서비스 제공 및 이용
                              제8조 (서비스 이용)
                              ① "재단"이 제공하는 서비스는 다음과 같습니다.
                              1. 취업지원 프로그램 정보제공 및 온라인 신청
                              2. 공유공간 및 행사정보에 관련된 제반 서비스
                              3. 재단에서 운영하는 프로그램 온라인신청 서비스
                              4. 교육훈련 및 구인/구직과 관련된 제반 서비스
                              5. 기타 "재단"이 추가 개발, 편집, 재구성하거나 제휴 등을 통해 “회원”에게 제공하는 일체의 서비스
                              ② "재단"은 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다.
                              ③ "재단"은 회원의 회원가입신청을 승인한 때부터 서비스를 개시합니다. 단, "재단"이 별도로 정하는 일부 서비스의 경우에는 "재단"이 별도로 정한 일자부터 서비스를 개시합니다.
                              ④ "재단"의 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 서비스에 공시하거나 회원에게 이를 통지합니다.
                              ⑤ 서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, "재단"의 업무상 또는 기술상의 이유로 서비스가 일시 중지될 수 있고, 또한 정기점검 등 운영상의 목적으로 "재단"이 정한 기간 동안 서비스가 일시 중지될 수 있습니다. 이러한 경우 "재단"은 사전 또는 사후에 이를 공지합니다.
                              ⑥ "재단"은 특정 회원에게만 서비스를 제공하여야 하는 특별한 사정이 있는 경우, 특정 회원에게만 서비스를 제공하고 일반 회원들의 서비스 이용을 제한할 수 있습니다.
                              ⑦ "재단"은 서비스를 일정범위로 분할하여 각 범위 별로 이용가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다.
                              ⑧ "재단"이 회원에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 전자우편을 통하여 할 수 있습니다.
                              ⑨ "재단"은 회원 전체에 대한 통지의 경우 7일 이상 서비스의 게시판에 게시함으로써 제8항의 통지에 갈음할 수 있습니다.
                              
                              제9조 (서비스의 변경, 중지 및 정보의 저장과 사용)
                              ① 회원은 본 서비스에 보관되거나 전송된 게시물 및 기타 통신 메시지(쪽지 등) 등의 내용이 국가의 비상사태, 정전, "재단"의 관리범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 발생한 경우, "재단"이 이에 대하여 아무런 책임을 지지 않는다는 것에 동의합니다.
                              ② "재단"이 정상적인 서비스 제공의 어려움으로 인하여 일시적으로 서비스를 중지하여야 할 경우에는, 서비스 중지 1주일 전에 고지한 후 서비스를 중지할 수 있으며, 이 경우 "재단"은 책임을 부담하지 아니합니다. 상당한 이유가 있을 경우 위 사전 고지기간은 "재단"의 판단에 따라 감축되거나 생략될 수 있습니다.
                              ③ 제2항과 같은 서비스 중지에 의하여 본 서비스에 보관되거나 전 전송된 게시물 및 기타 통신 메시지(쪽지 등) 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 발생한 경우에도 "재단"은 책임을 부담하지 아니합니다.
                              ④ "재단"의 사정으로 서비스를 영구적으로 중단하여야 할 경우 제2항을 준용합니다. 다만, 이 경우 사전 고지기간은 1개월로 합니다.
                              ⑤ "재단"은 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 이용자에게 어떠한 책임도 부담하지 아니합니다.
                              ⑥ "재단"은 이용자가 이 약관의 내용에 위배되는 행동을 한 경우, 이용자의 서비스 이용을 중지시킬 수 있습니다. 이 경우 "재단"은 이용자의 접속을 금지할 수 있으며, 이용자가 게시한 내용의 전부 또는 일부를 삭제할 수 있습니다.
                              ⑦ "재단"은 장기 비로그인 회원에게 불필요하게 제공되는 정보를 사전에 차단하고, 회원들의 소중한 개인정보를 보호하기 위해 휴면계정 관리정책을 실시합니다.
                              1. 회원이 이용신청을 통해서 회원가입 후 서비스를 이용하는 도중 12개월 동안 로그인을 하지 않는 경우, "재단"은 회원으로 하여금 서비스의 이용을 제한할 수 있습니다.
                              2. 이후 12개월 동안(연속하여 24개월 동안) 서비스를 이용하기 위해 로그인을 하지 않은 경우 서비스 이용계약이 해지될 수 있으며, 이 경우 회원이 이용한 서비스 데이터가 삭제 처리됩니다.
                              3. 이용계약의 해지로 인해 발생한 데이터 손실에 대한 모든 책임은 회원이 부담합니다.
                              
                              제10조 (정보의 제공 및 광고의 게재)
                              ① "재단"은 회원에게 필요하다고 인정되는 다양한 정보 및 광고를 전자우편이나, SMS(휴대폰 문자메시지), SNS(트위터, Facebook), 카카오톡, 앱 푸시 등의 방법으로 회원에게 제공할 수 있으며, 만약 원치 않는 정보를 수신한 경우 회원은 이를 수신거부 할 수 있습니다.
                              ② "재단"은 서비스의 운용과 관련하여 서비스화면, 홈페이지, 전자우편 등에 광고 등을 게재할 수 있으며, "재단"은 서비스를 이용하고자 하는 이용자가 광고 등의 게재에 대하여 동의하는 것으로 간주합니다.
                              
                              제11조 (게시물 또는 내용물의 삭제)
                              ① "재단"은 이용자가 게시하거나 등록하는 서비스 내의 모든 게시물이 아래 각 호의 경우에 해당하는 경우 이용자에 대한 사전 통지 없이 게시물을 삭제할 수 있으며, 게시물의 삭제에 관하여 "재단"은 어떠한 책임도 지지 않습니다.
                              1. "재단", 다른 회원 또는 제3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우
                              2. 공공질서 및 미풍양속에 위반되는 내용인 경우
                              3. 범죄적 행위에 결부된다고 인정되는 내용인 경우
                              4. 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
                              5. 서비스 성격에 부합하지 않는 정보의 경우
                              6. 기타 관계 법령 및 "재단"에서 정한 규정 등에 위배되는 경우
                              ② "재단"은 사전 통지한 후 게시물을 편집, 이동, 삭제할 수 있는 권리를 보유하며, 게시물이 이 약관 및 관계법령에 위배되거나 해지된 회원이 게시한 게시물일 경우 사전통보 없이 이를 삭제할 수 있습니다.
                              ③ "재단"은 게시물이 게시일로부터 상당한 기간이 경과되어 게시물로서의 효력이나 의미를 상실하게 된 경우 1주일간의 통지기간을 거쳐 해당 게시물을 삭제할 수 있습니다.
                              
                              제12조 (게시물의 저작권)
                              ① 이용자가 서비스에 접속하여 게시한 게시물의 저작권은 해당 게시물의 저작권자에게 있으며, "재단"은 법령에 위배되지 않는 범위 내에서 이를 활용할 수 있습니다.
                              ② 이용자의 게시물이 타인의 저작권, 프로그램 저작권 등을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 이용자가 부담하여야 합니다.
                              ③ 이용자는 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.
                              
                              제13조 ("재단"의 서비스에 관한 권리)
                              ① "재단"이 제공하는 서비스, 그에 필요한 소프트웨어, 이미지, 마크, 로고, 디자인, 서비스명칭, 정보 및 상표 등과 관련된 지적재산권 및 기타권리는 "재단"에게 있습니다.
                              ② 이용자는 "재단"이 명시적으로 사전에 승인한 경우를 제외하고는 제1항 소정의 각 권리에 대한 전부 또는 일부의 수정, 대여, 대출, 판매, 배포, 제작, 양도, 재 라이선스, 담보권 설정행위, 상업적 이용행위를 할 수 없으며, 제3자로 하여금 이와 같은 행위를 하도록 허락할 수도 없습니다.
                              
                              제14조 (회원의 의무 및 정보보안)
                              ① 회원은 서비스 이용을 위해 가입할 경우 가입 당시의 사실과 일치하는 정보(이하 "가입정보")를 제공하여야 합니다. 또한, 회원은 가입정보에 변경이 발생할 경우 이를 즉시 갱신하여야 하며, 이를 갱신하지 아니하여 발생하는 회원의 손해에 대하여 "재단"은 어떠한 책임도 부담하지 아니합니다.
                              ② 회원은 회원가입신청을 통하여 서비스 사용을 위한 가입절차를 완료하면 아이디와 비밀번호 사용이 가능합니다. 회원은 아이디, 비밀번호 관리를 위해 아래 각 호의 사항을 준수하여야 하며, 이를 위반하여 발생한 손해에 관하여 "재단"은 어떠한 책임도 부담하지 않습니다.
                              1. 회원은 본인의 아이디와 비밀번호를 제3자에게 이용하게 하여서는 안됩니다.
                              2. 회원은 제3자가 회원의 동의 없이 회원의 아이디와 비밀번호를 사용하는 사실을 알게 될 경우 즉시 "재단"에 신고하여야 합니다.
                              3. 회원은 서비스의 이용을 마칠 때에는 로그아웃을 통하여 확실히 접속을 종료하여야 합니다
                              ③ 회원은 서비스를 이용하면서 아래 각 호와 같은 행위를 하여서는 안됩니다.
                              1. 타인에게 위해를 가하는 행위 또는 기타 아래 각 목의 행위
                              가. 타인의 아이디, 패스워드 도용 및 타인으로 가장하는 행위
                              나. 타인과의 관계를 허위로 명시하는 행위
                              다. 타인을 비방할 목적으로 사실 또는 허위의 사실을 적시하여 명예를 훼손하는 행위
                              라. 자기 또는 타인에게 재산상의 이익을 주거나 타인에게 손해를 가할 목적으로 허위의 정보를 유통시키는 행위
                              마. 수치심이나 혐오감 또는 공포심을 일으키는 말이나 음향, 글이나 화상 또는 영상을 2회 이상 상대방에게 도달하게 하여 상대방의 일상적 생활을 방해하는 행위
                              바. 서비스를 이용한 "재단"의 사전 승인 없는 영리행위
                              2. 불필요하거나 승인되지 않은 광고, 판촉물을 게재하거나, "정크 메일(junk mail)", "스팸(spam)", "행운의 편지(chain letters)", "도배글", "피라미드 조직" 등을 권유하거나 게시, 게재 또는 전자우편으로 보내는 행위
                              3. 저속 또는 음란한 데이터, 텍스트, 소프트웨어, 음악, 사진, 그래픽, 비디오 메시지 등(이하 "콘텐츠")을 게시, 게재 또는 전자우편으로 보내는 행위
                              4. 이용자 자신에게 권리(지적재산권을 포함한 모든 권리)가 없는 콘텐츠를 게시, 게재 또는 전자우편으로 보내는 행위
                              5. 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비를 파괴, 방해 또는 기능을 제한하기 위한 소프트웨어 바이러스, 기타 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시, 게재하거나 또는 전자우편으로 보내는 행위
                              6. 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시, 게재, 전자우편으로 보내는 행위 등의 방법으로 다른 사용자의 개인 회원정보를 수집 또는 저장하는 행위
                              7. 재물을 걸고 도박하거나 사행행위를 하는 행위
                              8. 윤락행위를 알선하거나 음행을 매개하는 내용의 정보를 유통시키는 행위
                              9. 서비스를 이용한 영리행위(단, "재단"의 사전승인이 있는 경우에는 예외)
                              10. 기타 불법적이거나 부당한 행위
                              ④ 회원은 이 약관 및 관계법령에서 규정한 사항을 준수하여야 합니다.
                              
                              제15조 ("재단"의 의무)
                              ① "재단"은 특별한 사정이 없는 한 회원이 신청한 서비스 제공 개시일에 서비스를 개시합니다.
                              ② "재단"은 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공하도록 노력합니다.
                              ③ "재단"은 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 신속히 처리하여야 합니다. 다만, 신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 통보하여야 합니다.
                              ④ "재단"은 관련 법령이 정하는 바에 따라서 회원 등록정보를 포함한 회원의 개인정보를 보호하기 위하여 노력합니다. "재단"은 회원의 개인정보보호에 관해서는 제16조 및 관련 법령의 내용을 준수합니다.
                              
                              제16조 (개인정보보호정책)
                              ① "재단"은 회원가입신청 시 회원이 제공하는 정보를 통하여 회원에 관한 정보를 수집하며, 회원의 가입정보는 본 회원가입의 이행과 본 회원가입상의 서비스 제공을 위한 목적으로 이용됩니다.
                              ② "재단"은 서비스 제공과 관련하여 취득한 회원의 정보를 본인의 승인 없이 제3자에게 누설 또는 배포할 수 없으며 상업적 목적으로 사용할 수 없습니다. 다만, 아래 각 호의 경우에는 그러하지 아니합니다.
                              1. 관계 법령에 의하여 수사상의 목적으로 관계기관으로부터 요구가 있는 경우
                              2. 방송통신심의위원회의 요청이 있는 경우
                              3. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
                              
                              제 5장 회원 탈퇴 및 해지
                              제17조 (회원 해지 및 이용제한)
                              ① 회원이 회원가입을 해지하고자 하실 때에는 회원 본인이 직접 인터넷을 통해 당 서비스에 해지 신청을 하여야 합니다.
                              ② "재단"은 보안 및 아이디 정책, 서비스의 원활한 제공 등과 같은 이유로 회원의 전화번호 및 패스워드의 변경을 요구하거나 변경할 수 있습니다.
                              ③ "재단"은 회원이 아래 각 호에 해당하는 행위를 하였을 경우 사전통지 없이 회원가입을 해지할 수 있습니다.
                              1. 비실명 가입, 이메일, 전화번호 도용 등 회원이 제공한 데이터가 허위임이 판명된 경우
                              2. 범죄행위에 관련되는 경우
                              3. 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행할 경우
                              4. 타인의 서비스 아이디 및 비밀 번호를 도용한 경우
                              5. 타인의 명예를 손상시키거나 불이익을 주는 경우
                              6. 서비스에 위해를 가하는 등 서비스의 건전한 이용을 저해하는 경우
                              7. 기타 관련법령이나 "재단"이 정한 이용조건에 위배되는 경우
                              
                              제 6장 기타
                              제18조 (요금 및 유료정보)
                              ① 서비스 이용은 기본적으로 무료입니다. 단, 서비스에서 정한 별도의 유료정보와 유료서비스에 대해서는 그러하지 아니합니다.
                              ② 유료정보와 유료서비스의 제공에 관하여 별도의 약관이 존재하는 경우, 해당 약관의 효력이 이 약관에 우선합니다.
                              
                              제19조 (양도금지)
                              회원은 서비스의 이용권한, 기타 회원가입상의 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.
                              
                              제 7장 손해배상 등
                              제20조 (손해배상)
                              "재단"은 무료로 제공되는 서비스와 관련하여 이용자에게 어떠한 손해가 발생하더라도 동 손해가 "재단"의 고의 또는 중대한 과실에 의하여 발생한 경우를 제외하고는 이에 대하여 책임을 부담하지 아니합니다.
                              
                              제21조 (면책조항)
                              ① "재단"은 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스를 제공하지 못한 것과 관련하여 책임이 면제됩니다.
                              ② "재단"은 이용자의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.
                              ③ "재단"은 이용자가 서비스를 이용하여 기대하는 이익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.
                              ④ "재단"은 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.
                              
                              제22조 (관할법원)
                              ① 서비스 이용에 관하여 "재단"과 이용자 사이에 분쟁이 발생한 경우, "재단"과 이용자는 발생한 분쟁을 원만하게 해결하기 위하여 노력하여야 합니다.
                              ② 제1항의 규정에도 불구하고 서비스 이용에 관하여 소송이 제기될 경우 "재단"의 소재지를 관할하는 법원을 관할법원으로 합니다.
                              
                              부 칙
                              (시행일) 이 약관은 2017년 6월 1일부터 적용합니다.

                           </p>
                          <br>

                           <div class="div11">
                            <input type="checkbox" name="chk" id="chk">개인정보 수집 및 이용 동의(필수)
                            <button id="btn2" class ="btn">▽</button>      
                            <br>
                           </div>
                           <p id ="ct2" class="contents">
                              정바가 취급하는 모든 개인정보는 관련법령에 근거하거나 정보주체의 동의에 의하여 수집·보유 및 처리되고 있습니다. 「개인정보보호법」은 개인정보의 취급에 대한 일반적 규범을 제시하고 있으며      정바는 여러분의 고객정보를 이러한 법령의 규정에 따라, 공공업무의 적절한 수행과 국민의 권익을 보호하기 위해 적법하고 적정하게 취급할 것입니다      정바는 「개인정보보호법」에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다      정바는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항을 통하여 공지할 것입니다.
                              제1조 개인정보의 처리 목적
                              정바는 개인정보를 다음의 목적을 위해 처리합니다.
                              처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 예정입니다.
                              
                              1. 홈페이지 회원가입 및 관리
                              - 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리 등을 목적으로 개인정보를 처리합니다.
                              2. 민원사무 처리
                              - 민원인의 신원 확인 등을 목적으로 개인정보를 처리합니다.
                              3. 서비스개선 목적
                              - 서비스 개선목적을 위한 이용자의 “유입 IP”, “유입 URL”, “유입일시” 항목을 자동 수집합니다.
                              제2조 개인정보의 처리 및 보유 기간
                              정바는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다. 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
                              순번	개인정보파일의 명칭	운영근거	보유기간(목적달성시)
                              1	회원가입 및 관리	경기도일자리재단 설립 조례 및 근로자 직업능력 개발법 시행령 제52조의 2	회원 탈퇴 후 지체없이 삭제
                              2	청년시리즈 신청 및 선발	사업종료 이후 1년
                              제3조 개인정보 파일 현황
                              정바는 「개인정보보호법」 제32조에 따라 등록, 공개하는 개인정보파일의 처리목적은 다음과 같습니다.
                              순번	개인정보파일의 명칭	개인정보파일에 기록되는 개인정보의 항목
                              1	회원가입 및 관리	성명, 회원ID, 회원비밀번호, 휴대폰번호, 생년월일(선택), 우편번호(선택), 주소(선택), 주소상세(선택), 성별(선택)
                              2	청년시리즈 신청 및 선발	성명, 생년월일, 성별, 연락처, 이메일, 주소, 나머지상세주소(도로명주소), 비상연락망, 비상연락망_이름, 비상연락망과의 관계, 주민등록초본_첨부, 근로계약서_첨부, 3개월평균 월 급여액, 고용임금확인서_첨부, 통장사본(급여입금내역)_첨부, 기타서류첨부_첨부, 4대 사회보험 가입자 가입내역확인서_첨부, 일하는 청년시리즈 근무확인서_첨부, 건강보험료 납입증명서_첨부, 월평균겅간보험료, 건강보험료, 개인계좌번호, 매칭계좌번호, 정바ID
                              제4조 선택적 개인정보 수집 및 이용 안내
                              개인정보보호법 제22조 3항에 의해 위치정보, 알림서비스 제공 등 선택정보 사항을 획득하지 못한 사유로 인해 서비스 제공을 거부할 수 없습니다.
                              제5조 개인정보의 제3자 제공에 관한 사항
                              정바는 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.
                              정바는 개인정보를 제3자에게 제공하는 경우 다음의 항목을 정보주체에게 알린 후 동의를 받겠습니다.
                              제공받는 자의 성명(법인 또는 단체인 경우에는 그 명칭)과 연락처
                              제공받는 자의 개인정보 이용 목적, 제공하는 개인정보의 항목
                              개인정보를 제공받는 자의 개인정보 보유 및 이용 기간
                              동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익이 있는 경우에는 그 불이익의 내용
                              정바는 하기 사업참여신청을 통해 제3자에게 개인정보를 제공합니다.
                              [ 경기도 일하는 청년통장 ]
                              개인정보를 제공받는 자 : 경기도, 경기복지재단
                              제공받는 자의 개인정보 이용목적 : 근로자 직업능력개발법 제11조, 동법 시행령 52조의 2 청년통장 선발/운영/지급 목적
                              제공하는 개인정보 항목 : e-mail, 성명, 성별, 연락처, 생년월일(나이) ,우편번호, 주소, 가구특성, 가구원수, 거주기간, 직업유형, 근로형태, 기업유형, 근무처, 근로기간, 근로확인서_첨부, 은행정보_은행명, 은행정보_지점명, 은행정보_개인계좌번호, 은행정보_매칭계좌번호,소득인정액
                              제공받는 자의 보유·이용기간 : ‘경기도 일하는 청년통장’ 사업 운영기간 및 종료 이후 중복지급 및 분쟁 발생 시 증빙목적에 필요한 기간동안 보유
                              ※보유기간 경과시 파기
                              제6조 개인정보처리 위탁
                              정바는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
                              정바는 위탁계약 체결시 「개인정보보호법」 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적·관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리·감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
                              위탁업무의 내용이나 수탁자가 변경될 경우에는 지체 없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
                              내용	위탁업체	위탁 업무 내용
                              정바통합회원	(주)인키움	정바 시스템 운영관리 및 회원정보 관리를 위한 기술적 처리
                              제7조(개인정보의 제3자 제공)
                              <공공기관명>은(는) 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.
                              <공공기관명>은(는) 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.
                              내용	제공받는자	제공받는자의 개인정보 이용 목적	제공하는 목록	이용, 보유기간
                              정바통합회원	NICE평가정보(주)	본인인증	성명,전화번호	인증후 즉시파기
                              정바통합회원	MTS 컴퍼니	문자발송	전화번호	사용 후 파기
                              정바통합회원	NH농협	지원사업 계좌조회	계좌번호	계약종료시까지
                              정바통합회원	에스케이엠앤서비스	지원사업 몰연계	아이디	계약종료시까지
                              정바통합회원	마이크로밀엠브레인	청년노동자지원사업	이름, 메일주소, 전화번호	계약종료시까지
                              제8조 정보주체의 권리, 의무 및 그 행사방법
                              정보주체는 재단에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.
                              개인정보 열람요구
                              오류 등이 있을 경우 정정 요구
                              삭제요구
                              처리정지 요구
                              개인정보 열람, 정정, 삭제, 처리정지 요구 접수처리를 위한 이의신청 접수 담당자는 아래와 같습니다.
                              플랫폼운영팀 박에스더(TEL : 031-270-9675)
                              제1항에 따른 권리 행사는 재단에 대해 「개인정보보호법」 시행규칙 별지 제6호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으      정바는 이에 대해 지체 없이 조치하겠습니다.
                              [개인정보보호법 시행규칙 별지 제6호] 개인정보 열람정정삭제등 요구서
                              정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 재단 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.
                              제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제12호 서식에 따른 위임장을 제출하셔야 합니다.
                              [개인정보보호법 시행규칙 별지 제12호]위임장
                              제9조 개인정보의 파기
                              원칙적으로 개인정보 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.
                              
                              파기절차
                              이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
                              
                              파기기한
                              이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
                              
                              파기방법
                              전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
                              
                              제10조 개인정보의 안전성 확보 조치
                              정바는 「개인정보보호법」 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.
                              
                              내부관리계획의 수립 및 시행
                              개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.
                              
                              해킹 등에 대비한 기술적 대책
                              정바는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.
                              
                              개인정보의 암호화
                              이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.
                              
                              비인가자에 대한 출입 통제
                              개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.
                              
                              제11조 개인정보 보호책임자 및 담당자
                              정바는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
                              개인정보 보호책임자
                              부서명      꽃보다 자바
                              담당자 :    김중현
                              이메일 : 
                              연락처 :
                              개인정보 담당자
                              부서명     꽃보다 자바
                              담당자 :   김연우
                              이메일 : 
                              연락처 :
                              정보주체께서는 재단의 서비스(또는 사업)를 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다      정바는 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.
                              제12조 권익침해 구제방법
                              정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
                              
                              개인정보분쟁조정위원회(http://www.kopico.go.kr) : 02-2100-2499
                              대검찰청 사이버범죄수사단 : 02-3480-3571 (http://www.spo.go.kr)
                              경찰청 사이버안전국 : (국번없이) 182 (http://cyberbureau.police.go.kr)
                              「개인정보보호법」제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대 하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.
                              
                              ※ 행정심판에 대해 자세한 사항은 법제처(www.moleg.go.kr) 홈페이지를 참고하시기 바랍니다.
                              
                              제13조 개인정보 열람청구
                              정보주체는 개인정보 보호법 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다. 경기도일자리재단은 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.
                              개인정보 열람청구 접수·처리 부서
                              부서명      팀
                              담당자 : 이행연
                              이메일 : haengyun@gjf.or.kr
                              연락처 : 031-270-9692
                              정보주체께서는 제1항의 열람청구 접수·처리부서 이외에, 행정안전부의 ‘개인정보보호 종합포털’ 웹사이트(www.privacy.go.kr)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.
                              행정안전부 개인정보보호 종합포털 → 개인정보 민원 → 개인정보 열람등 요구
                              제14조 개인정보 처리방침 변경
                              이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
                              
                              공고일자 : 2020년 4월 29일
                              시행일자 : 2020년 5월 6일                           
                           </p>
                           <br>

                           <div class="div11">
                            <input type="checkbox"  name="chk" id="chk">위치정보 이용약관 동의(선택)
                            <button id="btn3" class ="btn">▽</button> 
                            <br>
                           </div>
                           <p id ="ct3" class="contents">
                              위치정보 이용약관에 동의하시면, 위치를 활용한 정보수신 등을 포함하는  “정바” 위치기반 서비스를 이용할 수 있습니다.

                              제 1조 (목적)
                              이 약관은 경기도일자리재단(이하 “재단”)이 제공하는 위치기반서비스와 관련하여 재단과 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
                              
                              제 2 조 (약관 외 준칙)
                              이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.
                              
                              제 3 조 (서비스 내용 및 요금)
                              ①회사는 직접 위치정보를 수집하거나 위치정보사업자인 이동통신사로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.
                              1.Geo Tagging 서비스: 게시글 등록 시점의 개인위치정보주체의 위치정보를 게시글과 함께 저장합니다.
                              2.위치정보를 활용한 검색결과 제공 서비스: 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과 및 주변결과(지원정책, 지원기관, 행사정보, 교통수단 등)를 제시합니다.
                              3.현재 위치를 활용한 정보제공 서비스: 정보제공 요청 시 개인위치정보주체의 현 위치를 이용하여 정보를 제공합니다.
                              
                              제 4 조 (개인위치정보주체의 권리)
                              ①개인위치정보주체는 개인위치정보 수집 범위 및 이용약관의 내용 중 일부 또는 개인위치정보의 이용ㆍ제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보할 수 있습니다.
                              ②개인위치정보주체는 개인위치정보의 수집ㆍ이용ㆍ제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다.
                              ③개인위치정보주체는 언제든지 개인위치정보의 수집ㆍ이용ㆍ제공의 일시적인 중지를 요구할 수 있습니다. 이 경우 재단은 요구를 거절하지 아니하며, 이를 위한 기술적 수단을 갖추고 있습니다.
                              ④개인위치정보주체는 재단에 대하여 아래 자료의 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 재단은 정당한 이유 없이 요구를 거절하지 아니합니다. 1.개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료
                              2.개인위치정보주체의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법령의 규정에 의하여 제3자에게 제공된 이유 및 내용
                              ⑤재단은 개인위치정보주체가 동의의 전부 또는 일부를 철회한 경우에는 지체 없이 수집된 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료를 파기합니다. 단, 동의의 일부를 철회하는 경우에는 철회하는 부분의 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료에 한합니다.
                              ⑥개인위치정보주체는 제1항 내지 제4항 의 권리행사를 재단에 요구할 수 있습니다.
                              
                              제 5 조 (위치정보 이용ㆍ제공사실 확인자료 보유근거 및 보유기간)
                              재단은 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료를 위치정보시스템에 자동으로 기록하며, 6개월 이상 보관합니다.
                              
                              제 6 조 (서비스의 변경 및 중지)
                              ①재단은 위치정보사업자의 정책변경 등과 같이 재단의 제반 사정 또는 법률상의 장애 등으로 서비스를 유지할 수 없는 경우, 서비스의 전부 또는 일부를 제한, 변경하거나 중지할 수 있습니다.
                              ②제1항에 의한 서비스 중단의 경우에는 재단은 사전에 인터넷 등에 공지하거나 개인위치정보주체에게 통지합니다.
                              
                              제 7 조 (개인위치정보 제3자 제공시 즉시 통보)
                              ① 재단은 위치정보와 관련된 분쟁에 대하여 개인위치정보주체와 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 방송통신위원회에 재정을 신청할 수 있습니다.
                              ② 재단 또는 개인정보위치 주체는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 개인정보보호법에 따라 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.
                              
                              부 칙
                              제1조 시행일
                              본 약관은 2017년 6월 14일부터 적용됩니다.</p>
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
                                 
                             $(document).ready(function(){
                             //최상단 체크박스 클릭
                                 $("#checkall").click(function(){
                            //클릭되었으면
                                   if($("#checkall").prop("checked")){
                           //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
                                      $("input[id=chk]").prop("checked",true);
                           //클릭이 안되있으면
                                   }else{
                           //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
                                       $("input[name=chk]").prop("checked",false);
                                     }
                                  });
                                });

                          
                           </script>
                        </div>
                        <div>
                            <p>
                                <b>※마케팅 수신 동의(선택)</b><br>
                                정바 및 통합서비스(도시군통합신청서비스, 청년노동자지원사업, 일하는 청년통장) 등의 전달이 필요한 내용을 안내하는 용도입니다. APP PUSH의
                                원활한 제공을 위해 회원님 단말기의 식별정보를 수집ㆍ이용합니다. 마케팅 수신 동의에 사용되는 개인정보는
                                <공공기관의 개인정보보호법="개인정보보호법" 제="제" 3조에="3조에" 의거="의거">
                                    사용목적 이외의 용도로 활용되지 않음을 알려드립니다.
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
                                <input type="radio" name="marketing" value="agree" id="chk">동의함
                                <input type="radio"  name="marketing" value="deagree" >동의하지 않음
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
                                 <td width="200px"><label class="must">*</label> 아이디</td>
                                 <td class="middletable"><input type="text" maxlength="13" name="joinUserId" required></td>
                                 <td width="200px"><input type="button" id="idCheck" value="중복확인"></td>
                              </tr>
                              <tr>
                                 <td><label class="must">*</label> 비밀번호</td>
                                 <td><input type="password" maxlength="13" name="joinUserPwd" required></td>
                              </tr>
                              <tr>
                                 <td><label class="must">*</label> 비밀번호 확인</td>
                                 <td class="middletable"><input type="password" maxlength="13" name="joinUserPwd2" required></td>
                                 <td><label id="pwdResult"></label></td>
                              </tr>
                              <tr>
                                 <td><label class="must">*</label> 이름</td>
                                 <td class="middletable"><input type="text" name="userName" required></td>
                              </tr>
                              
                              <tr>
                                 <td>연락처</td>
                                 <td class="middletable">
                                    <input type="tel" maxlength="11" name="phone" placeholder="(-없이)01012345678">
                                 </td>
                              </tr>
                              <tr>
                                 <td>이메일</td>
                                 <td class="middletable"><input type="email" name="email"></td>
                                 <td></td>
                              </tr>
                              <tr>
                                 <td>주소</td>
                                 <td class="middletable"><input type="text" name="address"></td>
                                 <td></td>
                              </tr>
                             
                           </table>
                           
                        
                           
                           <div class="btns" id="signUpBtns">
                              <input id="signUpBtn" type="submit" value="가입하기">
                              <input type="button" id="goMain" onclick="goMain();" value="메인으로">
                           </div>
                        </form>
                     </div>
                  

                        </div>

                    </div>

                </div>
            </div>
            </div>

        </div>
    </section>
<%@ include file="../Common/footer.jsp" %>
</body>
</html>