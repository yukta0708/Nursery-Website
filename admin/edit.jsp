<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.ProductDAO" %>
<%@page import="com.entity.Product" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="all.css">
<header> 
<a href="webapp/form.jsp" class="btn btn-sm btn-danger">Login</a>
 <h3 class="text-center text-success">Welcome To Plantex Website</h3>
		<a href="webapp/sign.jsp" class="btn btn-sm btn-danger">Register</a>
		
	</header> 
	<br>
<body>
<br>
<br>
<br>

 <div class="container">
        <h2>Edit Products</h2>
       <c:if test="${not empty regmsg }">
	<div class="alert alert-success" role="alert">
 ${regmsg}</div>
<c:remove var="regmsg" scope="session"/>
</c:if>
	
	
	<c:if test="${not empty failedmsg }">
	<div class="alert alert-danger" role="alert">
 ${failedmsg}</div>
 </c:if>
        
        
        
        
        <%
        int id=Integer.parseInt(request.getParameter("id"));
        ProductDAO dao=new ProductDAO(DBConnect.getConnection());
        Product p=dao.getProductId(id);
        %>
        
        
        
        <form method="post" action="../edit">
        <input type="hidden" name="id" value="<%=p.getId()%>">
            <label for="productName">Product Name</label>
            <input type="text" id="productName"   name="name" value="<%=p.getName()%>">

            <label for="productPrice">Price</label>
            <input type="number" id="productPrice" name="price" value="<%=p.getPrice()%>">

            

            
             <label for="productCategory">Status</label>
            <select id="Status"  name="status" > 
            <% if("Active".equals(p.getStatus())) {
            %>
            <option value="Active">Active</option>
            <option value="InActive">InActive</option>
            
            <% 
            } else {
            %>
           
          		<option value="InActive">InActive</option>
          		<option value="Active">Active</option>
          		 <%
            }
          		 %>            
 				
 				</select>

   
            <button type="submit">Update</button>
        </form>
    
    

</div>
</body>
</html>