<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.OrderDAO" %>
<%@page import="com.entity.Order" %>
<%@page import="com.entity.User" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">

<meta charset="UTF-8">
<title>Order</title>
</head>
<body>
<header> 

		
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
<h3 class="text-center">Your Order</h3>
<table class="table table-striped ">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col"> name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Phone no</th>
      <th scope="col">Product name</th>
       <th scope="col">Price</th>
        <th scope="col">Payment method</th>
        <th scope="col">Cancel Order</th>
        
    </tr>
  </thead>
  <tbody>
 
  <%
  User u=(User)session.getAttribute("userobj");
  OrderDAO dao=new OrderDAO(DBConnect.getConnection());
  List<Order> plist=dao.getProduct(u.getEmail());
  for(Order o:plist) 
  {%>
	  
	  <tr>
      <th scope="row"><%=o.getOrder_id() %></th>
      <td><%=o.getName() %></td>
       <td><%=o.getEmail() %></td>
      <td><%=o.getAddress() %></td>
      <td><%=o.getPhoneno() %></td>
       <td><%=o.getP_name() %></td>
       <td><%=o.getPrice() %></td>
      <td><%=o.getPayment() %></td>
      <td>
     
       <a data-toggle="modal" data-target="#exampleModalCenter" class=" text-white btn btn-sm btn-danger">Cancel</a>
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="text-center">
       <h4>Cancel Your Order</h4>
       <a type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</a>
        <a href="cancel?id=<%=o.getId()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i> Cancel</a>
      </div>
      <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>
</div>		
      </td>
      
      
    </tr> 
  <%}
  
  %>
  
  
    
  </tbody>
</table>
</body>
</html>