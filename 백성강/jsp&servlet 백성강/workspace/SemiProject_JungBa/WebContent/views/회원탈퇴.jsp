<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원탈퇴</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/headerfooter.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/side.css">
</head>
<style>

    #topic{
        border-bottom:1.5px solid black;
    }
  
    section {
      display: flex;
      line-height: 40px;
    }
    #main_section {
      width: 100%;
      padding-top:10%;
      padding-left:10%;
    }
  
</style>
<body>
    <header>
        <div class="header_top">
           <div class="top">
              <li><a href="#" class="top_btn"><b>마이페이지</b></a></li>
              <li><a href="#" class="top_btn"><b>로그인</b></a></li>
           </div>
        </div>
        <nav class="navbar">
           <div class="navbar_title">
              <a href="#"><span class="lagefont">정</span>부지원금<span class="lagefont">바</span>로 지금</a>
           </div>
           <div class="navbar_menu">
              <li><a href="#">공지사항</a></li>
              <li><a href="#">지원정책</a></li>
              <li><a href="#">커뮤니티</a></li>
              <li><a href="#">대외활동</a></li>
              <li><a href="#">Q / A</a></li>
           </div>
           <div class="navbar_logo">
              <img id="logo" src="../Media/logo.png" width = "80px" height = "80px">
           </div>
        </nav>
     </header> 
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
          
            <table align = center>
                <tr>
                    <th>F4_No1님</th>
                </tr>
                <tr id="a">
                    <td>
                        <h3>탈퇴를 진행하시려면 비밀번호를 입력해주세요</h3>
                        <form>
                        <input type="password" name="password" 
                               placeholder="비밀번호를 입력해주세요." size="30">
                               <button type="submit" name="subPwd" onclick="dlt();">탈퇴</button>
                               <script>
                                   function dlt(){
                                     var result=window.confirm("정말로 탈퇴하시겠습니까?");

                                       if(result){
                                        window.alert("탈퇴가 완료되었습니다.");
                                       }else{
                                        window.alert("탈퇴가 취소되었습니다.");
                                       }
                                   }
                               </script>
                      
                    
                        </form>
                        
    
                </td>
                </tr>
                </table>
                
        </div>
        
    </section>
    
    <footer>
        <div class="footer_box">
            Copyrightⓒ2020 Flower than java Project All Rights Reserved.
        </div>
    </footer>
</body>
</html>
