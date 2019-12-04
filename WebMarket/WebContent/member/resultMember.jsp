<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
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
			<h1 class="display-3">회원조회</h1>
		</div>
	</div>

	<div class="container">
	<%@ include file="../dbconn.jsp"%>
		<div class="row" align="center">
			<%
				String id = request.getParameter("id");
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from member";
				pstmt = conn.prepareStatement(sql);
				/* pstmt.setString(1, id); */
				rs = pstmt.executeQuery();
				if(rs.next()){
			%>
			<div class="col-md-4">
			<p>아이디 : <%= rs.getString("id") %></p>
				<p>이름 : <%= rs.getString("name") %></p>
				<p>성별 : <%= rs.getString("gender") %>
				<p>생년월일 : <%= rs.getString("birth") %>
				<p>전화번호 : <%= rs.getString("phone") %>
				<p>주소 : <%= rs.getString("address") %>
				<p>가입날짜 : <%= rs.getString("regist_day") %><br>
				<a href="deleteMember.jsp?id=<%= rs.getString("id")%>">삭제할꺼양 </a>
				<a href="updateMember.jsp?id=<%= rs.getString("id")%>">수정할꺼양 </a>
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