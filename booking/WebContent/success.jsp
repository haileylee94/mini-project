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
<title>Show the list</title>
<style>
	table{
		margin: auto;
	}
	p{
		text-align: center;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<%
		request.setCharacterEncoding("UTF-8");
		String empno = request.getParameter("empno");
	%>
		<h1>사원번호: <%=empno %>님의 좌석예약조회</h1>
		<table border="1">
			<tr>
				<th>사원번호</th>
				<th>이름</th>
				<th>근무일자</th>
				<th>좌석번호</th>
				<th>좌석위치</th>
				<th>내선번호</th>
			</tr>
			<%
				try{
					Connection con= Util.getConnection();
					String sql="select r.empno, e.empname, r.resvdate, s.seatno, s.office, s.callno "
							+"from  tbl_emp e,  tbl_seat s,  tbl_resv r "
							+"where e.empno = r.empno and s.seatno = r.seatno and r.empno=?";
					PreparedStatement pstmt = con.prepareStatement(sql);
					pstmt.setString(1, empno);
					ResultSet rs=pstmt.executeQuery();
					while(rs.next()){
						String resvdate = rs.getString(3);
						String date = resvdate.substring(0, 4) + "년" + resvdate.substring(4, 6) + "월" + resvdate.substring(6, 8) + "일";
						%>
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=date %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=rs.getString(6) %></td>
						</tr>
						<%
					}
				}catch(Exception e){
					e.printStackTrace();
				}
			%>
		</table>
		<p>
		<input type="button" value="돌아가기" onclick="window.location='list.jsp'">
		</p>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>