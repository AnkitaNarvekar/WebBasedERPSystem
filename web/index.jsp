<%-- 
    Document   : home
    Created on : 28 Jun, 2019, 12:29:24 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>Real_state || Home</title>
   <link rel="icon" href="img/favicon.png">
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <!-- animate CSS -->
   <link rel="stylesheet" href="css/animate.css">
   <!-- owl carousel CSS -->
   <link rel="stylesheet" href="css/owl.carousel.min.css">
   <!-- themify CSS -->
   <link rel="stylesheet" href="css/themify-icons.css">
   <!-- flaticon CSS -->
   <link rel="stylesheet" href="css/flaticon.css">
   <!-- magnific-popup CSS -->
   <link rel="stylesheet" href="css/magnific-popup.css">
   <!-- font awesome CSS -->
   <link rel="stylesheet" href="fontawesome/css/all.min.css">
   <!-- style CSS -->
   <link rel="stylesheet" href="css/style.css">
</head>

<body>
     <%
            if(session.getAttribute("id")==null)
            {
                response.sendRedirect("indexfirst.jsp");
            }
           out.print("WELCOME: "+session.getAttribute("id")); 
         %>
   <!--::menu part start::-->
   <header class="main_menu home_menu">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="index.jsp"> <img src="img/logo.png" alt="logo"> </a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
							aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse main-menu-item" id="navbarNav">
							<ul class="navbar-nav">
								<li class="nav-item active">
									<a class="nav-link" href="index.jsp">HOME<span class="sr-only">(current)</span></a>
								</li>
								
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										MASTER
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                                 <a class="dropdown-item" href="customer.jsp">Customer</a>
                                                                                <a class="dropdown-item" href="product.jsp">Product</a>
                                                                                <a class="dropdown-item" href="rawmaterial.jsp">Raw Material</a>
                                                                                <a class="dropdown-item" href="supplier.jsp">Supplier</a>
                                                                                <a class="dropdown-item" href="users.jsp">Users</a>
                                                                        </div>
								</li>
                                                                
                                                                <li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										PURCHASE ORDER
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                                 <a class="dropdown-item" href="productlist.jsp">Purchase Order</a>
                                                                                <a class="dropdown-item" href="status.jsp">Status</a>
                                                                                
                                                                        </div>
								</li>
                                                                
                                                               
                                                                
                                                          	
							</ul>
						</div>
						<div class="btn_1 d-none d-lg-block">
							<a href="logout.jsp" class="float-right">LOGOUT</a>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
   <!--::menu part end::-->

   <!--::banner part start::-->
   <section class="banner_part">
      <div class="container">
         <div class="row align-content-center">
            <div class="col-lg-6">
               <div class="banner_text aling-items-center">
                  <div class="banner_text_iner">
                     <h5>Beautiful investments</h5>
                     <h2>Everyone Deserves
                        the Opportunity of
                        the Home</h2>
                     <p>Enim a, scelerisque aliquet vivamus neque diam sed at pede do laos orci. Potenti vel
                        in sagittis nulla augue vitae et tempus torquent dicid Lacinia neque mus maleware
                        poside</p>
                     <a href="#" class="btn_1 banner_btn ">View Property</a>
                     <div class="d-none d-xl-block banner_social_icon">
                        <ul class="list-inline">

                           <li class="list-inline-item"><a href="#"><span class="ti-facebook"></span>facebook</a><span
                                 class="dot"><i class="fas fa-circle"></i></span></li>
                           <li class="list-inline-item"><a href="#"><span class="ti-twitter-alt"></span>twitter</a><span
                                 class="dot"><i class="fas fa-circle"></i></span></li>
                           <li class="list-inline-item"><a href="#"><span class="ti-instagram"></span>instagram</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <a href="https://www.youtube.com/watch?v=pBFQdxA-apI" class="popup-youtube video_popup"><span
            class="ti-control-play"></span></a>

   </section>
   <!--::banner part end::-->

   <!--::team part end::-->
   <section class="team_part">
      <div class="container">
         <div class="row">
            <div class="col-lg-6">
               <div class="team_img"></div>
            </div>
            <div class="offset-lg-1 col-lg-5">
               <div class="team_member_text">
                  <h2>Living From <br>
                     The Team That Cares</h2>
                  <p>Unto all set life creeping own set. Saw make multiply female watge deb all set life
                     creeping own set. Saw make multiply female watge abund winged subdue dominion
                     own night days second</p>
                  <ul>
                     <li><span class="ti-paint-bucket"></span>Set dry signs spirit a kind First shall them windged
                        creping</li>
                     <li><span class="ti-check-box"></span>He two face one moved dominion man you're likeness</li>
                     <li><span class="ti-ruler-pencil"></span>Sea forth fill have divide be dominion from life for feven
                     </li>
                  </ul>
                  <a href="#" class="btn_1">Read More</a>
               </div>
            </div>
         </div>
      </div>
      <img src="img/section_overlay.png" alt="">
   </section>
   <!--::team part end::-->

   <!--::passion_part end::-->
   <div class="passion_part">
      <div class="container">
         <div class="row">
            <div class="col-lg-5">
               <div class="section_tittle">
                  <h1>Our Passion is <br>
                     People What’s Yours?</h1>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6 col-lg-3">
               <div class="single_passion">
                  <div class="single_passion_item">
                     <a href="#" class="passion_icon"> <i class="flaticon-compass"></i> </a>
                     <h4>Creative Design</h4>
                     <p>Hac facilisi ac vitae consec tetu commod vel magna suspen disse on senectus
                        pharetra magnfauc bed</p>
                     <a href="#" class="btn_2">Read More <span class="ti-arrow-right"></span></a>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-3">
               <div class="single_passion">
                  <div class="single_passion_item">
                     <a href="#" class="passion_icon"> <i class="flaticon-desk"></i> </a>
                     <h4>Experience Style</h4>
                     <p>Hac facilisi ac vitae consec tetu commod vel magna suspen disse on senectus
                        pharetra magnfauc bed</p>
                     <a href="#" class="btn_2">Read More <span class="ti-arrow-right"></span></a>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-3">
               <div class="single_passion">
                  <div class="single_passion_item">
                     <a href="#" class="passion_icon"> <i class="flaticon-bathroom"></i> </a>
                     <h4>Product Research</h4>
                     <p>Hac facilisi ac vitae consec tetu commod vel magna suspen disse on senectus
                        pharetra magnfauc bed</p>
                     <a href="#" class="btn_2">Read More <span class="ti-arrow-right"></span></a>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-3">
               <div class="single_passion">
                  <div class="single_passion_item">
                     <a href="#" class="passion_icon"> <i class="flaticon-beach"></i> </a>
                     <h4>Affordable Price</h4>
                     <p>Hac facilisi ac vitae consec tetu commod vel magna suspen disse on senectus
                        pharetra magnfauc bed</p>
                     <a href="#" class="btn_2">Read More <span class="ti-arrow-right"></span></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--::passion_part end::-->

   <!--::apartment_part end::-->
   <div class="apartment_part">
      <div class="container">
         <div class="row justify-content-between align-content-center">
            <div class="col-md-8 col-lg-7">
               <div class="section_tittle">
                  <h1>Provide The <br>
                     Beautiful Apartment</h1>
               </div>
            </div>
            <div class="col-md-4 col-lg-5">
               <div class="view_more_btn float-right d-none d-md-block">
                  <a href="#" class="btn_2">Read More <span class="ti-arrow-right"></span></a>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4 col-lg-4">
               <div class="single_appartment_part">
                  <div class="appartment_img">
                     <img src="img/appertment_1.png" alt="">
                     <div class="single_appartment_text">
                        <h3>$1,235632</h3>
                        <p><span class="ti-location-pin"></span> 384 Treeline Park, San Antonio, TX</p>
                     </div>
                  </div>
                  <div class="single_appartment_content">
                     <a href="" class="love_us"> <span class="ti-heart"></span> </a>
                     <p>Home, Apartment</p>
                     <a href="#">
                        <h4>Detached House For Sale</h4>
                     </a>
                     <ul class="list-unstyled">
                        <li><a href=""><span class="flaticon-bath"></span></a> 04</li>
                        <li><a href=""><span class="flaticon-bed"></span></a> 03</li>
                        <li><a href=""><span class="flaticon-frame"></span></a> 2400 sqft</li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-md-4 col-lg-4">
               <div class="single_appartment_part">
                  <div class="appartment_img">
                     <img src="img/appertment_2.png" alt="">
                     <div class="single_appartment_text">
                        <h3>$1,235632</h3>
                        <p><span class="ti-location-pin"></span> 384 Treeline Park, San Antonio, TX</p>
                     </div>
                  </div>
                  <div class="single_appartment_content">
                     <a href="" class="love_us"> <span class="ti-heart"></span> </a>
                     <p>Home, Apartment</p>
                     <a href="#">
                        <h4>Detached House For Sale</h4>
                     </a>
                     <ul class="list-unstyled">
                        <li><a href=""><span class="flaticon-bath"></span></a> 04</li>
                        <li><a href=""><span class="flaticon-bed"></span></a> 03</li>
                        <li><a href=""><span class="flaticon-frame"></span></a> 2400 sqft</li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-md-4 col-lg-4">
               <div class="single_appartment_part">
                  <div class="appartment_img">
                     <img src="img/appertment_3.png" alt="">
                     <div class="single_appartment_text">
                        <h3>$1,235632</h3>
                        <p><span class="ti-location-pin"></span> 384 Treeline Park, San Antonio, TX</p>
                     </div>
                  </div>
                  <div class="single_appartment_content">
                     <a href="" class="love_us"> <span class="ti-heart"></span> </a>
                     <p>Home, Apartment</p>
                     <a href="#">
                        <h4>Detached House For Sale</h4>
                     </a>
                     <ul class="list-unstyled">
                        <li><a href=""><span class="flaticon-bath"></span></a> 04</li>
                        <li><a href=""><span class="flaticon-bed"></span></a> 03</li>
                        <li><a href=""><span class="flaticon-frame"></span></a> 2400 sqft</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--::apartment_part end::-->

   <!--::room_part end::-->
   <div class="room_part">
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-6 col-lg-6">
               <div class="room_1">
                  <img src="img/room_1.png" alt="">
                  <div class="room_text_1">
                     <h1>Beginning own <br> light divided male <br> is light</h1>
                     <a href="#" class="btn_2">Read More <span class="ti-arrow-right"></span></a>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-6">
               <div class="room_2">
                  <img src="img/room_2.png" alt="">
                  <div class="room_text_2">
                     <h1>Beginning own <br> light divided male <br> is light</h1>
                     <a href="#" class="btn_2">Read More <span class="ti-arrow-right"></span></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--::room_part end::-->

   <!--::review_part end::-->
   <div class="review_part" id="testimonial">
      <div class="container">
         <div class="row">
            <div class="col-sm-8 col-lg-7">
               <div class="section_tittle">
                  <h1>Our Happy Customer
                     Says About us</h1>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-12">
               <div class="review_part_text owl-carousel">
                  <div class="singler_eview_part">
                     <div class="client_info">
                        <img src="img/client_1.png" alt="">
                        <h4>Mouunt Alezaber</h4>
                        <p>Project manager</p>
                     </div>
                     <p><i>Enim a, scelerisque aliquet. Vivamus neque diam sed at, pede laoreet orci.
                           Potenti vel In sagittis nulla augue vitae et tempus torquent. Lacinia neque
                           mus taciti ante prsent at facilisis. Enim a, scelerisque aliquet. Vivamus
                           neque diam sed at, pede laoreet orci Potti, vel. In sagittis nulla augue
                           vitae et tempus torquent.</i></p>
                  </div>
                  <div class="singler_eview_part">
                     <div class="client_info">
                        <img src="img/client_2.png" alt="">
                        <h4>Mouunt Alezaber</h4>
                        <p>Project manager</p>
                     </div>
                     <p><i>Enim a, scelerisque aliquet. Vivamus neque diam sed at, pede laoreet orci.
                           Potenti vel In sagittis nulla augue vitae et tempus torquent. Lacinia neque
                           mus taciti ante prsent at facilisis. Enim a, scelerisque aliquet. Vivamus
                           neque diam sed at, pede laoreet orci Potti, vel. In sagittis nulla augue
                           vitae et tempus torquent.</i></p>
                  </div>
                  <div class="singler_eview_part">
                     <div class="client_info">
                        <img src="img/client_1.png" alt="">
                        <h4>Mouunt Alezaber</h4>
                        <p>Project manager</p>
                     </div>
                     <p><i>Enim a, scelerisque aliquet. Vivamus neque diam sed at, pede laoreet orci.
                           Potenti vel In sagittis nulla augue vitae et tempus torquent. Lacinia neque
                           mus taciti ante prsent at facilisis. Enim a, scelerisque aliquet. Vivamus
                           neque diam sed at, pede laoreet orci Potti, vel. In sagittis nulla augue
                           vitae et tempus torquent.</i></p>
                  </div>
                  <div class="singler_eview_part">
                     <div class="client_info">
                        <img src="img/client_2.png" alt="">
                        <h4>Mouunt Alezaber</h4>
                        <p>Project manager</p>
                     </div>
                     <p><i>Enim a, scelerisque aliquet. Vivamus neque diam sed at, pede laoreet orci.
                           Potenti vel In sagittis nulla augue vitae et tempus torquent. Lacinia neque
                           mus taciti ante prsent at facilisis. Enim a, scelerisque aliquet. Vivamus
                           neque diam sed at, pede laoreet orci Potti, vel. In sagittis nulla augue
                           vitae et tempus torquent.</i></p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--::review_part end::-->

   <!--::cta_part start::-->
   <div class="cta_part">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-lg-6">
               <div class="cta_iner">
                  <h1>Are You Ready For Move? </h1>
                  <p>Lights had saw moving saw female blessed</p>
                  <a href="#" class="cta_btn">Sing Up</a>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--::cta_part end::-->

   <!--::blog_part start::-->
   <div class="blog_part">
      <div class="container">
         <div class="row">
            <div class="col-sm-8 col-lg-5">
               <div class="section_tittle">
                  <h1>Read Latest
                     News From Our Blog</h1>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6 col-lg-7">
               <div class="single_blog">
                  <div class="appartment_img">
                     <img src="img/blog_1.png" alt="">
                  </div>
                  <div class="single_appartment_content">
                     <p><a href="#">Apartment</a> / March 20, 2019</p>
                     <a href="blog.html">
                        <h4>Doee lights without darkness that said
                           good deep years very.</h4>
                     </a>
                     <ul class="list-unstyled">
                        <li><a href=""> <span class="ti-comment"></span> </a> 2 comment</li>
                        <li><a href=""> <span class="ti-heart"></span> </a> 0 like</li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-md-6 col-lg-5">
               <div class="right_single_blog">
                  <div class="single_blog">
                     <div class="media">
                        <img src="img/blog_2.png" class=" mr-3" alt="...">
                        <div class="media-body align-self-center">
                           <p><a href="#">home</a></p>
                           <a href="blog.html">
                              <h5 class="mt-0">Green very from for rule stars seasons</h5>
                           </a>
                           <ul class="list-unstyled">
                              <li><a href=""> <span class="ti-time"></span> </a> Mar 12</li>
                              <li><a href=""> <span class="ti-heart"></span> </a> 0 like</li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="single_blog">
                     <div class="media">
                        <img src="img/blog_3.png" class="mr-3" alt="...">
                        <div class="media-body align-self-center">
                           <p><a href="#">Apartment</a></p>
                           <a href="blog.html">
                              <h5 class="mt-0">Moveth wherein subdue of brought</h5>
                           </a>
                           <ul class="list-unstyled">
                              <li><a href=""> <span class="ti-time"></span> </a> Mar 12</li>
                              <li><a href=""> <span class="ti-heart"></span> </a> 0 like</li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="single_blog">
                     <div class="media">
                        <img src="img/blog_4.png" class="mr-3" alt="...">
                        <div class="media-body align-self-center">
                           <p><a href="blog.html">Apartment</a></p>
                           <a href="">
                              <h5 class="mt-0">Firmament heaven cant him night rule</h5>
                           </a>
                           <ul class="list-unstyled">
                              <li><a href=""> <span class="ti-time"></span> </a> Mar 12</li>
                              <li><a href=""> <span class="ti-heart"></span> </a> 0 like</li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--::blog_part end::-->

   <!--::footer_part start::-->
   <footer class="footer_part">
      <div class="container">
         <div class="row">
            <div class="col-sm-6 col-lg-3">
               <div class="single_footer_part">
                  <h4>About Us</h4>
                  <p>Heaven fruitful doesn't over lesser days appear creeping seasons so behold bearing days open</p>
                  <a href="index.jsp" class="footer_logo"> <img src="img/footer_logo.png" alt="#"> </a>
               </div>
            </div>
            <div class="col-sm-6 col-lg-3">
               <div class="single_footer_part">
                  <h4>Contact Info</h4>
                  <p>Address :Your address goes
                     here, your demo address.</p>
                  <p>Phone : +8880 44338899</p>
                  <p>Email : info@colorlib.com</p>
               </div>
            </div>
            <div class="col-sm-6 col-lg-3">
               <div class="single_footer_part">
                  <h4>Important Link</h4>
                  <ul class="list-unstyled">
                     <li><a href=""> WHMCS-bridge</a></li>
                     <li><a href="">Search Domain</a></li>
                     <li><a href="">My Account</a></li>
                     <li><a href="">Shopping Cart</a></li>
                     <li><a href="">Our Shop</a> Our Shop</li>
                  </ul>
               </div>
            </div>
            <div class="col-sm-6 col-lg-3">
               <div class="single_footer_part">
                  <h4>Newsletter</h4>
                  <p>Heaven fruitful doesn't over lesser in days. Appear creeping seasons deve behold bearing days open
                  </p>
                  <div class="mail_part">
                     <input type="text" placeholder="Email Address" class="placeholder hide-on-focus">
                     <a href="" class="email_icon"><i class="far fa-paper-plane"></i></a>
                  </div>
               </div>
            </div>
         </div>
         <hr>
         <div class="row">
            <div class="col-sm-6 col-lg-6">
               <div class="copyright_text">
                  <P><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
               </div>
            </div>
            <div class="col-sm-6 col-lg-6">
               <div class="footer_icon">
                  <ul class="list-unstyled">
                     <li><a href="#" class="single_social_icon"><i class="fab fa-facebook-f"></i></a></li>
                     <li><a href="#" class="single_social_icon"><i class="fab fa-twitter"></i></a></li>
                     <li><a href="#" class="single_social_icon"><i class="fas fa-globe"></i></a></li>
                     <li><a href="#" class="single_social_icon"><i class="fab fa-behance"></i></a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <!--::footer_part end::-->
   <!-- jquery plugins here-->
   <!-- jquery -->
   <script src="js/jquery-1.12.1.min.js"></script>
   <!-- popper js -->
   <script src="js/popper.min.js"></script>
   <!-- bootstrap js -->
   <script src="js/bootstrap.min.js"></script>
   <!-- easing js -->
   <script src="js/jquery.magnific-popup.js"></script>
   <!-- particles js -->
   <script src="js/owl.carousel.min.js"></script>
   <!-- easing js -->
   <script src="js/jquery.easing.min.js"></script>
   <!-- custom js -->
   <script src="js/custom.js"></script>
</body>

</html>