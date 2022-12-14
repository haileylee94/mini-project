<%@page import="java.sql.ResultSet"%>
<%@page import="DBPKG.Util"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<script src="check.js"></script>
<!-- 
<script type="text/javascript">
function check(f){
	if(f.custname.value.length == 0){
		alert("회원성명이 입력되지 않았습니다.");
		f.custname.focus();
		return false;
	}
	
	if(f.phone.value.length == 0){
		alert("회원 전화번호가 입력되지 않았습니다.");
		f.phone.focus();
		return false;
	}
	
	if(f.address.value.length == 0){
		alert("회원 주소가 입력되지 않았습니다.");
		f.address.focus();
		return false;
	}
	
	if(f.joindate.value.length == 0){
		alert("가입 날짜가 입력되지 않았습니다.");
		f.joindate.focus();
		return false;
	}
	
	if(f.grade.value.length == 0){
		alert("회원 등급이 입력되지 않았습니다.");
		f.grade.focus();
		return false;
	}
	
	if(f.city.value.length == 0){
		alert("도시코드가 입력되지 않았습니다.");
		f.city.focus();
		return false;
	}
}
</script>
onsubmit에는 return check(this)를 해줘야 한다.
 -->
<style>
table {
	margin: auto;
}
/*
		form{
			display: flex; 
			align-items: center; 수직정렬
			justify-content: center; 수평정렬
			text-align:center;
		}
	*/
</style>
</head>
<body>
	<jsp:include page="header.jsp" />

	<section
		style="position: fixed; top: 100px; background-color: lightgray; height: 100%; width: 100%; padding-left: 20px">
		<h1 style="text-align: center;">
			<b>쇼핑몰 회원 등록</b><br>
		</h1>

		<form name="f" method="post" onsubmit="return check()" action="action.jsp">
		<input type="hidden" name="mode" value="insert">
			<table border="1">

	<%
	
		request.setCharacterEncoding("UTF-8");
	
		Connection con =null;
		Statement stmt =null;
		String custno="";
		
		try{
			con = Util.getConnection(); //db연결
			stmt = con.createStatement(); //sql 실행하기 위한 변수 생성
			String sql = "select max(custno)+1 custno from member_tbl_02";
			ResultSet rs =stmt.executeQuery(sql);//stmt를 통해서 sql 실행 결과
			rs.next();//1개의 결과물을 출력
			custno = rs.getString("custno");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
				<tr>
					<th>회원번호(자동발생)</th>
					<td><input name=custno size=14 value="<%=custno%>" readonly></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input name="custname" size=14></td>
				</tr>
				<tr>
					<th>회원전화</th>
					<td><input name="phone" size=20></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input name="address" size=30></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input name="joindate" size=14></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP,B:일반,C:직원]</th>
					<td><input name="grade" size=14></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input name="city" size=14></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="등록"> <input type="button" value="조회"
						onclick="return search()"> <!-- onclick="location.href='memberList.jsp'"이렇게 해도 됨 -->
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>