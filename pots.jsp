<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.ProductDAO" %>
<%@page import="com.entity.Product" %>
<%@page import="com.entity.User" %>
<%@page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Category </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/brands.min.css" integrity="sha512-8RxmFOVaKQe/xtg6lbscU9DU0IRhURWEuiI0tXevv+lXbAHfkpamD4VKFQRto9WgfOJDwOZ74c/s9Yesv3VvIQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link rel = "stylesheet" href = "product.css">
</head>
<body>
    <div class = "wrapper">
        <div class = "category-filter">
            <div class = "container">
                <div class = "title">
                    <h1>More Product</h1>
                </div>

                <div class = "filter-btns">
                    <a type = "button"  href="all.jsp" class = "filter-btn" id = "all">all</a>
                    <a type = "button" href="plant.jsp" class = "filter-btn" id = "new">PLant</a>
                    <a type = "button" href="pots.jsp" class = "filter-btn" id = "best-sellers">Pots</a>
                     <a type = "button" href="seed.jsp" class = "filter-btn" id = "best-sellers">Seeds</a>
                    <a type = "button"  href="acc.jsp" class = "filter-btn" id = "acc">accessories</a>
                     <a type = "button" href="flower.jsp" class ="filter-btn" id = "specials">Flower</a>
                </div>
<%
 User u=(User)session.getAttribute("userobj");
 %>

              <div class="container">
		
		<div class="row">

		<%
  
  ProductDAO dao=new ProductDAO(DBConnect.getConnection());
  List<Product> list=dao.getAllpots();
  for(Product p:list) {
%>
						<div class="col-md-3">
						<div class="card">
							<div class="card-body text-center">
								<img alt="" src="product/<%=p.getPhoto()%>" style="width: 150px; height: 200px;" class="img-thumblin">
								<p><%=p.getName()%></p>
								<p>
									Categories:
									<%=p.getCategory()%></p>
								<div class="row">
								<% if(u == null) 
								{
								%>
								
								<a href="form.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a> 
								<%} else{
								%>
								<a href="cart?pid=<%=p.getId()%>&&id=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
								
								<%
								}
								
								%>								
							
									
										<a href="detail.jsp?id=<%=p.getId()%>" class="btn btn-success btn-sm ml-1">View</a> 
										<a href="" class="btn btn-danger btn-sm ml-1"><%=p.getPrice()%></a>
								</div>
							</div>
						</div>
							</div>

						<%
 						 }

						%>		
	
		</div>	
		
   
                  
          </div>
    
                    

                    
                </div>
            </div>
        
    </div>
    <script src = "product.js"></script>
</body>
</html>
