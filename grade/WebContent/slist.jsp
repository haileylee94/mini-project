<%@include file="db.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbpkg.Util"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보현황</title>
<style type="text/css">
	table{
		margin: auto;
	}
	td{
		text-align: center;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h1>학생정보현황</h1>
		<table border="1">
			<tr>
				<td>학번</td>
				<td>이름</td>
				<td>주민번호</td>
				<td>학과명</td>
				<td>성별</td>
				<td>전화번호</td>
				<td>이메일</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
			
				try{
					//Connection con=Util.getConnection();
					String sql="select stuid,sname,jumin,dept_name,phone,email from tbl_student";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String gender = "";
						//String gender = jumin.substring(6,7);
						String jumin=rs.getString(3);
						String juminnum=jumin.substring(0, 6) + "-" + jumin.substring(6, 13);
						
						if(juminnum.charAt(7) == '3'){
							gender="남자";
						}else if(juminnum.charAt(7) == '4'){
							gender="여자";
						}
						//if(gender.equals("3")) gender="남자";
						//else gender="여자";
						%>
						<tr>
							<td><%=rs.getString(1) %>
							<td><%=rs.getString(2) %>
							<td><%=juminnum %>
							<td><%=rs.getString(4) %>
							<td><%=gender %>
							<td><%=rs.getString(5) %>
							<td><%=rs.getString(6) %>
						</tr>
						<%
					}
				}catch(Exception e){
					e.printStackTrace();
				}
			%>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>