<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.CartDAO" %>
<%@page import="com.entity.Product" %>
<%@page import="com.entity.User" %>
<%@page import="com.entity.Cart" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="admin/header.css">

<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
<header> 
<br>

	</header> 
		
	<br>
	<br>
	<br>
	<br>
	
	
	
	
	
	
	<c:if test="${empty userobj }">
	<c:redirect url="form.jsp"></c:redirect>
	</c:if>
	
	
	

<c:if test="${not empty regmsg }">
	<div class="alert alert-success" role="alert">
 ${regmsg}</div>
<c:remove var="regmsg" scope="session"/>
</c:if>
	
	
	<c:if test="${not empty failedmsg }">
	<div class="alert alert-danger" role="alert">
 ${failedmsg}</div>
 </c:if>
	
	<div class="container">
<div class="row p-2">
<div class="col-md-6">

<div class="card bg-white">
<div class="card-body">
<h3 class="text-center text-success">Your Selected Items:</h3>
<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Product Name</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
  
  
  <%
  User u=(User)session.getAttribute("userobj");
  
  
  CartDAO dao=new CartDAO(DBConnect.getConnection());
  List<Cart> cart=dao.getProductByUser(u.getId());
  Double totalprice=0.00;
  for(Cart c:cart) {
  totalprice=c.getTotal_price();
  
  %>
	  
	   <tr>
      <th scope="row"><%=c.getProductname() %></th>
      <td><%=c.getPrice() %></td>
      <td >
      <a href="remove?pid=<%=c.getPid()%>" class="btn btn-sm btn-danger">Remove</a>
      
      </td>
      
    </tr>
  <%}
  
  %>
  
  
  <tr>
  <td>Total Price</td>
  <td></td>
  <td><%=totalprice %></td>
  </tr>
  
  
   
   
  </tbody>
</table>
</div>
</div>
</div>
<div class="col-md-6">
<div class="card">
<div class="card-body">
<h3 class="text-center text-success">Your Details for Order</h3>
<form action="order" method="post">
<input type="hidden" value="${userobj.id }" name="id">
<div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" name="name" class="form-control" id="inputEmail4" value="${userobj.name}" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Email</label>
      <input type="email" name="email" class="form-control" id="inputPassword4" value="${userobj.email }" required>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Mobile NO</label>
      <input type="number" name="phoneno" class="form-control" id="inputEmail4" value="${userobj.phoneno }" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" name="address" class="form-control" id="inputPassword4" required >
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Landmark</label>
      <input type="text" name="landmark" class="form-control" id="inputEmail4" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">City</label>
      <input type="text" name="city" class="form-control" id="inputPassword4" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">State</label>
      <input type="text" name="state" class="form-control" id="inputEmail4" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Pin code</label>
      <input type="number" name="pincode" class="form-control" id="inputPassword4" required >
    </div>
  </div>
  <div class="form-group">
  <label>Payment Method</label>
  <select class="form-control" name="payment" required>
  <option value="no">--select--</option>
   <option value="online payment">Online Payment</option>
    <option value="cash on delivery">Cash On Delivery</option>
  </select>
  </div>
  <div class="text-center">
 <button class="btn btn-warning" value="order">Order Now</button>
 
  </div>
  
  
 
  
</form>
</div>
</div>
</div>
</div>
</body>
</html>