<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 기본틀</title>
<script src="../../resources/js/jquery-3.5.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="../../../resources/css/body.css">

<style>
    /* #div1{
        text-align: center;  
        height: auto; 
    } */
    .FAQ_title{
        text-align: left;
        height:45px;        
        font-size:20px;
        cursor: pointer;
        padding-left: 15px;
        padding-bottom: 15px;
        border-bottom: 1px solid black;
    }
    .contents{ 
        text-align: left;
        height: 200px; 
        background: RGB(238,238,238 ); 
        display: none; 
        line-height: auto;      
        margin-left: 15px;
    } 
    .pagination{
        text-align: center;
        padding-right: 200px;
    }

</style>
</head>

<body>
    <%@ include file="../Common/header.jsp" %>
    <section>
        <aside>
            <a href="#"><h2> Q/A</h2></a>
            <hr>
            <dl>
                <dt>
                    <a href="#"><h3>Q/A</h3></a>
                </dt>
                <dt>
                    <a href="#"><h3>자주 묻는 질문</h3></a>
                </dt>
            </dl>
        </aside>
        
        <div id="main_section">
            <h2 align="center">FAQ</h2>
            <hr>
            <!-- <div id='Board' > -->
                <div class='FAQ_title'><h3>[카테고리]'지원정책'채용정보는 등록할 수 없나요?</h3></div>
                <p class='contents'>답변: 가능은 합니다. 하지만 꼭 그렇지도 않은것이다라고 믿을수있죠</p>
                <div class="FAQ_title"><h3>[카테고리]'지원정책'채용정보는 등록할 수 없나요? </h3></div>
                <p class='contents'>답변:가능은 합니다. 하지만 꼭 그렇지도 않은것이다라고 믿을수있죠가능은 합니다. 
                    하지만 꼭 그렇지도 않은것이다라고 믿을수있죠가능은 합니다. 하지만 꼭 그렇지도 않은것이다라고 믿을수있죠
                </p>
                <div class="FAQ_title"><h3>[카테고리]'지원정책'채용정보는 등록할 수 없나요? </h3></div>
                <p class='contents'>답변:내용6</p>
                <div class="FAQ_title"><h3>[카테고리]'지원정책'채용정보는 등록할 수 없나요? </h3></div>
                <p class='contents'>답변:내용6</p>
                <div class="FAQ_title"><h3>[카테고리]'지원정책'채용정보는 등록할 수 없나요? </h3></div>
                <p class='contents'>답변:내용6</p>  
                
                <script>
                    $('.FAQ_title').click(function(){
                        $(this).next().slideToggle();
                    });
                </script>
            <!-- </div> -->
            <br>
        <br clear="all">   
        <div class = "pagination">
        <ul>
                <a href="#" title = "이전" class="pre"><</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#" title = "다음" class="next">></a>
            </ul>
        </div>
        </div> 
        
    </section>
    <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 