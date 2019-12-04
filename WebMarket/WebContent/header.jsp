<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navber-header" >
				<a href="welcome.jsp">home</a>
			</div>
		</div>
		<div>
			<ul class="navbar-nav mr">
			<c:choose>
				<c:when test="${ empty sessionId }">
					<li><a class="nav-link" href='<c:url value="/member/loginMember.jsp"/>'>로그인</a></li>
					<li><a class="nav-link" href='<c:url value="/member/addMember.jsp"/>'>회원가입</a></li>
				</c:when>
				<c:otherwise>
					<li style="padding-top: 7px; color: white;">[<%= sessionId %>]님</li>
					<li class="nav-item"><a href='<c:url value="/member/logoutMember.jsp" />'>로그아웃</a></li>
				</c:otherwise>
			</c:choose>
				<li class="nav-itme"><a class="nav-link" href="./products.jsp">상품목록</a></li>
				<li class="nav-itme"><a class="nav-link" href="./addProduct.jsp">상품등록</a></li>
				<li class="nav-itme"><a class="nav-link" href="./editProduct.jsp?edit=update">상품수정</a></li>
				<li class="nav-itme"><a class="nav-link" href="./editProduct.jsp?edit=delete">상품삭제</a></li>
				<li class="nav-itme"><a class="nav-link" href="./member/resultMember.jsp">회원정보</a></li>
				<li class="nav-itme"><a class="nav-link" href='<c:url value="/BoardListAction.do?pageNum=1" />'>게시판</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>