<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation</title>
<script type="text/javascript" src="check.js"></script>
<style type="text/css">
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
		<h1>근무좌석예약</h1>
		<form name="f" action="i_action.jsp" method="post" onsubmit="return check()">
			<table border="1">
				<tr>
					<td>예약번호</td>
					<td><input name="resvno" id="resvno">예)2021001</td>
				</tr>
				<tr>
					<td>사원번호</td>
					<td><input name="empno" id="empno">예)1001</td>
				</tr>
				<tr>
					<td>근무일자</td>
					<td><input name="resvdate" id="resvdate">예)20211231</td>
				</tr>
				<tr>
					<td>좌석번호</td>
					<td><input name="seatno" id="seatno">예)S001~S009</td>
				</tr>
				<tr>
					<td colspan="2" class="btn">
						<input type="submit" value="등록">
						<input type="reset" value="다시쓰기" onclick="f.revno.focus()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>