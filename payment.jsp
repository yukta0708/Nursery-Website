<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="admin/header.css">
<link rel="stylesheet" href="css/style.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0 ">
<title>Payment Method</title>
<style>
/* Global Styles */
body {
  font-family: Arial, sans-serif;
  background-color: #fff; /* White background */
  color: #333; /* Dark text color */
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.container {
  max-width: 600px;
  margin: auto;
  padding: 20px;
  background-color: #fff; /* White background */
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

/* Styles for navbar */
.navbar {
  background-color: white; /* Green background */
  overflow: hidden;
  width: 100%;
}

.navbar a {
  float: left;
  display: block;
  color: #fff; /* White text color */
  text-align: center;
  padding: 10px 12px;
  text-decoration: none;
}

.navbar a:hover {
  background-color: #45a049;
}

/* Styles for footer */
.footer {
  background-color: #4CAF50; /* Green background */
  color: #fff; /* White text color */
  text-align: center;
  padding: 10px 0;
}

/* Styles for tabbed interface */
.tab {
  overflow: hidden;
  border-radius: 10px 10px 0 0;
}

.tab button {
  background-color: #4CAF50; /* Green background */
  color: #fff; /* White text color */
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 20px;
  flex: 1;
  transition: 0.3s;
  border-radius: 10px 10px 0 0;
}

.tab button:hover {
  background-color: #45a049;
}

.tab button.active {
  background-color: #45a049;
}

/* Styles for tab content */
.tabcontent {
  display: none;
  padding: 20px;
  border: 1px solid #ccc;
  border-top: none;
  border-radius: 0 0 10px 10px;
}

/* Styles for form inputs */
input[type="text"], input[type="password"] {
  display: block;
  box-sizing: border-box;
  border: none;
  border-bottom: 2px solid #4CAF50;
  background: #fff;
  padding: 10px;
  margin: 10px 0;
  width: 90%;
  max-width: 400px;
  transition: border-color 0.3s;
}

input[type="text"]:focus, input[type="password"]:focus {
  border-bottom-color: #45a049;
}

/* Styles for submit button */
input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  margin-top: 20px;
  transition: background-color 0.3s;
}

input[type="submit"]:hover {
  background-color: #45a049;
}

/* Loader Styles */
.loader {
  border: 6px solid #f3f3f3; /* Light grey */
  border-top: 6px solid #3498db; /* Blue */
  border-radius: 50%;
  width: 60px;
  height: 60px;
  animation: spin 2s linear infinite;
  display: none; /* Initially hidden */
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 9999;
}

/* Keyframes for Loader Animation */
@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
</head>
<body>

<header class="navbar">
  <a href="#">Home</a>
  <a href="#">About</a>
  <a href="#">Products</a>
  <a href="#">Profile</a>
  <a href="#"><i class='fas fa-cart-plus' style='font-size:24px;color:blue'></i></a>
  <a href="form.jsp" class="btn btn-sm btn-success">Login</a>
  <a href="sign.jsp" class="btn btn-sm btn-primary">Register</a>
</header>

<div id="loader" class="loader"></div>

<div id="paymentForm" class="container">
  <h3 class="text-center">Payment Method</h3>
  <br>
  <div class="tab">
    <button class="tablinks" onclick="openCity(event, 'GooglePay')">Google Pay</button>
    <button class="tablinks" onclick="openCity(event, 'DebitCard')">Debit Card</button>
    <button class="tablinks" onclick="openCity(event, 'CreditCard')">Credit Card</button>
    <button class="tablinks" onclick="openCity(event, 'UPI')">UPI ID</button>
  </div>

  <div id="GooglePay" class="tabcontent">
    <h3>Google Pay Payment</h3>
    <input type="text" name="googlePayNumber" placeholder="Enter Google Pay Number" required>
    <input type="submit" value="Submit" onclick="showLoaderAndRedirect()">
  </div>

  <div id="DebitCard" class="tabcontent">
    <h3>Debit Card Payment</h3>
    <input type="text" name="cardNumber" placeholder="Enter Card Number" required>
    <input type="text" name="expirationDate" placeholder="Expiration Date (MM/YY)" required>
    <input type="text" name="cvv" placeholder="CVV">
    <input type="text" name="cardHolderName" placeholder="Card Holder Name" required>
    <input type="submit" value="Submit" onclick="showLoaderAndRedirect()">
  </div>
  <div id="CreditCard" class="tabcontent">
    <h3>Credit Card Payment</h3>
    <input type="text" name="cardNumber" placeholder="Enter Card Number" required>
    <input type="text" name="expirationDate" placeholder="Expiration Date (MM/YY)" required>
    <input type="text" name="cvv" placeholder="CVV">
    <input type="text" name="cardHolderName" placeholder="Card Holder Name" required>
    <input type="submit" value="Submit" onclick="showLoaderAndRedirect()" required>
  </div>

  <div id="UPI" class="tabcontent">
    <h3>UPI ID Payment</h3>
    <input type="text" name="upiID" placeholder="Enter UPI ID" required>
    <input type="submit" value="Submit" onclick="showLoaderAndRedirect()">
  </div>
</div>

<footer class="footer">
  <p>&copy; 2022 Your Company Name. All rights reserved.</p>
</footer>

<script>
// Function to open payment method tab
function openCity(evt, paymentMethod) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(paymentMethod).style.display = "block";
  evt.currentTarget.className += " active";
}

// Function to show loader for 2 seconds and then redirect
function showLoaderAndRedirect() {
  document.getElementById("loader").style.display = "block"; // Show loader
  document.getElementById("paymentForm").style.display = "none"; // Hide payment form

  // After 2 seconds, redirect to scccess.jsp
  setTimeout(function() {
    window.location.href = "scccess.jsp";
  }, 2000);
}

// Get the element with class="tablinks" and click on it
document.getElementsByClassName("tablinks")[0].click();
</script>






</body>
</html>