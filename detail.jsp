<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.ProductDAO" %>
<%@page import="com.entity.Product" %>
<%@page import="java.util.List" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Product Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="detail.css">
    <link rel="stylesheet" href="admin/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
  </head>
  <body>
   <br>
   <br>
   <br>
	<% 
	int id=Integer.parseInt(request.getParameter("id"));
ProductDAO dao = new ProductDAO(DBConnect.getConnection());
Product p=dao.getProductId(id);
%>
<div class="card-wrapper">
  <div class="card">
    <div class="product-imgs">
      <div class="img-display">
        <div class="img-showcase">
         <img alt="" src="product/<%=p.getPhoto()%>" style="width: 400px; height: 400px;">
        </div>
      </div>
      
      </div>
    </div>
    <div class="product-content">
      <h2 class="product-title"><%=p.getName()%></h2>
      <div class="product-price">
        <p class="new-price">Price: <span><%=p.getPrice()%></span></p>
      </div>
      <div class="product-detail">
        <h2>About this item:</h2>
        <p>Description: <%=p.getDescription()%></p>
      </div>
      <div class="purchase-info">
        <input type="number" min="0" value="1">
        <button type="button" class="btn">Add to Cart <i class="fas fa-shopping-cart"></i></button>
      </div>
    </div>
  </div>
</div>
<% 
%>
	
    
    <script src="detail.js"></script>
  </body>
</html>