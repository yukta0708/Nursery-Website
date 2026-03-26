<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="css/style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #fof1f2">
<header class="header" id="header">
            <nav class="nav container">
                <a href="#" class="nav__logo">
                    <i class="ri-leaf-line nav__logo-icon"></i>Plantex
                </a>
                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            <a href="index.jsp" class="nav__link active-link">Home</a>
                        </li>
                        
                        <li class="nav__item">
                            <a href="nav.jsp" class="nav__link">Products</a>
                        </li>
                        <li class="nav__item">
                            <a href="profile.jsp" class="nav__link">Profile</a>
                        </li>
                        <li class="nav__item">
                           <a href="cart.jsp" class="nav__link">Cart</a>
                      
                        </li>
                         <li class="nav__item">
                        
                         <a href="form.jsp" class="btn btn-sm btn-success">Login</a>
                            <a href="sign.jsp" class="btn btn-sm btn-primary">Register</a>
                           
                        </li>
                        
                      
                    </ul>
  
                    <div class="nav__close" id="nav-close">
                        <i class="ri-close-line"></i>
                    </div>
                </div>

                <div class="nav__btns">
                    <!-- Theme change button -->
                    <i class="ri-moon-line change-theme" id="theme-button"></i>

                    <div class="nav__toggle" id="nav-toggle">
                        <i class="ri-menu-line"></i>
                    </div>
                </div>
            </nav>
        </header>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
  <div  class="container text-center mt-3">
<i class="fa fa-check-circle" style="font-size:50px;color:green"></i>
  <h1>Thank You</h1>
  <h2>Your Order Successfully.</h2>
  <h5>With in 7 Days Product Will be Delivered In your Address</h5>
  <a href="index.jsp" class="btn btn-primary mt-3">Home</a>
  <a href="our.jsp" class="btn btn-danger mt-3">View Order</a>

</div>
</body>
</html>