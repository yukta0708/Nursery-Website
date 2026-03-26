<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.ProductDAO" %>
<%@page import="com.entity.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html> 
<html lang="en"> 

<head> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<meta charset="UTF-8"> 
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge"> 
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1.0"> 
	<title>Admin</title> 
	<link rel="stylesheet"
		href="admin.css"> 
	
</head> 

<body> 
	
	
	
<header> 
<br>
<br>
<li>

                        <c:if test="${not empty userobj}">
                            <a href="form.jsp" class="btn btn-sm btn-success"> ${userobj.name}</a>
                             <a data-toggle="modal" data-target="#exampleModalCenter" class=" text-white btn btn-sm btn-primary">Logout</a>
                            </c:if>
                      
                         <c:if test="${ empty userobj}">
                         <a href="../form.jsp" class=" btn btn-sm btn-success">Login</a>
                            <a href="../sign.jsp" class=" text-center btn btn-sm btn-primary">Register</a>
                            </c:if>
  <br>
                        <br>
                        </li>
                       
	</header> 
	
<br>
<br>
<br>
<br>
<br>
<c:if test="${empty userobj}">
<c:redirect url="../form.jsp" />
</c:if>
<h3 class="text-center">Hello Admin</h3>
<br>
<br>
			<div class="box-container"> 

				<div class="box box1"> 
					<div class="text">
					 
						<h2 class="topic-heading"><a href="add.jsp">...</h2></a>
						<h2 class="topic">All product</h2> 
					</div> 

					<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210184645/Untitled-design-(31).png"
						alt="Views"> 
				</div> 

				<div class="box box2"> 
					<div class="text"> 
						<h2 class="topic-heading"><a href="all.jsp">...</h2></a> 
						<h2 class="topic">add product</h2> 
					</div> 

					<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210185030/14.png"
						alt="likes"> 
				</div> 

				<div class="box box3"> 
					<div class="text"> 
						<h2 class="topic-heading"><a href="order.jsp">...</h2></a> 
						<h2 class="topic">all order</h2> 
					</div> 

					<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210184645/Untitled-design-(32).png"
						alt="comments"> 
				</div> 

				<div class="box box4"> 
					<div class="text"> 
						<h2 class="topic-heading"><a href="contact.jsp">.......</a></h2> 
						<h2 class="topic">Message</h2> 
					</div> 

					<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210185029/13.png" alt="published"> 
				</div> 
			</div> 
			
</div>
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
       <h4>Do You Want Logout</h4>
       <a type="button" class="btn btn-secondary" data-dismiss="modal">Close</a>
        <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
      </div>
      <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>
</div>		

	<script src="admin.js"></script> 
</body> 
</html>
    