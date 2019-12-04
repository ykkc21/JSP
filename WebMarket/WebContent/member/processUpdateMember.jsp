<%@page import="mvc.database.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="../dbconn.jsp" %>
    
    <%
    
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = "select * from member where id =?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    rs = pstmt.executeQuery();
    if(rs.next()){
    	sql = "update member set password=?,name=?,gender=?,birth=?,mail=?,phone=?,address=? where id =?";
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, password);
    	pstmt.setString(2, name);
    	pstmt.setString(3, gender);
    	pstmt.setString(4, birth);
    	pstmt.setString(5, mail);
    	pstmt.setString(6, phone);
    	pstmt.setString(7, address);
    	pstmt.setString(8, id);
    	
    	pstmt.executeUpdate();
    	
    }
    
    if(rs!=null)
    	rs.close();
    if(pstmt !=null)
    	pstmt.close();
    if(conn !=null)
    	conn.close();
    %>
    
    <script type="text/javascript">
    	alert("수정됨 씨발련아");
    	location.href='../welcome.jsp';
    </script>
    

   