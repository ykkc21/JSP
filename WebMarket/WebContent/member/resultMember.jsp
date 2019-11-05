<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
    <%@ include file="../dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 리스트</title>
</head>
<body>
		<jsp:include page="../header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원조희</h1>
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
				<p>이름 : <%= rs.getString("name") %></p>
				<p>성별 : <%= rs.getString("gender") %>
				<p>생년월일 : <%= rs.getString("birth") %>
				<p>전화번호 : <%= rs.getString("phone") %>
				<p>주소 : <%= rs.getString("address") %>
				<p>가입날짜 : <%= rs.getString("regist_day") %>
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