<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록</title>
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
   
   .fontsize{font-size:20px; font-weight: bold;}
   #table1{border:1px solid black; text-align:left; margin:0px; padding:0px;}
   #select1{width:100px; height:25px; margin-left:1% }
   #text1{width:300px; height:25px; margin-left:1%}
   #text2{width:80%; height:400px; overflow:auto;  margin-left:1%; }
   .file{width:5%;height:10%; margin-left:10%}
   #button1{width:15%; height:60px; margin-left:30%; margin-top:5% ; margin-bottom:5%; font-size:20px}
   #button2{width:15%; height:60px; margin-left:5%; font-size:20px}
   
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
   <input id="quickmenubtn1" type="button" name="" value="공지사항">
   <input id="quickmenubtn2" type="button" name="" value="지원정책">
   <input id="quickmenubtn3" type="button" name="" value="자유게시판">
   <input id="quickmenubtn4" type="button" name="" value="Q / A">
   </form>

   <hr>
   </header>
   <section_Notice>
      <table id="table1">
         <tr>
            <td width=400px height=0px ><font size =25px> No.1</font> </td>
            <td width=3000px style="text-align:center"><h1>공지사항</h1></td>
         </tr>
         <tr id="a">
            <td class="fontsize" height=50px> 카테고리</td>
            <td>   
               <select id="select1">
                  <option value="필독">필독</option>
                  <option value="공지">공지</option>
               </select>
            </td>
         </tr>
         <tr>
            <td  class="fontsize" id ="size" height=50px>제목</td>
            <td><input type="text" id="text1" placeholder="제목을 입력해주세요."> </td>
         </tr>
         <tr>
            <td class="fontsize" >내용</td>
            <td><input type= "text" id="text2" placeholder="내용을 입력해주세요."></td>
         </tr>
         <tr>
            <td class="fontsize">첨부파일</td>
            <td><input type="file" ></td><!-- 플러스 부분 어떻게 해야함? -->
         </tr>
         <tr>
            <td colspan="2"> 
            <button id="button1">등록</button>
            <button id="button2">취소</button>
            </td>
         </tr>
      </table>
   </section_Notice>

</body>
</html>