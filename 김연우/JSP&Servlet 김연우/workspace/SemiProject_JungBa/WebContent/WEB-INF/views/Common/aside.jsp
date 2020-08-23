<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
		float: left;
		display: block;
		width: 200px;
		line-height: 40px;
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
</style>

</head>
<body>
	<section>
		<aside>
			<h2><a href="#">마이페이지</h2></a>
			<hr>
			<div> <a href="#">
					<h2>나의게시물</h2>
				</a>

				<dl>
					<dt><a href="#">
							<h3>정보게시판</h3>
						</a></dt>
					<dt><a href="#">
							<h3>자유게시판</h3>
						</a></dt>
					<dt><a href="#">
							<h3>Q / A</h3>
						</a></dt>
				</dl>
			</div>
			<a href="#">
				<h2>회원탈퇴</h2>
			</a>
		</aside>
	</section>
</body>
</html>