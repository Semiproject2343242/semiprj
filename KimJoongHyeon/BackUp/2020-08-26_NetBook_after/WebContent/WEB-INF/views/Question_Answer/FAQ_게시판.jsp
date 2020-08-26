<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>FAQ 게시판</title>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
	<style>
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
	</style>
</head>
<body>
    <%@ include file="../Common/header.jsp" %>
    <section>
        <aside>
	        <h2> 묻고 답하기</h2></a>
	        <hr>
	        <dl>
	        	<dt>
	                <a href="<%=request.getContextPath()%>/main.fa"><h3>FAQ</h3></a>
	            </dt>
	            <dt>
	                <a href="<%=request.getContextPath()%>/main.qa"><h3>Q/A</h3></a>
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
            <br>
        </div> 
    </section>
    <%@ include file="../Common/footer.jsp" %>
</body>
</html>



 