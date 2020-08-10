<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 내용 확인</title>
<style>
   #head{display: inline-block; font-weight:bold;}
   #logo{float:right;}
   .loginbutton{float:right;margin-top:10px; 
                     border-top-left-radius: 12px;
                     border-bottom-right-radius: 12px;
                     border-top-right-radius:12px;
                     border-bottom-left-radius:12px;}
   #loginbutton1{border: none; padding:10px;}
   #loginbutton2{padding:10px;background-color: gray; border: none;}

   input[id ^= quickmenubtn]{margin-bottom:-8px;margin-right:-6px;border:1px; padding:20px;
                           font-family:"굴림체";font-weight:bold;}
   #quickmenubtn1{background-color: gray;}
   
   .fontsize{font-size:20px; font-weight: bold;}
   #table1{text-align:left; width:80%; margin-left:10%}
   #select1{width:100px; height:25px; margin-left:1% }
   #text1{width:300px; height:25px; margin-left:1%}
   #text2{width:80%; height:400px; overflow:auto;  margin-left:1%; }
   .file{width:5%;height:10%; margin-left:10%}
   #button1{width:15%; height:60px; margin-left:30%; margin-top:5% ; margin-bottom:5%; font-size:20px}
   #button2{width:15%; height:60px; margin-left:5%; font-size:20px}
   
   #button3{float:right; width:10% ;height:60px; margin-right:1%}
   #img{float:left}
   #p1{float:left; margin-left:1%}
   #buttons1{float:right; margin-right:10%}
   #p2{margin-top:-1%;}
   
</style>
</head>
<body>
   <header>
   <p id="head"><font size ="7">정</font>부 지원금<font size ="7">바</font>로 지금</p>
   <img id = "logo" src="../Media/logo.png" width = "90px" height = "90px">

   <form class="loginbutton">
   <input class="loginbutton" id="loginbutton2" type="button" name="my_menu" value="마이페이지">
   <input class="loginbutton" id="loginbutton1" type="button" name="login" value="로그인 ">

   </form>

   <br><br><br>

   <form class="quickmenubtn">
   <input id="quickmenubtn1" type="button" name="" value="공지사항" >
   <input id="quickmenubtn2" type="button" name="" value="지원정책">
   <input id="quickmenubtn3" type="button" name="" value="자유게시판">
   <input id="quickmenubtn4" type="button" name="" value="Q / A">
   </form>

   <hr>
   </header>
   <section>
      <table id="table1" border="1">
         <tr>
            <td width=400px height=0px ><font size =25px> No.1</font> </td>
            <td width=3000px style="text-align:center" id="name1"><h1>제목</h1><button id="button3">목록</button></td>
         </tr>
         <tr>
            <td></td>
            <td><p>글쓴이 <br> 2020.07.30 22:51 조회5 댓글1 </p> </td> <!-- text파일을 이욯해서 받아올예정 -->
         </tr>
         <tr>
            <td class="fontsize" >내용</td>
            <td><input type= "text" id="text2" placeholder="1. 공지를 읽어주세요."></td> <!--  text파일을 이용해서 내용을 받을예정 -->
            
         </tr>
         <tr>
            <td class="fontsize">첨부파일</td>
            <td><input type="file" ></td><!-- 플러스 부분 어떻게 해야함? -->
            <!--  https://enai.tistory.com/37 여기를 참고하고 모든 파일허용 -->
         </tr>
         <tr>
            <td class="fontsize">댓글</td>
            <td><img src="example/1.PNG" id="img"><p id="p1"> 사용자1 <br> 확인했습니다.</p> <!-- <input type="text"> 값을 넣어주어 수정 -->
                                  <div id="buttons1"><button> 답글 </button> 
                                                 <button> 삭제 </button> 
                                                 <button> 숙제 </button> <br>
                                                 <p id="p2"> 2020.07.30 22:53 </div> <!-- <input type="text"> 값을 넣어주어 수정 -->   
         </tr>
         <tr>
            <td colspan="2"> 
            <button id="button1">&lt;이전글</button>
            <button id="button2">다음글&gt;</button>
            </td>
         </tr>
      </table>
   </section>

</body>
</html>