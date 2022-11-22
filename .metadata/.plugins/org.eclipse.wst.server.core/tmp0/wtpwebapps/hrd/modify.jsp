<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.tomcat.websocket.Transformation"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
</head>
<body>

<script src="check.js"></script>
<jsp:include page="header.jsp"/>

<section style="position: fixed; background-color: lightgray; width: 100%; height: 100%; top: 100px">
	<h1 style="text-align: center"><b>홈쇼핑 회원 정보 수정</b><br></h1>
	<form name="f" method="post"  action="action.jsp" style="display: flex; align-items: center; justify-content: center">
	<input type="hidden" name="mode" value="modify">
	<table border="1">
		<%
			request.setCharacterEncoding("UTF-8");
			Connection con=null;
			Statement stmt=null;
			String mod_custno=request.getParameter("mod_custno");
			String custname="";
			String phone="";
			String address="";
			Date joindate;
			String joindateStr ="";
			String grade="";
			String city="";
			
			try{
				con=Util.getConnection();
				stmt=con.createStatement();
				String sql="select * from member_tbl_02 where custno = " + mod_custno;
				ResultSet rs=stmt.executeQuery(sql);
				rs.next();
				mod_custno=rs.getString("custno");
				custname=rs.getString("custname");
				phone=rs.getString("phone");
				address=rs.getString("address");
				joindate=rs.getDate("joindate");
				grade=rs.getString("grade");
				city=rs.getString("city");
				
				SimpleDateFormat transFormat=new SimpleDateFormat("yyyy-MM-dd");
				joindateStr=transFormat.format(joindate);
			}catch(Exception e){
				e.printStackTrace();
			}
		%>
		<tr>
			<th>회원번호</th>
			<td><input name="custno" size=14 value="<%=mod_custno %>" readonly></td>
		</tr>
		<tr>
			<th>회원성명</th>
			<td><input name="custname" size=14 value=<%=custname %>></td>
		</tr>
		<tr>
			<th>회원전화</th>
			<td><input name="phone" size=20 value=<%=phone %>></td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td><input name="address" size=30 value=<%=address %>></td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td><input name="joindate" size=14 value=<%=joindateStr %>></td>
		</tr>
		<tr>
		<th>고갱등급[A:VIP,B:일반,C:직원]</th>
			<td><input name="grade" size=14 value=<%=grade %>></td>
		</tr>
		<tr>
			<th>도시코드</th>
			<td><input name="city" size=14 value=<%=city %>></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center">
				<input type="submit" value="수정" onclick="return modify()">
				<input type="button" value="조회" onclick="return search()">
			</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>