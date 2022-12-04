<%@page import="java.sql.ResultSet"%>
<%@include file="db.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적현황</title>
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
		<h1>성적현황</h1>
		<table border="1">
			<tr>
				<td>학번</td>
				<td>성명</td>
				<td>교과목</td>
				<td>교과목코드</td>
				<td>담당교수</td>
				<td>중간</td>
				<td>기말</td>
				<td>출석</td>
				<td>레포트</td>
				<td>기타</td>
				<td>평균</td>
				<td>총점</td>
				<td>학점</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
			
				try{
					String sql="select st.stuid, st.sname, sb.subname, sb.subcode, sb.proname, sc.midscore, sc.finalscore, sc.attend, sc.report, sc.etc, "
							+"TO_CHAR((sc.midscore+sc.finalscore+sc.attend+sc.report+sc.etc)/5, '999'),  "
							+"TO_CHAR((sc.midscore*0.3) + (sc.finalscore*0.3) + (sc.attend*0.2) + (sc.report*0.1) +(sc.etc*0.1), '999.0'), "
							+"(sc.midscore*0.3) + (sc.finalscore*0.3) + (sc.attend*0.2) + (sc.report*0.1) +(sc.etc*0.1) "
							+"from tbl_student st, tbl_subject sb, tbl_score sc "
							+"where st.stuid=sc.sid and sc.subcode=sb.subcode order by st.sname";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String grade;
						int sum = rs.getInt(13);
						if(sum >= 95) grade= "A+";
						else if(sum >=90) grade= "A";
						else if(sum >=85) grade= "B+";
						else if(sum >=80) grade= "B";
						else if(sum >=75) grade= "C+";
						else if(sum >=70) grade= "C";
						else if(sum >=65) grade= "D+";
						else if(sum >=60) grade= "D";
						else grade="F";
						%>
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=rs.getString(6) %></td>
							<td><%=rs.getString(7) %></td>
							<td><%=rs.getString(8) %></td>
							<td><%=rs.getString(9) %></td>
							<td><%=rs.getString(10) %></td>
							<td><%=rs.getString(11) %></td>
							<td><%=rs.getString(12) %></td>
							<td><%=grade %></td>
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