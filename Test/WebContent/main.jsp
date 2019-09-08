<%@ page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
<%@ page  import="java.util.ArrayList"%>
<%@ page  import="dto.Shopping"%>
<%@ page  import="dao.ShoppingShow"%>
<jsp:useBean id="ShoppingDAO" class="dao.ShoppingShow" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="./resources/css/main.css"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="jumbotron">
	<div class="container">
		<div class="row">
			<h1 class=" display-2 bg-ingo">Style Shopping</h1>
		</div>
	</div>
	<a class="btn btn-info" href="Addform.jsp" style="float: right">상품추가하기</a>
</div>
<%   
	ShoppingShow dao = ShoppingShow.getInstance();
	ArrayList<Shopping> lisShoppings = dao.getAllShoppings();

%>
<div class="container">
	<div class="row" align="center">
		<% 
		
		for(int i=0;i<lisShoppings.size();i++){
			Shopping shopping = lisShoppings.get(i);
		%>
		<div class="col-md-4 imgbox">
			<p class="text-danger"><%= shopping.getId() %></p>
			<img alt="img" src="C:\images/<%= shopping.getFilename()%>">
			<h1><%= shopping.getSubject() %></h1>
			<p><%= shopping.getSize() %></p>
			<p><%= shopping.getPrice() %>원</p>
			<a href="./submain.jsp?id=<%=shopping.getId() %>"class="btn btn-secondary" role="button">상세 정보&raquo;</a>
		</div>
		
		<%
		}
		%>
	</div>
</div>
</body>
</html>