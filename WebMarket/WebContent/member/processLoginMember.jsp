<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="../dbconn.jsp" %>
    <%@ page session="true" %>
<%

String id = request.getParameter("id");
String pw = request.getParameter("password");

PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "select * from member where id = ? and password = ? ";
pstmt =  conn.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pw);
rs = pstmt.executeQuery();

while(rs.next()){
	session.setAttribute("sessionId", id);	
}



if(rs != null)
	rs.close();
if(pstmt != null)
	pstmt.close();
if(conn != null)
conn.close();

response.sendRedirect("../welcome.jsp");

%>