<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수정</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<%
		String sessionId = request.getParameter("sessionId");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, (String)session.getAttribute("sessionId"));
		rs = pstmt.executeQuery();
		if(rs.next()){
	%>
	<form  action="./processUpdateMember.jsp" method="post">
            <h1>Welcome</h1>
            <input type="text" name="id" value="<%= rs.getString("id") %>">
            <input type="text" name="password" value="<%= rs.getString("password") %>">
            <input type="text" name="name" value="<%= rs.getString("name") %>">
            <input type="radio" name="gender" value="<%= rs.getString("gender")%>">남 
            <input type="radio" name="gender" value="<%= rs.getString("gender")%>">여
            <input type="text" name="birth"placeholder="생년월일" value="<%= rs.getString("birth")%>">
            <input type="email" name="mail"placeholder="email" value="<%= rs.getString("mail")%>">
            <input type="text" name="phone" placeholder="전화번호" value="<%= rs.getString("phone")%>">
            <input type="text" name="address" placeholder="주소" value="<%= rs.getString("address")%>">
            <input type="submit">
        </form>
        <%
        } %>
</body>
</html>