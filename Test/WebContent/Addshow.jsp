<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
    <%@ page import="com.oreilly.servlet.*" %>
    <%@ page import="com.oreilly.servlet.multipart.*" %>
    <%@ page import="java.util.*" %>
<%@ page import="dto.Shopping" %>
<%@ page import="dao.ShoppingShow" %>


<%
	request.setCharacterEncoding("UTF-8");

	String filename ="";
	String realFolder = "C:\\images"; //�� ���ø����̼��� ���� ��� 
	int maxSize = 5 * 1024 * 1024; // �ִ� ���ε�� ������ ũ�� 5MB
	String encType = "utf-8"; // ���ڵ� ����
	
	
	MultipartRequest multi = new MultipartRequest(request,realFolder,
	maxSize,encType, new DefaultFileRenamePolicy());


	String id = multi.getParameter("id");
	String img = multi.getParameter("Images");
	String name = multi.getParameter("name");
	String size = multi.getParameter("size");
	String money = multi.getParameter("Price");

	
	 Integer price;
	
	if(money.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(money);
	
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	
	ShoppingShow dao = ShoppingShow.getInstance();

	Shopping newShopping = new Shopping();
	newShopping.setId(id);
	newShopping.setFilename(fileName);
	newShopping.setSubject(name);
	newShopping.setSize(size);
	newShopping.setPrice(price);
	
	dao.addShopping(newShopping);
	
	response.sendRedirect("main.jsp");
%>