<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search booking</title>
<script type="text/javascript" src="check.js"></script>
<style>
	form{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.btn{
		text-align: center;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h1>좌석예약조회</h1>
		<form action="l_action.jsp" name="fl" method="post">
			<table border="1">
				<tr>
					<td>사원번호를 입력 하시오.</td>
					<td><input name="empno" id="empno"></td>
				</tr>
				<tr>
					<td colspan="2" class="btn">
						<input type="button" value="좌석예약조회" onclick="search()">
						<input type="button" value="홈으로" onclick="home()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>