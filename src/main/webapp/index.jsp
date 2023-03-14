<%-- 
    Document   : newjsp
    Created on : 08-Mar-2023, 3:02:38 pm
    Author     : Suresh Jain
--%>

<%@page import="com.mycompany.tbad.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>E-Commerce</title>
            <%@include file = "Complnents.jsp" %>
    <link rel="styles heet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 
    <link rel="styleSheet" href="Home.css"/>
</head>
<body>
<section>
        <header>
            <div class="logo">
<!--                <img src="logo.png" alt="Logo">-->
                <span class="logo-nane">TBAD</span>
            </div>
            <div class="search-box">
                <input type="text" placeholder="Search...">
                <button type="submit"><i class="fa fa-search"></i></button>
            </div>
            <div class="cart">
<!--                <div class="icon"><i class="fa-solid fa-cart-shopping"></i></div>-->
                <a href="#"><i class="fa fa-shopping-cart"></i> Cart</a>
            </div>
            <div class="account">
                <a href="#" class="trigger"><i class="fa-solid fa-user"></i>Sign In</a>
                <div class="dropdown">
                    <div class ="content-dropdown">
                        <div class="Sign-in">
                        <span><a href = "Register.jsp">Sign-in</a></span>
                        <span><a href = "Login.jsp">Login</a></span>
                    </div>
                        <div class="list">
                            <ul>
                                <li><a href="#">Profile</a></li>
                                <li><a href="#">Orders</a></li>
                                <li><a href="#">Wishlist</a></li>
                                <li><a href="#">My Notification</a></li>
                                <li><a href="#">My Cart</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
              </div>
              
              
        </header>
</section>

<!-- Appinces Section -->





<section class="Appliances-section">
    <div class="top-offers">
        <span><i class="fa-solid fa-star"></i>Top Offeers</span>
    </div>
    <div class="Appliances-list">
        <ul>
            <li><i class="fa-solid fa-cart-shopping"></i><a href="#">Grocery</a></li>
            <li><i class="fa-solid fa-mobile"></i><a href="#">Mobiles</a></li>
            <li><i class="fa-solid fa-shirt"></i><a href="#">Fashino</a></li>
            <li><i class="fa-solid fa-fan"></i><a href="#">Appliances</a></li>
            <li><i class="fa-solid fa-house"></i><a href="#">Home</a></li>
            <li><i class="fa-solid fa-laptop-medical"></i><a href="#">Electronices</a></li>
        </ul>
    </div>
</section>




<!-- Appinces Section  End-->
<!-- Slider Start -->



<div style="" id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img style="height: 30vh;" class="d-block w-100" src="2202-ROI-GHS-Buylist-Header-Top-offers.jpeg" alt="First slide">
      </div>
      <div class="carousel-item">
        <img style="height: 30vh;" class="d-block w-100" src="2202-ROI-GHS-Buylist-Header-Top-offers.jpeg" alt="Second slide">
      </div>
      <div class="carousel-item">
        <img style="height: 30vh;" class="d-block w-100" src="2202-ROI-GHS-Buylist-Header-Top-offers.jpeg" alt="Third slide">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


<!-- Slider End -->



<!-- continer Image  -->

<div class="container-imagesBox">
    <div class="box item-1">
        <a href="#"><img src="img/Apple-iPhone.jpg" alt="Logo"></a>
    </div>
    <div class="box item-2">
        <a href="#"><img src="img/maxresdefault (1).jpg" alt="Logo"></a>
    </div>
    <div class="box item-3">
       <a href="#"> <img src="img/maxresdefault.jpg" alt="Logo"></a>
    </div>
</div>
    
<!-- continer Image   end-->



<!-- add ads slider  start-->
<div class="main-section">
        <div class="off-2">
            <a href=""><img src="img/offer1.png" alt=""> </a>
        </div>
        <div class="main-section-heading">
            <div class="off-3">
                <h3>Up to 40% OFF. Kick off the year with new tech!</h3>
            </div>
            <div class="off-4">
                <h3>Everything you need to help you succeed.</h3>
            </div>
        </div>

        <div class="main-section-button">
            <div class="off-5">
                <button class="btn">Let's go <i class="fas fa-chevron-right"></i></button>

            </div>

        </div>
    </div>
<!-- add ads slider  end-->

<!-- add product slider  start-->
<section class="carousel">
    <div class="corousel_slider">
        <ul class="corousel_list">
            <li class="courousel__itemm">
             <a href=""><img src="img/populer.jpg" alt=""></a>

            </li>
            <li class="courousel__itemm">
                <a href=""><img src="img/populer1.jpg" alt=""></a>

            </li>
            <li class="courousel__itemm">
                <a href=""><img src="img/populer2.webp" alt=""></a>

            </li>
            <li class="courousel__itemm">
                <a href=""><img src="img/populer3.jpg" alt=""></a>

            </li>
            <li class="courousel__itemm">
                <a href=""><img src="img/populer4.jpg" alt=""></a>

            </li>
            <li class="courousel__itemm">
                <a href=""><img src="img/populer5.jpg" alt=""></a>
            </li>

        </ul>
    </div>

</section>
<!-- add product slider  start-->






<!-- Example -- >

<!-- <div class="menu">
    <ul class="list">
      <li>Item 1</li>
      <li>Item 2</li>
      <li>Item 3</li>
    </ul>
    <a href="#" class="trigger"></a>
  </div> -->
  
<!-- Example  End-->

<!-- Java Script Files -->




<script>
 
 var trigger = document.querySelector('.trigger');
var dropdown = document.querySelector('.dropdown');

trigger.addEventListener('mouseover', function() {
  dropdown.classList.add('active');
});

trigger.addEventListener('mouseout', function() {
  dropdown.classList.remove('active');
});




<!-- add script slider  start-->
</script>
<!-- add new slider  sript end-->
<!-- Java Script Files End-->

<script src="ProductSlider.js"></script>

 <%
        out.println(FactoryProvider.getFactory());
        %>

    </body>
</html>
