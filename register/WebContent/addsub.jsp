<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교과목 추가</title>
<script type="text/javascript" src="check.js"></script>
<style>
	form{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	td{
		text-align: center;
		width: 100%;
	}
	select{
		width: 100%;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>교과목 추가</h2>
		<form name="f" method="post" action="i_action.jsp" onsubmit="return check()">
			<table border="1">
				<tr>
					<td>과목 코드</td>
					<td><input name="subcode"></td>
				</tr>
				<tr>
					<td>과목명</td>
					<td><input name="subname"></td>
				</tr>
				<tr>
					<td>학점</td>
					<td><input name="score"></td>
				</tr>
				<tr>
					<td>담당강사</td>
					<td>
						<select name="teacher">
							<option value="">담당강사선택</option>
							<option value="1">김교수</option>
							<option value="2">이교수</option>
							<option value="3">박교수</option>
							<option value="4">우교수</option>
							<option value="5">최교수</option>
							<option value="6">임교수</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>요일</td>
					<td>
					<input name="day" type="radio" value="1">월
					<input name="day" type="radio" value="2">화
					<input name="day" type="radio" value="3">수
					<input name="day" type="radio" value="4">목
					<input name="day" type="radio" value="5">금
					</td>
				</tr>
				<tr>
					<td>시작 시간</td>
					<td><input name="startT"></td>
				</tr>
				<tr>
					<td>종료 시간</td>
					<td><input name="endT"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="추가">
						<input type="button" value="목록" onclick="location.href='list.jsp'">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>