<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../Common/header.jsp" %>
    <meta charset="UTF-8">
    <title>Layout01</title>
    <script src="../../resources/js/jquery-3.5.1.min.js"></script> 
 	<link rel="stylesheet" type="text/css" href="../../../resources/css/body.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/�������׳���Ȯ��.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/side.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/css/�������ױ۾���.css">

    <script src="../resources/js/slides.js"></script>

    <style>
    </style>
</head>
<body>
     <section>
        <aside>
            <a href="#"><h2>NO.01</h2></a>
            <hr>
            <a href="#"><h2>����</h2></a>
            <a href="#"><h2>ī�װ�</h2></a>
            <a href="#"><h2>����</h2></a>
            <br><br><br><br><br><br>
            <a href="#"><h2>÷������</h2></a>
        </aside>
        <div id="main_section">
            
            <h2 style="text-align: center;">�������� ����</h2>
            
            <input type="text" id="text1" placeholder="������ �Է����ּ���."><br clear="all"> 
            <select id="select1">
                <option value="�ʵ�">�ʵ�</option>
                <option value="����">����</option>
            </select>
            <textarea id="textarea" placeholder="������ �Է����ּ���."></textarea><br>
            <input type="file" id="file"><br>
            <div id="buttons1">
                <button id="button1">���</button>
                <button id="button2">���</button>
            </div>
        </div>
       </section>
		<br>
	<%@ include file="../Common/footer.jsp" %>
</body>
</html>