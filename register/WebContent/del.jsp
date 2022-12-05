<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String subcode=request.getParameter("subcode");
 	try{
 		String sql="delete from course_tbl where subcode=?";
 		PreparedStatement pstmt = con.prepareStatement(sql);
 		pstmt.setString(1, subcode);
 		
 		pstmt.executeUpdate();
 		%>
 		<jsp:forward page="list.jsp"></jsp:forward>
 		<% 
 	}catch(Exception e){
 		e.printStackTrace();
 	}
 %>
