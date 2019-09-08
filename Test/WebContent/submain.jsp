<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    <%@ page import="dto.Shopping" %>
    <%@ page import="dao.ShoppingShow" %>
    <jsp:useBean id="shoppginDAO" class="dao.ShoppingShow" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="./resources/css/main.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript" src="./resources/js/app.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">상품 정보</h1>
	</div>
</div>

<%
String id = request.getParameter("id");
ShoppingShow dao = ShoppingShow.getInstance();
Shopping shopping = dao.getId(id);

%>

<div class="container">
<div class="row" align="center">
	<div class="col-md-6" style="margin: auto;">
	<div class="imgbox"><img alt="IMG" class="target" data-zoom="2" src="C:\images/<%=shopping.getFilename()%>" style="width: 450px; height: 500px;"></div>
	<p><%= shopping.getId() %></p>
	<h1><%=shopping.getSubject() %></h1>
	<p><%= shopping.getSize() %></p>
	<p><%= shopping.getPrice() %></p>
	<a href="#" class="btn btn-info">상품 주문하기</a>
	<a href="main.jsp" class="btn btn-secondary">상품 목록</a>
	</div>
</div>
</div>

</body>
</html>