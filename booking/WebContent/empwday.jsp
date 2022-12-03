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
<title>부서별 근무일수 집계</title>
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
		<h1>부서별근무일수집계</h1>
		<table border="1">
			<tr>
				<td>사원번호</td>
				<td>이름</td>
				<td>부서명</td>
				<td>근무일수</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
			
				try{
					Connection con = Util.getConnection();
					String sql = "select e.empno, e.empname, e.deptcode, count(r.resvno) "
							+"from tbl_emp e, tbl_resv r " 
							+"where e.empno=r.empno group by e.empno, e.empname, e.deptcode order by deptcode";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String deptcode=rs.getString(3);
						//if(deptcode.equals("10")) deptcode="영업팀";
						//else if(deptcode.equals("20")) deptcode="총무팀";
						//else if(deptcode.equals("30")) deptcode="구매팀";
						String deptcodeS = "";
						switch(deptcode){
						case "10":
							deptcodeS = "영업팀";
							break;
						case "20":
							deptcodeS = "총무팀";
							break;
						default:
							deptcodeS = "구매팀";
							break;
						}
						%>
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=deptcodeS %></td>
							<td><%=rs.getString(4) %></td>
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