<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교과목 수정</title>
<script type="text/javascript" src="check.js"></script>
<style>
	form{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	select{
		width: 100%;
	}
	td{
		text-align: center;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>교과목 수정</h2>
		<form name="ef" method="post" action="e_action.jsp">
			<table border="1">
			<%
				request.setCharacterEncoding("UTF-8");
			
				String subcode = request.getParameter("subcode");
	
				try{
					String sql ="select * from course_tbl where subcode=?";
					PreparedStatement pstmt = con.prepareStatement(sql);
					pstmt.setString(1, subcode);
					ResultSet rs = pstmt.executeQuery();
					rs.next();
					String teacher=rs.getString(4);
					String day=rs.getString(5);
					String startT =rs.getString(6);
					while(startT.length()<4){
							startT = "0" + startT;
						}
						%>
							<tr>
								<td>과목 코드</td>
								<td><input name="subcode" value="<%=subcode %>" readonly></td>
							</tr>
							<tr>
								<td>과목명</td>
								<td><input name="subname" value="<%=rs.getString(2) %>"></td>
							</tr>
							<tr>
								<td>학점</td>
								<td><input name="score" value="<%=rs.getString(3) %>"></td>
							</tr>
							<tr>
								<td>담당강사</td>
								<td>
									<select name="teacher">
										<option value="">담당 강사</option>
										<option value="1" <%if(teacher.equals("1")) out.println("selected");%>>김교수</option>
										<option value="2" <%if(teacher.equals("2")) out.println("selected"); %>>이교수</option>	
										<option value="3" <%if(teacher.equals("3")) out.println("selected"); %>>박교수</option>								
										<option value="4" <%if(teacher.equals("4")) out.println("selected"); %>>우교수</option>								
										<option value="5" <%if(teacher.equals("5")) out.println("selected"); %>>최교수</option>								
										<option value="6" <%if(teacher.equals("6")) out.println("selected"); %>>임교수</option>								
									</select>
								</td>
							</tr>
							<tr>
								<td>요일</td>
								<td>
								<input name="day"  type="radio" value="1" <%if(day.equals("1")) out.println("checked"); %>>월
								<input name="day"  type="radio" value="1" <%if(day.equals("2")) out.println("checked"); %>>화
								<input name="day"  type="radio" value="1" <%if(day.equals("3")) out.println("checked"); %>>수
								<input name="day"  type="radio" value="1" <%if(day.equals("4")) out.println("checked"); %>>목
								<input name="day"  type="radio" value="1" <%if(day.equals("5")) out.println("checked"); %>>금
								</td>
							</tr>
							<tr>
								<td>시작 시간</td>
								<td><input name="startT" value=<%=startT %>></td>
							</tr>
							<tr>
								<td>종료 시간</td>
								<td><input name="endT" value=<%=rs.getString(7) %>></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="수정" onclick="edit()">
									<input type="reset" value="취소" onclick="res()">
								</td>
							</tr>
						<%
				}catch(Exception e){
					e.printStackTrace();
				}
			%>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>