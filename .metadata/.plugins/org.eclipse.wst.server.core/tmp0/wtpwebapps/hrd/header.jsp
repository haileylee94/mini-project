<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style type="text/css">
	*{
		text-decoration: none;
	}
	
	header{
		position:fixed;
		top:0px;
		width:100%;
		height: 60px;
		background-color: skyblue;
		color: white;
		text-align: center;
		line-height: 60px;
		font-size: 30px;
	}
	nav{
		position: fixed;
		top: 60px;
		width: 100%;
		height: 40px;
		background-color: purple;
		line-height: 40px;
		padding-left: 20px;
		color: #fff;
	}
	
	a{
		color: #fff;
	}
</style>
</head>
<body>

	<header>
		쇼핑몰 회원관리 ver 1.0
	</header>
	
	<nav>
		<a href="join.jsp">회원등록</a> &nbsp;&nbsp;	
		<a href="memberList.jsp">회원목록 조회/수정</a> &nbsp;&nbsp;	
		<a href="incom.jsp">회원매출조회</a> &nbsp;&nbsp;&nbsp;	
		<a href="index.jsp">홈으로</a>
	</nav>
</body>
</html>