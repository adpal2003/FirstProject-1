

<%@page import="com.mycompany.tbad.helper.FactoryProvider"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="com.mycompany.tbad.entity.User"%>
  <!-- <%
           User user = (User)session.getAttribute("current-user");
           if(user==null){
           session.setAttribute("message", "You are not valid User");
           response.sendRedirect("Login.jsp");
            return;
            }
            else{
             if(user.getUserType().equals("normal")){
              session.setAttribute("message", "You are not Admin");
              response.sendRedirect("Login.jsp");
             return;
              }
             }
    %> -->

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
        
<!--        Flicty-->
<link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
        
        <link href="stylesheet.css" />
        <style>
            
body {
  margin: 0;
  padding: 0;
}

    .box{
border-radius: 10px;
}
    header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px;
  background-color: #fff;
  box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
}
.logo{
margin-left: 8rem;
}
.logo img {
  height: 50px;
}

.search-box {
  display: flex;
  align-items: center;
  border: 1px solid #ccc;
  border-radius: 5px;
  padding: 5px;
 /*  border: solid black;
 margin-left: rem; */
}

.search-box input[type="text"] {
  border: none;
  outline: none;
  margin-right: 14rem;
  font-size: 14px;
}

.search-box button[type="submit"] {
  background-color: #ccc;
  border: none;
  outline: none;
  color: #fff;
  border-radius: 5px;
  padding: 5px 10px;
  cursor: pointer;
}
.cart{
/*     border: solid black; */
/* border: solid black; */
     width: 10rem;
     width:0rem;
}

.cart a {

    align-items: center;
    width: 20rem;
/* border: solid black; */
  text-decoration: none;
  color: #333;
  font-size: 14px;

}

.cart i {
  margin-right: 5px;
}

.account a {
/*     border: solid black;*/
/*    margin-right: 5rem;
  text-decoration: none;
  color: #333;
  margin-left:-10rem;
  font-size: 14px;*/
}
 .container{
    display: flex;
}
.item-1{
    flex-grow: 2;
}
.container-imagesBox {
  display: grid;
  grid-template-columns: 3fr 3fr;
  grid-template-rows: auto;
  grid-gap: 10px;
  height: 700px;
  width: 95%;
  margin: 0 auto;
  margin-top: 2rem;
/*   border: solid black; */
}

.box {
    width: 100%;
     height: 700px;
  background-color: #ccc;
}

.item-1 {
     margin-right: 1rem;
  grid-row: 1 / span 2;
  grid-column: 1 / span 1;
  height: 40rem;
}

.item-2 {
  grid-row: 1 / span 3;
  grid-column: 2 / span 1;
  height: 18.75rem  ;
}

.item-3 {
  grid-row: 2 / span 2;
  grid-column: 2 / span 1;
  height: 19.625rem;
}
.box img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 10px;
}
.Appliances-section {
  background-color: #FFF5EE;
  padding: 0;
  height: 7rem;
  margin-top: 20px;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}

.Appliances-list {
  padding: 5px;
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  align-items: center;
}

.Appliances-list ul {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: row;
}

.Appliances-list li {
  font-size: x-large;
  margin-right: 50px;
}

.top-offers {
  margin-left: 110px;
  font-size: x-large;
}

.Appliances-list ul li a {
  text-decoration: none;
  color: black;
}

.Appliances-list ul li i {
  margin-right: 0.3rem;
}

/* Media Queries for Responsive Design */

/* For screens smaller than 768px */
@media screen and (max-width: 768px) {
  .Appliances-section {
    height: auto;
    flex-direction: column;
    align-items: flex-start;
  }
  .Appliances-list {
    margin-top: 10px;
    justify-content: center;
  }
  .Appliances-list li {
    margin-right: 30px;
  }
  .top-offers {
    margin-left: 0;
    margin-bottom: 10px;
  }
}

/* For screens between 768px and 1024px */
@media screen and (min-width: 768px) and (max-width: 1024px) {
  .Appliances-list li {
    margin-right: 0px;

  }
  .Appliances-list li i{
  padding: 5px;
      display: flex;
        justify-content: center;
        align-items: center;
  margin-right: 1rem;
  }
  .Appliances-list li a{
   margin-right: 1rem;
  }
  .top-offers {
    margin-left: 50px;
  }
}

/* For screens larger than 1024px */
@media screen and (min-width: 1024px) {
  .Appliances-list li {
    margin-right: 50px;
  }
  .top-offers {
    margin-left: 100px;
  }

}

.account {
  position: relative;
    margin-right: 5rem;
  text-decoration: none;
  color: #333;
  margin-left:-10rem;
  font-size: 14px;
}

.trigger {
  display: block;
  padding: 10px;
  background-color: #fff !important;
  color: #000 !important;
  font-weight: bold;
  border-radius: 5px;
/*  border: 1px solid #ccc;*/
  cursor: pointer;
  transition: all 0.3s ease;
}

