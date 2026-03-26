
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-RG+C6nlASuAVGBvaXW/P6w1gepgV+1efjN8OApKg9dBNd+pW5/NQwVRblMq6YfFZ" crossorigin="anonymous">

<link rel="stylesheet" href="profile.css">


<title>Insert title here</title>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">Plantex</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="nav.jsp">Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cart.jsp">Cart</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
     <button class="btn btn-outline-primary my-2 my-sm-0 ml-1" type="submit">Login</button>
      <button class="btn btn-outline-success my-2 my-sm-0 ml-1" type="submit">Register</button>
    </form>
  </div>
</nav>

<style>
    /* Centering container */
    .center {
      text-align: center; /* Center the content horizontally */
      margin-top: 50px; /* Adjust as needed */
    }
  </style>
<h1 class="text-center">Profile</h1>
<br>
<br>
<br>
<div class="card elevation-2dp">
		<div class="center">
		<i class='fas fa-id-card-alt' style='font-size:48px;color:green'></i>
		Edit Profile	
	</div>
	<div class="supporting-text text-center">
	Profile, Login and Security.
		</div>
		 <a href="edit.jsp" class="btn btn-sm btn-warning">Edit</a>
	
</div>
<div class="card elevation-3dp">
	<div class="center">
	<i class='fas fa-box-open' style='font-size:48px;color:blue'></i>
		My Order
	</div>
	<div class="supporting-text text-center">
		Track Your Order
		</div>
		 <a href="our.jsp" class="btn btn-sm btn-warning">Track</a>
</div>

<div class="card elevation-6dp">
<div class="center">
	<i class="fa fa-plus-square" style="font-size:48px;color:purple"></i>
	
		Help Center
	</div>
	<div class="supporting-text text-center">
	24*7 Service Available
</div>
	 <a href="" class="btn btn-sm btn-warning">Contact</a>
		
</div>


   </body>
</html>