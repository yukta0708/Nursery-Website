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
<c:if test="${empty userobj}">
<c:redirect url="../form.jsp" />
</c:if>
	</header> 
	<br>
<body>
<br>
<br>
<br>

 <div class="container">
        <h2>Add Product</h2>
        
        <c:if test="${not empty regmsg }">
	<div class="alert alert-success" role="alert">
 ${regmsg}</div>
<c:remove var="regmsg" scope="session"/>
</c:if>
	
	
	<c:if test="${not empty failedmsg }">
	<div class="alert alert-danger" role="alert">
 ${failedmsg}</div>
 </c:if>
        
        <form enctype="multipart/form-data" method="post" action="../add_product">
            <label for="productName">Product Name</label>
            <input type="text" id="productName"  required name="name">

            <label for="productPrice">Price</label>
            <input type="number" id="productPrice"  required name="price">

            <label for="productCategory">Category</label>
            <select id="productCategory"  name="category">
                <option value="Plant">Plant</option>
                <option value="pots">pots</option>
                <option value="flower">flower</option>
                <option value="seeds">seeds</option>
                <option value="Accessories">Accessories</option>
                <!-- Add more categories as needed -->
            </select>

            <label for="productDescription">Description</label>
            <input type="text" id="productDescription"  name="description">
             <label for="productCategory">Status</label>
            <select id="Status"  name="status">
                <option value="Active">Active</option>
 				<option value="InActive">InActive</option>
 				</select>

            <label for="productImage">Product Image</label>
            <input type="file" id="productImage"  accept="image/*" required name="image">
           
            <button type="submit">Add Product</button>
        </form>
    
    

</div>
</body>
</html>