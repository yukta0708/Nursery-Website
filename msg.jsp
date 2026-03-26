<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
    <title>Contact Us Form in  Html Css</title>
<link rel="stylesheet" href="msg.css">
</head>
<body>
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
    <div class="contact-form">
        <h1>FeedBack</h1>
        <div class="container">
            <div class="main">
                <div class="content">
                    <h2>FeedBack</h2>
                    <form action="msg" method="post">
                        <input type="text" name="name" placeholder="Enter Your Name">
                     
                        <input type="email" name="email" placeholder="Enter Your Email">
                        <textarea name="msg" placeholder="Your Message"></textarea> 
                        
                         
                        
                                          
             <button type="submit" class="btn">Send <i class="fas fa-paper-plane"></i></button>
                    </form>
                </div>
                <div class="form-img">
                    <img src="img/bg1.png" alt="">
                </div>
            </div>
        </div>
    </div> 
</body>
</html>