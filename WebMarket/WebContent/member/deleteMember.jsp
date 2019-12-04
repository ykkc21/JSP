<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>

<%

request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");

PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "select * from member";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

if(rs.next()){
	sql = "delete from member where id =?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.executeUpdate();
	session.invalidate();
}else{
	out.println("일치하지 않아요");
	
	if(pstmt != null)
		pstmt.close();
		if(conn != null)
			conn.close();
}

%>

<script type="text/javascript">
alert("삭제됨");
location.href='../welcome.jsp';
</script>