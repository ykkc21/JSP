<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
	<%@ include file="../dbconn.jsp"%>
    <%
    	session.invalidate();
    	response.sendRedirect("../welcome.jsp");
    %>
