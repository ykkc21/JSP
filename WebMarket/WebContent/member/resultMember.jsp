<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import=java.sql.*" %>
    <%@ include file="/dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<jsp:include page="../header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
			<a href="./addProduct.jsp">상품 등록</a>
		</div>
	</div>

	<div class="container">
		<div class="row" align="center">
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from member";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
			%>
			<div class="col-md-4">
				<img alt="img" src="./images/<%= rs.getString("p_fileName")%>"style="width: 100%">
				<h3><%= rs.getString("p_name") %></h3>
				<p><%= rs.getString("p_description") %>
				<p><%= rs.getString("p_UnitPrice") %>원
				<p><a href="./product.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
				
				
			</div>
			<%
				}
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
				conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>