<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String subcode = request.getParameter("subcode");
	String subname = request.getParameter("subname");
	String score = request.getParameter("score");
	String teacher = request.getParameter("teacher");
	String day = request.getParameter("day");
	String startT = request.getParameter("startT");
	String endT = request.getParameter("endT");

	try{
		String sql="insert into course_tbl values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,subcode);
		pstmt.setString(2,subname);
		pstmt.setString(3,score);
		pstmt.setString(4,teacher);
		pstmt.setString(5,day);
		pstmt.setString(6,startT);
		pstmt.setString(7,endT);
		
		pstmt.executeUpdate();
		%>
		<jsp:forward page="addsub.jsp"></jsp:forward>
		<%
	}catch(Exception e){
		e.printStackTrace();
	}
%>