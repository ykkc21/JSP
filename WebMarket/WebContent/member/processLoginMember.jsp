<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="../dbconn.jsp" %>
<%

String id = request.getParameter("id");
String pw = request.getParameter("password");

PreparedStatement pstmt = null;
ResultSet rs = null;


String sql = "select * from member where id = ? and password=?";
pstmt =  conn.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pw);
rs = pstmt.executeQuery();
rs.next();

if(rs.getString("cnt").equals("1")){
	session.setAttribute("id", id);
	session.setAttribute("password", pw);
	
}

if(rs != null)
	rs.close();
if(pstmt != null)
	pstmt.close();
if(conn != null)
conn.close();

response.sendRedirect("../welcome.jsp");

%>