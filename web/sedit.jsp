<%-- 
    Document   : sedit
    Created on : 27 Jun, 2019, 8:36:02 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Real_state || Supplier</title>
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
           
         %>
   <!--::menu part start::-->
   <header class="main_menu">
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
									<a class="nav-link" href="index.jsp">Home<span class="sr-only">(current)</span></a>
								</li>
								
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Master
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="customer.jsp">Customer</a>
										<a class="dropdown-item" href="supplier.jsp">Supplier</a>
                                                                                 <a class="dropdown-item" href="product.jsp">Product</a>
                                                                                <a class="dropdown-item" href="rawmaterial.jsp">Raw Material</a>
									</div>
								</li>
							</ul>
						<li class="nav-item active">
									<a class="nav-link" href="productlist.jsp">Purchase Order</a>
								</li>
                                                                
							</ul>
						</div>
						<div class="btn_1 d-none d-lg-block">
							<a href="logout.jsp" class="float-right">Logout</a>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
 <!--::menu part end::-->

  <!-- ================  breadcrumb part start ================  -->
  <section class="breadcrumb blog_bg">
      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <div class="breadcrumb_iner">
                      <div class="breadcrumb_iner_item">
                          <h2>Supplier</h2>
                          <p>Home<span class="ti-angle-double-right"></span>Supplier</p>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!-- ================ breadcrumb part start ================ -->

  <!-- ================ contact section start ================= -->
  <section class="contact-section area-padding">
    <div class="container">
      <div class="d-none d-sm-block mb-5 pb-4">
        
      </div>
        <div class="row">
        <div class="col-12">
          <h2 class="contact-title">Supplier Form</h2>
        </div>
                <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st=con.createStatement();
                
                int sid=Integer.parseInt(request.getParameter("t"));
                
               ResultSet rs=st.executeQuery("select * from tblsupplier where supplierId="+sid+"");
               if(rs.next())
                {%>
         
            
            <form class="form-contact contact_form" action="" method="post" id="customerForm" novalidate="novalidate">
            <div class="row">
              
              <div class="col-sm-6">
                <div class="form-group">
                    <input type="text" class="form-control placeholder hide-on-focus" placeholder="Enter your supplier name" pattern="[A-Za-z\ \]+" value="<%out.print(rs.getString(2));%>" title="Please enter charaters only" name="sname" required/>
                </div>
              </div>
                
                <div class="col-sm-6">
                <div class="form-group">
                    <input type="text" class="form-control placeholder hide-on-focus" placeholder="Enter Contact Person's Name" pattern="[A-Za-z\ \]+" value="<%out.print(rs.getString(3));%>" title="Please enter charaters only" name="cperson" required/>
                   
                </div>
              </div>
                
              <div class="col-sm-6">
                <div class="form-group">
                 <input class="form-control placeholder hide-on-focus" placeholder="Landline Number" value="<%out.print(rs.getString(4));%>" type="text" name="lnumber" required/>
                </div>
              </div>
                
              <div class="col-sm-6">
                <div class="form-group">
                  <input type="text" class="form-control placeholder hide-on-focus" placeholder="Mobile Number" value="<%out.print(rs.getString(5));%>" pattern="[6,7,8,9][0-9]{9}" title="Enter valid mobile number" name="mnumber" required/>
                </div>
              </div>
                
                <div class="col-12">
                <div class="form-group">
                    <textarea class="form-control w-100 placeholder hide-on-focus"  name="addr" id="message" cols="30" rows="9" placeholder="Address"><%out.print(rs.getString(6));%></textarea>
                </div>
              </div>
                
              <div class="col-sm-6">
                <div class="form-group">
                  <input type="text" class="form-control placeholder hide-on-focus" placeholder="GST Number" value="<%out.print(rs.getString(7));%>" pattern="[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z][0-9][A-Z]{3}" title="Enter valid GST number" name="gst" required/>
                </div>
              </div>  
                
              <div class="col-sm-6">
                <div class="form-group">
                  <input type="text" class="form-control placeholder hide-on-focus" placeholder="Fax Number(optional)"  value="<%out.print(rs.getString(8));%>" title="Enter valid fax number" name="fnumber"/><br/><br/>
                </div>
              </div>
                
            </div>
              
            <div class="form-group mt-3">
              <button type="submit" class="button button-contactForm">Update Record</button>
            </div>
          </form>
                <%}

            if(request.getParameter("sname")!=null)
            {
               String sname=request.getParameter("sname");
                String cperson=request.getParameter("cperson");
                String lnumber=request.getParameter("lnumber");
                String mnumber=request.getParameter("mnumber");
                String addr=request.getParameter("addr");
                String gst=request.getParameter("gst");
                String fnumber=request.getParameter("fnumber");
                

                int i=st.executeUpdate("update tblsupplier set supplierName='"+sname+"',contactPerson='"+cperson+"',landlineNumber='"+lnumber+"',mobileNumber='"+mnumber+"',address='"+addr+"',gstNumber='"+gst+"',faxNumber='"+fnumber+"' where supplierId="+sid+"");
                if(i>0)
                {
                    response.sendRedirect("sdisplay.jsp");
                }
                else
                {
                    out.print("Error in updation");
                }
             }
            }
             catch(Exception e)
             {
                out.print(e);
             }
            %>
            
            
        <div class="col-lg-4">
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-home"></i></span>
            <div class="media-body">
              <h3><a href="">Belgaum</a></h3>
              <p>Rosemead, CA 91770</p>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
            <div class="media-body">
              <h3><a href="tel:454545654">9480398618</a></h3>
              <p>Mon to Fri 9am to 6pm</p>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-email"></i></span>
            <div class="media-body">
              <h3><a href="mailto:anknarvekar98@gmail.com">anknarvekar98@gmail.com</a></h3>
              <p>Send us your query anytime!</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ================ contact section end ================= -->

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
                <p>Email : anknarvekar98@gmail.com</p>
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
                <p>Heaven fruitful doesn't over lesser in days. Appear creeping seasons deve behold bearing days open</p>
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

<!-- ==================jquery plugins here ===================== -->
<!-- jquery -->
<script src="js/jquery-1.12.1.min.js"></script>
<!-- popper js -->
<script src="js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="js/bootstrap.min.js"></script>
<!-- easing js -->
<script src="js/jquery.easing.min.js"></script>
<!-- particles js -->
<script src="js/contact.js"></script>
<!-- carousel js -->
<script src="js/gmaps.min.js"></script>
<!-- easing js -->
<script src="js/jquery.ajaxchimp.min.js"></script>
<!-- particles js -->
<script src="js/jquery.form.js"></script>
<!-- magnific-popup js -->
<script src="js/jquery.magnific-popup.js"></script>
<!-- particles js -->
<script src="js/jquery.validate.min.js"></script>
<!-- carousel js -->
<script src="js/mail-script.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
    </body>
</html>

