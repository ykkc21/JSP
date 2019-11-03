<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<%
   request.setCharacterEncoding("UTF-8");

   String realFolder = "C:\\Users\\USER\\eclipse-workspace\\WebMarket\\WebContent\\images";
   int maxSize = 5 * 1024 * 1024;
   String encType = "utf-8";

   MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
         new DefaultFileRenamePolicy());

   String productId = multi.getParameter("productId");
   String name = multi.getParameter("name");
   String unitPrice = multi.getParameter("unitPrice");
   String descripstion = multi.getParameter("description");
   String manufacturer = multi.getParameter("manufacturer");
   String category = multi.getParameter("category");
   String unitsInStock = multi.getParameter("unitsInStock");
   String condition = multi.getParameter("condition");
   String image = multi.getFilesystemName("image");

   Integer price;

   if (unitPrice.isEmpty())
      price = 0;
   else
      price = Integer.valueOf(unitPrice);

   long stock;

   if (unitsInStock.isEmpty())
      stock = 0;
   else
      stock = Long.valueOf(unitsInStock);

   if (image.isEmpty())
      image = null;
   

   ProductRepository dao = ProductRepository.getInstance();

   Product newProduct = new Product();
   newProduct.setProductId(productId);
   newProduct.setPname(name);
   newProduct.setUnitPrice(price);
   newProduct.setDescription(descripstion);
   newProduct.setManufacturer(manufacturer);
   newProduct.setCategory(category);
   newProduct.setUnitsInStock(stock);
   newProduct.setCondition(condition);
   newProduct.setFilename(image);
   
	PreparedStatement pstmt = null;
   
   String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1, productId);
   pstmt.setString(2, name);
   pstmt.setInt(3, price);
   pstmt.setString(4, descripstion);
   pstmt.setString(5, category);
   pstmt.setString(6, manufacturer);
   pstmt.setLong(7, stock);
   pstmt.setString(8, condition);
   pstmt.setString(9, image);
   pstmt.executeUpdate();
   
   
   if(pstmt != null)
	   pstmt.close();
   if(conn != null)
	   conn.close();

   dao.addProduct(newProduct);
   
   

   response.sendRedirect("products.jsp");
%>