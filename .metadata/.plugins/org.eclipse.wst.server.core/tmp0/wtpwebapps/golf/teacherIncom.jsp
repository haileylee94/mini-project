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
<title>teacher Income</title>
<style>
	table{
		margin: auto;
	}
	table td{
		width: 150px;
		text-align: center;
	}
	.right{
		text-align: right;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>강사매출현황</h2>
		<table border="1">
			<tr>
				<td>강사코드</td>
				<td>강의명</td>
				<td>강사명</td>
				<td>총매출</td>
			</tr>
			
			<%
				request.setCharacterEncoding("UTF-8");
			
				try{
					String sql="select t.teacher_code, t.class_name, t.teacher_name, sum(c.tuition) tuition from tbl_teacher t, tbl_class c "
							+"where t.teacher_code = c.teacher_code "
							+"group by  t.teacher_code, t.class_name, t.teacher_name order by t.teacher_code";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						int tuition = rs.getInt(4);
						DecimalFormat transformat = new DecimalFormat("₩ ###,###,###.00");//소수점 두자리까지 보여줌
						String tuitfee = transformat.format(tuition);
						%>
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td class="right"><%=rs.getString(3) %></td>
							<td class="right"><%=tuitfee %></td>
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