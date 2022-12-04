<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적입력</title>
<style type="text/css">
	form{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.th,
	.btn{
		text-align: center;
	}
</style>
<script type="text/javascript" src="check.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h1>성적입력</h1>
		<form action="ginsert.jsp" method="post" name="f" onsubmit="return check()">
			<table border="1">
				<tr>
					<td class="th">학번</td>
					<td><input name="sid" id="sid"></td>
				</tr>
				<tr>
					<td class="th">교과코드</td>
					<td>
						<select name="subcode" id="subcode">
							<option value="A001">A001-자바</option>
							<option value="A002">A002-C언어</option>
							<option value="A003">A003-데이터베이스</option>
							<option value="A004">A004-웹프로그래밍</option>
							<option value="A005">A005-영어</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="th">중간</td>
					<td><input name="midscore" id="midscore" type="number"></td>
				</tr>
				<tr>
					<td class="th">기말</td>
					<td><input name="finalscore" id="finalscore" type="number"></td>
				</tr>
				<tr>
					<td class="th">출석</td>
					<td><input name="attend" id="attend" type="number"></td>
				</tr>
				<tr>
					<td class="th">레포트</td>
					<td><input name="report" id="report" type="number"></td>
				</tr>
				<tr>
					<td class="th">기타</td>
					<td><input name="etc" id="etc" type="number"></td>
				</tr>
				<tr>
					<td colspan="2" class="btn">
						<input type="submit" value="등록">
						<input type="reset" value="취소" onclick="res()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>