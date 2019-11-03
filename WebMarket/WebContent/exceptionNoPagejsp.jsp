<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
 <div class="jumbotron">
 	<div class="container">
 		<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
 	</div>
 </div>
 <div class="container">
 	<p><%=request.getRequestURI() %></p>
 	<p><a href="products.jsp" class="btn btn-secondar"> &raquo;</a></p>
 </div>
</body>
</html>