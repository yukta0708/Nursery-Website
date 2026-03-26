<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.ProductDAO" %>
<%@page import="com.entity.Product" %>
<%@page import="com.entity.User" %>
<%@page import="java.util.List" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/brands.min.css" integrity="sha512-8RxmFOVaKQe/xtg6lbscU9DU0IRhURWEuiI0tXevv+lXbAHfkpamD4VKFQRto9WgfOJDwOZ74c/s9Yesv3VvIQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="cart.css">
       
 <title>Plant Website</title>
 <%
 User u=(User)session.getAttribute("userobj");
 %>
    </head>
    
    <body>
      
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
                            <a href="all.jsp" class="nav__link">Products</a>
                        </li>
                        <li class="nav__item">
                            <a href="profile.jsp" class="nav__link">Profile</a>
                        </li>
                        <li class="nav__item">
                           <a href="cart.jsp" class="nav__link"><i class='fas fa-cart-plus' style='font-size:24px;color:blue'></i></a>
                        </li>
                        <li class="nav__item">
                        <c:if test="${not empty userobj}">
                            <a href="form.jsp" class="btn btn-sm btn-success"> ${userobj.name}</a>
                            <a data-toggle="modal" data-target="#exampleModalCenter" class=" text-white btn btn-sm btn-primary">Logout</a>
                            </c:if>
                        </li>
                         <li class="nav__item">
                         <c:if test="${ empty userobj}">
                         <a href="form.jsp" class="btn btn-sm btn-success">Login</a>
                            <a href="sign.jsp" class="btn btn-sm btn-primary">Register</a>
                            </c:if>
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
        <a href="logout" type="button" class="btn btn-primary text-white">Logout</a>
      </div>
      <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>
</div>		
        
            <section class="home" id="home">
                <div class="home__container container grid">
                    <img src="img/plant.jpeg" alt="" class="home__img">

                    <div class="home__data">
                        <h1 class="home__title">
                            Plants will make <br> your life better
                        </h1>
                        <p class="home__description">
                            Create incredible plant design for your offices or apartment. 
                            Add freshness to your new ideas.
                        </p>
                        
                        
                        
                        
                        <section class="search-section container">
        					<div class="search-container">
            					<form class="search-form" action="search.jsp" method="post">
                					<input type="text" name="ch" placeholder="Search" class="search-input">
                						<button type="submit" class="search-button btn btn-success"><i class="ri-search-line"></i></button>
            								</form>
        							</div>
    							</section>
    						<br>
    				<br>
                        <a href="#about" class="button button--flex">
                            Explore <i class="ri-arrow-right-down-line button__icon"></i>
                        </a>
                       
                   
    <style>
    
   .search-section {
    margin-top: 20px;
    text-align: center;
}

.search-container {
    display: inline-block;
    background-color: #f1f1f1; /* Light gray background */
    border-radius: 30px; /* Half of the height of the input field */
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
}

.search-form {
    display: flex;
    align-items: center;
}

.search-input {
    width: 350px; /* Adjust as needed */
    padding: 8px;
    border: none;
    border-radius: 30px; /* Half of the height of the input field */
    outline: none;
    font-size: 14px;
    color: #333; /* Text color */
}

.search-button {
    background-color: #4CAF50; /* Green background */
    color: white;
    border: none;
    padding: 8px 10px; /* Adjust padding as needed */
    cursor: pointer;
    transition: background-color 0.3s;
    border-top-right-radius: 30px; /* Match container border radius */
    border-bottom-right-radius: 30px; /* Match container border radius */
}

.search-button:hover {
    background-color: #45a049; /* Darker green background on hover */
}

