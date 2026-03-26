<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ page isELIgnored="false"%>
     <link rel="stylesheet" href="admin/header.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign up </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="sign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
  </head>
  <body>
   <header>
  <br> 
 	
 <h3 class="text-center text-dark">Welcome To Plantex Website</h3>
		<br>
	</header> 
<div class="container">
  <div class="welcome">
    <div class="pinkbox">
      <div class="signup nodisplay">
        <h1>register</h1>
        
      </div>
      <div class="signup">
        <h1>sign up</h1>
        
       
      
					<c:if test="${not empty failedmsg }">
				<h5 class="text-center text-danger">${failedmsg}</h5>
				<c:remove var="failedmsg" scope="session" />
				</c:if>
				
				
				
				<c:if test="${not empty regmsg }">
				<h5 class="text-center text-success">${regmsg}</h5>
				<c:remove var="regmsg" scope="session" />
				</c:if>
				
			
        
       
        
        <form method="post" action="register">
        <form class="more-padding" autocomplete="off">
       
          <input type="text" placeholder="username" name="id">
          <input type="text" placeholder="name" name="name">
          <input type="email" placeholder="email" name="email">
          <input type="text" placeholder="phoneno" name="phoneno">
          <input type="text" placeholder="password" name="password">
          
          <button class="button submit">Sign up</button>
          </form>
        </form>
      </div>
    </div>
    <div class="rightbox">
      <h2 class="title"><span>NURSERY</span>OF<br>PLANTS</h2>
      <p class="desc">pick your perfect <span>plants</span></p>
      <img class="flower smaller" src="https://image.ibb.co/d5X6pn/1357d638624297b.jpg" alt="1357d638624297b" border="0">
      <p class="account">have an account?</p>
      <a href="form.jsp">
      <button class="button" id="signin">login</button></a>
    </div>
    
  </div>
 </div>

<script src="form.js"></script>
</body>
</html>
    