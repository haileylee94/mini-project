<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생조회</title>
<style>
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
			<h2>교과목 리스트</h2>
			<table border="1">
				<tr>
					<td>과목코드</td>
					<td>과목명</td>
					<td>학점</td>
					<td>담당강사</td>
					<td>요일</td>
					<td>시작시간</td>
					<td>종료시간</td>
					<td>삭제</td>
				</tr>
				<%
					request.setCharacterEncoding("UTF-8");
				
					try{
						String sql="select c.subcode, c.subname, c.score, t.name, c.day, c.startT, c.endT "
								+"from course_tbl c, teacher_tbl t where c.teacher=t.idx";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						while(rs.next()){
							String day= rs.getString(5);
							if(day.equals("1")) day ="월요일";
							else if(day.equals("2")) day = "화요일";
							else if(day.equals("3")) day = "수요일";
							else if(day.equals("4")) day = "목요일";
							else if(day.equals("5")) day = "금요일";
							
						String startT = rs.getString(6);
						
						while(startT.length()<4){
							startT = "0" + startT;
						}
						
						String start = startT.substring(0, 2) + "시" + startT.substring(2, 4) + "분";
						
						String endT = rs.getString(7);
						
						while(endT.length()<4){
							endT = "0" + endT;
						}
						
						String end = endT.substring(0, 2) + "시" + endT.substring(2, 4) + "분";
							%>
							<tr>
								<td><a href="edit.jsp?subcode=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getInt(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=day %></td>
								<td><%=start %></td>
								<td><%=end%></td>
								<td><a href="del.jsp?subcode=<%=rs.getString(1)%>">삭제</a></td>
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