.dropdown {
  position: absolute;
  top: 40px;
  right: 0;
  width: 250px;
  background-color: #fff !important;
  box-shadow: 0px 3px 6px rgba(0,0,0,0.16);
  border-radius: 5px;
  overflow: hidden;
  display: none;
}

.content-dropdown {
    position: relative;
    z-index: 9999;
  display: flex;
  flex-direction: column;
  gap: 10px;
  padding: 10px;
  background-color: #fff !important;
}

.Sign-in span a {
  display: block;
  padding: 10px;
  color: #000 !important;
  text-decoration: none;
}

.Sign-in span a:hover {
  background-color: #f5f5f5;
}

.list ul {
  list-style: none;
  margin: 0;
  padding: 0;
  align-content: center;
}

.list ul li a {
  display: block;
  padding: 10px;
  color: #000 !important;
  text-decoration: none;
}

.list ul li a:hover {
  background-color: #f5f5f5;
}

.account:hover .dropdown {
  display: block;
}

.trigger:hover {
  background-color: #f5f5f5 !important;
}
.Sign-in {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.Sign-in span a {
  display: block;
  padding: 10px;
  color: #000;
  text-decoration: none;
}

.Sign-in span:first-of-type a {
  float: left;
}

.Sign-in span:last-of-type a {
  float: right;
margin-left: 5rem;
}
.carousel slide{
    border: solid black;
}







.main-section {
/*    border-top: solid black;
    border-bottom: solid black;*/
/* create a half-cut border on the bottom of an element */


    background-color: #D9E4F5;
    height: 10rem;
    display: grid;
     grid-template-columns: 0.9fr 2fr 1fr;
    /*    object-fit: contain;*/
/*    position: relative;*/
/*    display: flex;*/
/*    justify-content: space-between;
    align-items: center;*/
/* border: solid black;*/
}
.container-box{
/*    border: solid black;*/
}
.my-button {
  background-color: #f0483e;
  color: white;
  width: 20rem;
  border: none;
  padding: 10px 20px;
  font-size: 16px;
  border-radius: 1px;
  cursor: pointer;
  margin-right: 20px;
}
.container-box a img{
/* border: solid black;*/
margin-top: 0rem;
 margin-left: 3rem;
 width: 300px;
}
.container-box p{
/*    margin-right: 30px;*/
    font-family: Helvetica;
    margin-top: 40px;
    font-size: 24px;
}
.container-box .my-button{
/*    border: solid black;*/
margin-left: 30px;
    margin-top: 55px;
    border-radius:5px; 
}
.container {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-around;
			margin-bottom: 50px;
		}

		.product {
			display: flex;
			flex-direction: column;
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0 2px 5px rgba(0,0,0,0.1);
			transition: all 0.3s ease-in-out;
			margin: 20px;
			width: 250px;
			cursor: pointer;
		}

		.product:hover {
			box-shadow: 0 5px 10px rgba(0,0,0,0.2);
			transform: translateY(-5px);
		}

		.product-image {
			height: 250px;
			overflow: hidden;
			border-radius: 5px 5px 0 0;
		}

		.product-image img {
			width: 100%;
			height: 100%;
			object-fit: cover;
			object-position: center;
			transition: all 0.3s ease-in-out;
		}

		.product-image img:hover {
			transform: scale(1.1);
		}

		.product-details {
			padding: 20px;
			flex-grow: 1;
			display: flex;
			flex-direction: column;
			justify-content: center;
		}

		.product-name {
			font-size: 20px;
			font-weight: bold;
			margin: 0 0 10px;
		}

		.product-description {
			font-size: 16px;
			color: #777;
			margin: 0 0 10px;
			flex-grow: 1;
		}

		.product-price {
			font-size: 18px;
			font-weight: bold;
			margin: 0;
			color: #e91e63;
		}
                .section-product-bar{
/*                    border: solid black;    */
margin-top: 20px;
                }
                .section-product-bar-heading {
  text-align: center;
}

.section-product-bar-heading h1 {
  font-size: 2.5em;
  font-weight: bold;
  margin: 0;
}

.section-product-bar-heading p {
  font-size: 1.2em;
  margin-top: 0.5em;
}
  .gallery {
      background: #EEE;
    }
    
    .gallery-cell {
      width: 250px;;
      height: 250px;
      margin-right: 10px;
      background: #8C8;
      counter-increment: gallery-cell;
    }
    

.gallery:after {
  content: 'flickity';
  display: none; /* hide :after */
}

@media screen and ( min-width: 768px ) {
  /* disable Flickity for large devices */
  .gallery:after {
    content: '';
  }
}
.flickity-page-dots {
  display: none;
}
.product-slider-section h1{
    margin-left: 50px;

}
        </style>
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
    <div class="container-box">
        <a href="#" ><img  src="img/laptop-png-images-removebg-preview.png"/></a>
    </div>
    <div class="container-box">
        <p>Experience lightning-fast performance and crystal-clear visuals with our sleek and stylish
            laptop</p>
    </div>
    <div class="container-box">
        <button class="my-button">Let's Go</button>
    </div>
    </div>
<!-- add ads slider  end-->

<!-- add product slider  start-->
<!--<section class="carousel">
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
    </div>-->

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


<div class="section-product-bar">
    <div class="section-product-bar-heading">
        <h1>Best Deals</h1>
        <p>Don't miss out on the best deal of the year!</p>
    </div>
    <div class="section-product-bar-box">
      
	<div class="container">
		<div class="product">
			<div class="product-image">
				<img src="img/19e7d920e99279b7a53cc0a4c29ca3af.jpg" alt="Product 1">
			</div>
		</div>

		<div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>	
              
                <div class="product">
                    <div class="product-image">
                        <img src="img/sale-discount-up-to-vector-banner-concept-illustration-special-offer-abstract-advertising-promotion-creative-layout-graphic-design-92507920.jpg" alt="Product 4">
                    </div>
                    
                </div>
            
                <div class="product">
                    <div class="product-image">
                        <img src="img/images.jpg" alt="Product 5">
                    </div>
                    
                </div>
            </div>

    </div>
</div>


<!--<div class="section-product-bar">
    <div class="section-product-bar-heading">
        <h1>Eletrocines</h1>
        <p>Don't miss out on the best deal of the year!</p>
    </div>
    <div class="section-product-bar-box">
      
	<div class="container">
		<div class="product">
			<div class="product-image">
				<img src="img/19e7d920e99279b7a53cc0a4c29ca3af.jpg" alt="Product 1">
			</div>

		</div>

		<div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>	
                 <div class="product">
                    <div class="product-image">
                        <img src="https://via.placeholder.com/250x250.png?text=Product+3" alt="Product 3">
                    </div>
                    <div class="product-details">
                        <h2 class="product-name">Product 3 Name</h2>
                        <p class="product-description">Product 3 Description</p>
                        <p class="product-price">$39.99</p>
                    </div>
                </div> 
                <div class="product">
                    <div class="product-image">
                        <img src="img/sale-discount-up-to-vector-banner-concept-illustration-special-offer-abstract-advertising-promotion-creative-layout-graphic-design-92507920.jpg" alt="Product 4">
                    </div>
                    
                </div>
            
                <div class="product">
                    <div class="product-image">
                        <img src="img/images.jpg" alt="Product 5">
                    </div>
                    
                </div>
            </div>

    </div>
</div>
-->

<!--<div class="section-product-bar">
    <div class="section-product-bar-heading">
        <h1>Summer Spical</h1>
        <p>Don't miss out on the best deal of the year!</p>
    </div>
    <div class="section-product-bar-box">
      
	<div class="container">
		<div class="product">
			<div class="product-image">
				<img src="img/19e7d920e99279b7a53cc0a4c29ca3af.jpg" alt="Product 1">
			</div>
			<div class="product-details">
				<h2 class="product-name">Product 1 Name</h2>
				<p class="product-description">Product 1 Description</p>
				<p class="product-price">$19.99</p>
			</div>
		</div>

		<div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>	
                 <div class="product">
                    <div class="product-image">
                        <img src="https://via.placeholder.com/250x250.png?text=Product+3" alt="Product 3">
                    </div>
                    <div class="product-details">
                        <h2 class="product-name">Product 3 Name</h2>
                        <p class="product-description">Product 3 Description</p>
                        <p class="product-price">$39.99</p>
                    </div>
                </div> 
                <div class="product">
                    <div class="product-image">
                        <img src="img/sale-discount-up-to-vector-banner-concept-illustration-special-offer-abstract-advertising-promotion-creative-layout-graphic-design-92507920.jpg" alt="Product 4">
                    </div>
                    
                </div>
            
                <div class="product">
                    <div class="product-image">
                        <img src="img/images.jpg" alt="Product 5">
                    </div>
                    
                </div>
            </div>

    </div>
</div>-->






<div class="product-slider-section">
    <h1>Products</h1>
<div class="gallery js-flickity"
     data-flickity-options='{ "freeScroll": true, "wrapAround": true }'> 
               
      <div class="gallery-cell product">
        <div class="product-image">
            <img src="https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41-+itFyZlL._AC_SY200_.jpg
" alt="Product 1">
        </div>

    </div>
      <div class="gallery-cell product">
			<div class="product-image">
				<img src="	https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/410iWt8d79L._AC_SY200_.jpg
" alt="Product 2">
			</div>
			
                </div>
        <div class="gallery-cell product">
                    <div class="product-image">
                        <img src="img/sale-discount-up-to-vector-banner-concept-illustration-special-offer-abstract-advertising-promotion-creative-layout-graphic-design-92507920.jpg" alt="Product 4">
                    </div>
                    
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
     <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
     <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
     <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
      <div class="product">
			<div class="product-image">
				<img src="img/download.jpg" alt="Product 2">
			</div>
			
                </div>
    </div>



</div>

<!-- Java Script Files -->



<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
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
