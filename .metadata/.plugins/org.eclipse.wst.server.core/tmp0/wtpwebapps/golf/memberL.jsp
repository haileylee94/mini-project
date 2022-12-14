<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member List</title>
<style>
	table{
		margin: auto;
	}
	table td{
		width: 150px;
		text-align: center;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>회원정보조회</h2>
		<table border="1">
			<tr>
				<td>수강월</td>
				<td>회원번호</td>
				<td>회원명</td>
				<td>강의명</td>
				<td>강의장소</td>
				<td>수강료</td>
				<td>등급</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
			
				try{
					String sql = "select c.resist_month, m.c_no, m.c_name, t.class_name, c.class_area, c.tuition, m.grade "
							+ "from tbl_teacher t, tbl_member m, tbl_class c "
							+ "where m.c_no = c.c_no  and t.teacher_code = c.teacher_code";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String resist_month = rs.getString(1);
						String month = resist_month.substring(0, 4) + "년" + resist_month.substring(4, 6) + "월";
						
						int tuition =rs.getInt(6);
						DecimalFormat transformat = new DecimalFormat("₩ ###,###,###");
						String tuitfee = transformat.format(tuition);
						%>
						<tr>
							<td><%=month %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=tuitfee %></td>
							<td><%=rs.getString(7) %></td>
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