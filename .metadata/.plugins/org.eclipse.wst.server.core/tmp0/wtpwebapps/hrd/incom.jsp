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
<title>incom</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section
		style="position: fixed; top: 100px; background-color: lightgray; height: 100%; width: 100%; padding-left: 20px">
		<h1 style="text-align: center;">
			<b>회원 매출 조회</b><br>
		</h1>
		<form
			style="display: flex; align-items: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<th>회원번호</th>
					<th>회원성명</th>
					<th>고객등급</th>
					<th>매출</th>
				</tr>

				<%
					Connection con = null;
				Statement stmt = null;
				String grade = "";

				try {
					con = Util.getConnection();
					stmt = con.createStatement();
					String sql = "select me.custno, me.custname, me.grade, sum(mo.price) price "
					+ "from member_tbl_02 me, money_tbl_02 mo where me.custno = mo.custno "
					+ "group by me.custno, me.custname, me.grade order by sum(mo.price) desc";
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
						grade = rs.getString("grade");
						switch (grade) {
						case "A":
					grade = "VIP";
					break;
						case "B":
					grade = "일반";
					break;
						case "C":
					grade = "직원";
					break;
						}//switch
				%>
				<tr>
					<td><%=rs.getString("custno")%></td>
					<td><%=rs.getString("custname")%></td>
					<td><%=grade%></td>
					<td><%=rs.getString("price")%></td>
				</tr>
				<%
					} //while
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>