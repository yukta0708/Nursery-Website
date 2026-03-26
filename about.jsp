<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/brands.min.css" integrity="sha512-8RxmFOVaKQe/xtg6lbscU9DU0IRhURWEuiI0tXevv+lXbAHfkpamD4VKFQRto9WgfOJDwOZ74c/s9Yesv3VvIQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<link rel="stylesheet" href="about.css">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light py-3">
  <div class="container"><a href="#" class="navbar-brand d-flex align-items-center"> <i class="fa fa-snowflake-o fa-lg text-primary mr-2"></i><strong>Plantex</strong></a>
    <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>
    <div id="navbarSupportedContent" class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active"><a href="index.jsp" class="nav-link font-italic"> Home </a></li>
        <li class="nav-item active"><a href="all.jsp" class="nav-link font-italic"> Product </a></li>
        <li class="nav-item active"><a href="cart.jsp" class="nav-link font-italic"> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="bg-white">
  <div class="container py-5">
    <div class="row h-100 align-items-center py-5">
      <div class="col-lg-6">
        <h1 class="display-4">About us page</h1>
       <p>Welcome to our website! We are passionate about providing high-quality plants and gardening supplies to our customers. Our mission is to inspire and empower individuals to cultivate their green spaces and reconnect with nature.</p>
        <p>At our nursery, we curate a diverse selection of plants, from vibrant flowers to exotic succulents, catering to both novice gardeners and seasoned plant enthusiasts. We believe that everyone deserves access to greenery and aim to make gardening accessible to all.</p>
        <p>Thank you for choosing us as your trusted source for all your gardening needs. We're excited to embark on this green journey with you!</p>
        </p>
      </div>
      <div class="col-lg-6 d-none d-lg-block text-center"><img src="product/about1.jpg" alt="" class="img-fluid"></div>
    </div>
  </div>
</div>

<div class="bg-white py-5">
  <div class="container py-5">
    <div class="row align-items-center mb-5">
      <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
        <h2 class="font-weight-light">Contact Us</h2>
        <p class="font-italic text-muted mb-4">
       Our dedicated team is here to help you with any inquiries you may have about our products, services, or gardening tips. Feel free to contact us via phone, email.</p>
        <p>Thank you for choosing us as your gardening partner. We look forward to hearing from you!</p>
     
       
       
      </div>
      <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img src="product/about2.jpg" alt="" class="img-fluid mb-4 mb-lg-0"></div>
    </div>
    <div class="row align-items-center">
      <div class="col-lg-5 px-5 mx-auto"><img src="product/about3.jpg"  class="img-fluid mb-4 mb-lg-0"></div>
      <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
        <h2 class="font-weight-light">Contact Details: </h2>
        <p class="font-italic text-muted mb-4">Email : abc@gmail.com<br>Mobile NO: 1234567890<br> Address: Gangapur Road Nashik-422009
     
      </div>
    </div>
  </div>
</div>

<footer class="bg-white pb-5">
  <div class="container text-center">
    <p class="font-italic text-muted mb-0">&copy; Plantex </p>
  </div>
</footer>

</body>
</html>
