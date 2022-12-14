<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list/edit</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section
		style="position: fixed; top: 100px; background-color: lightgray; height: 100%; width: 100%; padding-left: 20px">
		<h1 style="text-align: center;">
			<b>회원 목록 조회/수정</b><br>
		</h1>
		
		<form style="display: flex; align-items: center; text-align: center; justify-content: center">
			<table border="1">
				<tr>
					<th>회원번호</th>
					<th>회원성명</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>가입일자</th>
					<th>고객등급</th>
					<th>거주지역</th>
				</tr>
				
				<%
					Connection con=null;
					Statement stmt=null;
					String grade="";
					
					try{
						con=Util.getConnection();
						stmt=con.createStatement();
						String sql="select * from member_tbl_02 order by custno";
						ResultSet rs=stmt.executeQuery(sql);
						while(rs.next()){
							grade = rs.getString("grade");
							switch(grade){
							case "A":
								grade="VIP";
								break;
							case "B":
								grade="일반";
								break;
							case "C":
								grade="직원";
								break;
							}//switch
				%>
				
				<tr>
					<td><a href="modify.jsp?mod_custno=<%=rs.getString("custno") %>"><%=rs.getString("custno") %></a></td>
					<td><%=rs.getString("custname") %></td>
					<td><%=rs.getString("phone") %></td>
					<td><%=rs.getString("address") %></td>
					<td><%=rs.getDate("joindate") %></td><!-- getDate로 받아야 날짜만 볼수있다. -->
					<td><%=grade %></td>
					<td><%=rs.getString("city") %></td>
				</tr>
				
				<%
						}//while
					}catch(Exception e){
						e.printStackTrace();
					}
				%>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>