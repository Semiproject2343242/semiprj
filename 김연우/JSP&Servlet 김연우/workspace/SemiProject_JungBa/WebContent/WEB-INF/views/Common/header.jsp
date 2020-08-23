<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
 
 <style>
header {
  top: 0;
  left: 0;
  right: 0;
  height: 250px;
  /* background-color: #2979ff; */
}
a {
  text-decoration: none;
  color: black;
}
.header_top {
  width: 100%;
  height: 30px;
  background-color: rgb(15, 76, 130);
  /* background-color: #c48b9f; */
}
.top {
  display: flex;
  float: right;
  padding-right: 10%;
  list-style: none;
  padding-top: 4px;
}
.top_btn {
  margin: 1px;
  padding: 4px;
  border-radius: 4px;
  color: white;
}
.top_btn:hover {
  border-radius: 4px;
  color: black;
}
.lagefont {
  font-size: 60px;
}
.navbar {
  padding-top: 50px;
  display: flex;
  width: 80%;
  margin: 0px auto;
  justify-content: space-between;
  align-items: center;
  /* background-color: #f8bbd0; */
}

.navbar_menu {
  display: flex;
  list-style: none;
  padding: 40px 0px;
  padding-right: 150px;
}

.navbar_menu li {
  border-right: 1px solid silver;
  padding: 8px 12px; /* 마우스 선택영역이 넓어짐 */
}

.navbar_menu li:hover {
  background-color: #f5f5f5;
  font-weight: bold;
  border-radius: 4px;
}

@media screen and (max-width: 768px) {
  header {
    top: 0;
    left: 0;
    right: 0;
    height: 250px;
    /* background-color: #2979ff; */
  }
  .navbar {
    flex-direction: column;
    align-items: center;
    padding: 0px;
  }

  .navbar_title {
    width: 100%;
    font-size: 0px;
    text-align: center;
    padding: 0px;
  }
  .navbar_menu {
    flex-direction: column;
    width: 100%;
    padding: 0px;
  }
  .navbar_menu li {
    border-right: 0px solid silver;
    width: 100%;
    text-align: center;
    font-size: 12px;
    padding: 8px 0px;
  }
  .top {
    position: absolute;
    right: 0px;
    padding: 0px;
  }
  .navbar_logo img {
    display: none;
  }
}
 </style>
 
</head>
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
            <img id="logo" src="Media/logo.png" width = "80px" height = "80px">
         </div>
      </nav>
   </header> 
</body>
</html>