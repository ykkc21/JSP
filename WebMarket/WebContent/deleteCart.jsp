<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="dao.ProductRepository" %>
    <%@ page import="dto.Product" %>

<%

String id = request.getParameter("cartId");
if(id == null || id.trim().equals("")){
	response.sendRedirect("cart.jsp");
	return;
}

session.invalidate();

response.sendRedirect("cart.jsp");

%>