/* Style the search icon */
.ri-search-line {
    font-size: 16px;
}
   
    
    
    </style>
                
                    </div>

                    <div class="home__social">
                        <span class="home__social-follow">Follow Us</span>

                        <div class="home__social-links">
                            <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                                <i class="ri-facebook-fill"></i>
                            </a>
                            <a href="https://www.instagram.com/" target="_blank" class="home__social-link">
                                <i class="ri-instagram-line"></i>
                            </a>
                            <a href="https://twitter.com/" target="_blank" class="home__social-link">
                                <i class="ri-twitter-fill"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <!--==================== ABOUT ====================-->
            <section class="about section container" id="about">
                <div class="about__container grid">
                    <img src="img/about.png" alt="" class="about__img">

                    <div class="about__data">
                        <h2 class="section__title about__title">
                            Who we really are & <br> why choose us
                        </h2>

                        <p class="about__description">
                            We have over 4000+ unbiased reviews and our customers 
                            trust our plant process and delivery service every time
                        </p>

                        <div class="about__details">
                            <p class="about__details-description">
                                <i class="ri-checkbox-fill about__details-icon"></i>
                                We always deliver on time.
                            </p>
                            <p class="about__details-description">
                                <i class="ri-checkbox-fill about__details-icon"></i>
                                We give you guides to protect and care for your plants.
                            </p>
                            <p class="about__details-description">
                                <i class="ri-checkbox-fill about__details-icon"></i>
                                We always come over for a check-up after sale.
                            </p>
                            <p class="about__details-description">
                                <i class="ri-checkbox-fill about__details-icon"></i>
                                100% money back guaranteed.
                            </p>
                        </div>

                        <a href="msg.jsp" class="btn btn-sm btn-success text-white">FeedBack</a>
                          <a href="" class="btn btn-sm btn-primary text-white">Contact Us</a>
                           
                       
                    </div>
                </div>
            </section>

            <!--==================== STEPS ====================-->
            <section class="steps section container">
                <div class="steps__bg">
                    <h2 class="section__title-center steps__title">
                        Steps to start your <br> plants off right
                    </h2>

                    <div class="steps__container grid">
                        <div class="steps__card">
                            <div class="steps__card-number">01</div>
                            <h3 class="steps__card-title">Choose Plant</h3>
                            <p class="steps__card-description">
                                We have several varieties plants you can choose from.
                            </p>
                        </div>

                        <div class="steps__card">
                            <div class="steps__card-number">02</div>
                            <h3 class="steps__card-title">Place an order</h3>
                            <p class="steps__card-description">
                                Once your order is set, we move to the next step which is the shipping.
                            </p>
                        </div>

                        <div class="steps__card">
                            <div class="steps__card-number">03</div>
                            <h3 class="steps__card-title">Get plants delivered</h3>
                            <p class="steps__card-description">
                                Our delivery process is easy, you receive the plant direct to your door.
                            </p>
                        </div>
                    </div>
                </div>
            </section>

           
            <section class="product section container" id="products">
               
                <p class="product__description">
                    Here are some selected plants from our showroom, all are in excellent 
                    shape and has a long life span. Buy and enjoy best quality.
                </p>
		<div class="container">
		<h2 class="text-center">New Products</h2>
		<div class="row">

		<%
  
  ProductDAO dao=new ProductDAO(DBConnect.getConnection());
  List<Product> list=dao.getAllProducts();
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
		
                   <br>
                   <br>
                   <div class="text-center">
                  
                  
                   <a href="all.jsp" class="btn btn-sm btn-warning text-white ml-1">View All</a>
					</div>
          </div>
    
            </section>

            <!--==================== QUESTIONS ====================-->
            <section class="questions section" id="faqs">
                <h2 class="section__title-center questions__title container">
                    Some common questions <br> were often asked
                </h2>

                <div class="questions__container container grid">
                    <div class="questions__group">
                        <div class="questions__item">
                            <header class="questions__header">
                                <i class="ri-add-line questions__icon"></i>
                                <h3 class="questions__item-title">
                                    My flowers are falling off or dying?
                                </h3>
                            </header>

                            <div class="questions__content">
                                <p class="questions__description">
                                    Plants are easy way to add color energy and transform your 
                                    space but which planet is for you. Choosing the right plant.
                                </p>
                            </div>
                        </div>

                        <div class="questions__item">
                            <header class="questions__header">
                                <i class="ri-add-line questions__icon"></i>
                                <h3 class="questions__item-title">
                                    What causes leaves to become pale?
                                </h3>
                            </header>

                            <div class="questions__content">
                                <p class="questions__description">
                                    Plants are easy way to add color energy and transform your 
                                    space but which planet is for you. Choosing the right plant.
                                </p>
                            </div>
                        </div>

                        <div class="questions__item">
                            <header class="questions__header">
                                <i class="ri-add-line questions__icon"></i>
                                <h3 class="questions__item-title">
                                    What causes brown crispy leaves?
                                </h3>
                            </header>

                            <div class="questions__content">
                                <p class="questions__description">
                                    Plants are easy way to add color energy and transform your 
                                    space but which planet is for you. Choosing the right plant.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="questions__group">
                        <div class="questions__item">
                            <header class="questions__header">
                                <i class="ri-add-line questions__icon"></i>
                                <h3 class="questions__item-title">
                                    How do i choose a plant?
                                </h3>
                            </header>

                            <div class="questions__content">
                                <p class="questions__description">
                                    Plants are easy way to add color energy and transform your 
                                    space but which planet is for you. Choosing the right plant.
                                </p>
                            </div>
                        </div>

                        <div class="questions__item">
                            <header class="questions__header">
                                <i class="ri-add-line questions__icon"></i>
                                <h3 class="questions__item-title">
                                    How do I change the pots?
                                </h3>
                            </header>

                            <div class="questions__content">
                                <p class="questions__description">
                                    Plants are easy way to add color energy and transform your 
                                    space but which planet is for you. Choosing the right plant.
                                </p>
                            </div>
                        </div>

                        <div class="questions__item">
                            <header class="questions__header">
                                <i class="ri-add-line questions__icon"></i>
                                <h3 class="questions__item-title">
                                    Why are gnats flying around my plant?
                         
                                </h3>
                            </header>

                            <div class="questions__content">
                                <p class="questions__description">
                                    Plants are easy way to add color energy and transform your 
                                    space but which planet is for you. Choosing the right plant.
                                </p>
                            </div>                       
                        </div>
                       
                    </div> <a href="question.jsp" class="btn btn-sm btn-warning text-white">More Question</a>
                </div>
               
            </section>

          
            <section class="contact section container" id="contact">                
                <div class="contact__container grid">
                    <div class="contact__box">
                        <h2 class="section__title">
                            Reach out to us today <br> via any of the given <br> information
                        </h2>

                        <div class="contact__data">
                            <div class="contact__information">
                                <h3 class="contact__subtitle">Call us for instant support</h3>
                                <span class="contact__description">
                                    <i class="ri-phone-line contact__icon"></i>
                                    +999 888 777
                                </span>
                            </div>

                            <div class="contact__information">
                                <h3 class="contact__subtitle">Write us by mail</h3>
                                <span class="contact__description">
                                    <i class="ri-mail-line contact__icon"></i>
                                    user@email.com
                                </span>
                            </div>
                        </div>
                    </div>

                    <form action="" class="contact__form">
                        <div class="contact__inputs">
                            <div class="contact__content">
                                <input type="email" placeholder=" " class="contact__input">
                                <label for="" class="contact__label">Email</label>
                            </div>

                            <div class="contact__content">
                                <input type="text" placeholder=" " class="contact__input">
                                <label for="" class="contact__label">Subject</label>
                            </div>

                            <div class="contact__content contact__area">
                                <textarea name="message" placeholder=" " class="contact__input"></textarea>                              
                                <label for="" class="contact__label">Message</label>
                            </div>
                        </div>

                        <button class="button button--flex">
                            Send Message
                            <i class="ri-arrow-right-up-line button__icon"></i>
                        </button>
                    </form>
                </div>
            </section>
        </main>

        <!--==================== FOOTER ====================-->
        <footer class="footer section">
            <div class="footer__container container grid">
                <div class="footer__content">
                    <a href="#" class="footer__logo">
                        <i class="ri-leaf-line footer__logo-icon"></i> Plantex
                    </a>

                    
                <div class="footer__content">
                    <h3 class="footer__title">Our Address</h3>

                    <ul class="footer__data">
                        <li class="footer__information">Nashik</li>
                        <li class="footer__information">nashik</li>
                        <li class="footer__information">123-456-789</li>
                    </ul>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">Contact Us</h3>

                    <ul class="footer__data">
                        <li class="footer__information">1234567890</li>
                        
                        <div class="footer__social">
                            <a href="https://www.facebook.com/" class="footer__social-link">
                                <i class="ri-facebook-fill"></i>
                            </a>
                            <a href="https://www.instagram.com/" class="footer__social-link">
                                <i class="ri-instagram-line"></i>
                            </a>
                            <a href="https://twitter.com/" class="footer__social-link">
                                <i class="ri-twitter-fill"></i>
                            </a>
                        </div>
                       
                    </ul>
                </div>

                <div class="footer__content">
                    <h3 class="footer__title">
                        We accept all credit cards
                    </h3>

                    <div class="footer__cards">
                        <img src="img/card1.png" alt="" class="footer__card">
                        <img src="img/card2.png" alt="" class="footer__card">
                        <img src="img/card3.png" alt="" class="footer__card">
                        <img src="img/card4.png" alt="" class="footer__card">
                    </div>
                </div>
            </div>

            <p class="footer__copy">&#169; kthm college</p>
        </footer>
        
      
        <a href="#" class="scrollup" id="scroll-up"> 
            <i class="ri-arrow-up-fill scrollup__icon"></i>
        </a>

        <!--=============== SCROLL REVEAL ===============-->
        <script src="scrollreveal.min.js"></script>
        
        <!--=============== MAIN JS ===============-->
        <script src="main.js"></script>
    </body>
</html>