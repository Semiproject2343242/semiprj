<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>���������� �ٷ�����1</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css" />
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/body.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/side.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/�������ױ۾���.css"/>

    <script src="../resources/js/slides.js"></script>

    <style>
    </style>
</head>
  
<body>
	<%@ include file="../Common/header.jsp" %>
     <section>
        <aside>
           <h2> ��������</h2>
           <hr>
           <h2>����</h2>
           <h2>ī�װ�</h2>
           <h2>����</h2>
           <br><br><br><br><br><br>
           <h2>÷������</h2>
        </aside>
        <div id="main_section">
            <form action="<%= request.getContextPath() %>/insert.no" method="post">
            	<h2 style="text-align: center;">�������� ����</h2>
            	<hr>
           	 	<input type="text" id="text1" placeholder="������ �Է����ּ���." name="title"><br clear="all"> 
            	<select id="select1" name="category">
               	 	<option value="�ʵ�">�ʵ�</option>
                	<option value="����">����</option>
            	</select>
            	<textarea id="textarea" name="content" placeholder="������ �Է����ּ���."></textarea><br>
            	<input type="file" id="file"><br>
            	<div id="buttons1">
                	<button id="button1">���</button>
                	<button id="button2" onclick="location.href='javascript:history.go(-1);'">���</button>
            	</div>
            </form>
        </div>
       </section>
		<br>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>