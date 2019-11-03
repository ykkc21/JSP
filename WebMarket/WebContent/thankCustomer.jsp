<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 완료</title>
</head>
<body>

	<%
		String shipping_cartId = "";
		String shipping_name = "";
		String shipping_ShippingDate = "";
		String shipping_country = "";
		String shipping_zipCode = "";
		String shipping_addressName = "";
		
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null){
			for(int i=0; i<cookies.length; i++){
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if(n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
				if(n.equals("Shipping_shippingDate"))
					shipping_ShippingDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			}
		}
	
	%>
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문해주셔서 감사합니다.</h2>
		<p> 주문은  <% out.println(shipping_ShippingDate); %>에 배송될 예정입니다!
		<p> 주문번호 : <% out.println(shipping_cartId); %>
	</div>
	<div class="container">
		<p> <a href="./products.jsp" class="btn btn-secondary">&laquo; 상품목록</a>
	</div>
</body>
</html>



<%

	session.invalidate();

	for(int i =0; i<cookies.length; i++){
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Customer_Id"))
			thisCookie.setMaxAge(0);
		if(n.equals("Customer_name"))
			thisCookie.setMaxAge(0);
		if(n.equals("Customer_phoneNumber"))
			thisCookie.setMaxAge(0);
		if(n.equals("Customer_country"))
			thisCookie.setMaxAge(0);
		if(n.equals("Customer_zipCode"))
			thisCookie.setMaxAge(0);
		if(n.equals("Customer_addressName"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if(n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
		
		response.addCookie(thisCookie);
	}








%>



















