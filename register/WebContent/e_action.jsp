<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String subname = request.getParameter("subname");
	String score = request.getParameter("score");
	String teacher = request.getParameter("teacher");
	String day = request.getParameter("day");
	String startT = request.getParameter("startT");
	String endT = request.getParameter("endT");
	String subcode = request.getParameter("subcode");

	try{
		String sql = "update course_tbl set subname=?,score=?,teacher=?,day=?,startT=?,endT=? where subcode=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, subname);
		pstmt.setString(2, score);
		pstmt.setString(3, teacher);
		pstmt.setString(4, day);
		pstmt.setString(5, startT);
		pstmt.setString(6, endT);
		pstmt.setString(7, subcode);
		
		pstmt.executeUpdate();
		%>
		<jsp:forward page="list.jsp"></jsp:forward>
		<%
	}catch(Exception e){
		e.printStackTrace();
	}
%>