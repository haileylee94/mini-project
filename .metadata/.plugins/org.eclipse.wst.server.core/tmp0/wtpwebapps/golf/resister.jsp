<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>resister</title>
<style>
	form{
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.subbtn{
		text-align: center;
	}
	.title{
		text-align: center;
	}
</style>
<script type="text/javascript" src="check.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>수강신청</h2>
		<form action="insert.jsp" method="post" name="f" onsubmit="return check()">
			<table border="1">
				<tr>
					<td class="title">수강월</td>
					<td><input name="resist_month" style="width: 150px;"> &nbsp; 예)202203</td>
				</tr>
				<tr>
					<td class="title">회원명</td>
					<td>
						<select name="c_name" style="width: 150px;" onchange="getValue(this.value)">
							<option value="">회원명</option>
							<option value="10001">홍길동</option>
							<option value="10002">장발장</option>
							<option value="10003">임꺽정</option>
							<option value="20001">성춘향</option>
							<option value="20002">이몽룡</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="title">회원번호</td>
					<td><input id="c_no" name="c_no" style="width: 150px;" readonly></td>
				</tr>
				<tr>
					<td class="title">강의장소</td>
					<td>
						<input type="radio" name="class_area" value="서울본원">서울본원
						<input type="radio" name="class_area" value="성남분원">성남분원
						<input type="radio" name="class_area" value="대전분원">대전분원
						<input type="radio" name="class_area" value="부산분원">부산분원
						<input type="radio" name="class_area" value="대구분원">대구분원
					</td>
				</tr>
				<tr>
					<td class="title">강의명</td>
					<td>
						<select name="class_name" style="width: 150px;" onchange="getvalue2(this.value)">
							<option value="">강의신청</option>
							<option value="100000">초급반</option>
							<option value="200000">중급반</option>
							<option value="300000">고급반</option>
							<option value="400000">심화반</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="title">수강료</td>
					<td><input id="tuition" name="tuition" style="width: 150px;" readonly>원</td>
				</tr>
				<tr>
					<td class="subbtn" colspan="2">
						<input type="submit" value="수강신청">
						<input type="reset" value="다시쓰기" onclick="return res()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>