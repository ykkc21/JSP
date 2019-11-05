<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="../dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<%
	
%>
	<form  action="processAddMember.jsp" method="post">
            <h1>Welcome</h1>
            <input type="text" name="name" value="<%=  %>">
            <input type="radio" name="gender" value="man">남 
            <input type="radio" name="gender" value="women">여
            <input type="text" name="birth"placeholder="생년월일">
            <input type="email" name="mail"placeholder="email">
            <input type="text" name="phone" placeholder="전화번호">
            <input type="text" name="address" placeholder="주소">
            <input type="submit">
        </form>
</body>
</html>