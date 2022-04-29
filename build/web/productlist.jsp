<%-- 
    Document   : product
    Created on : 02 Jul, 2019, 8:30:56 PM
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
    <title>Real_state || Product List</title>
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
   
  
   
    <section class="contact-section area-padding">
    <div class="container">
      <div class="d-none d-sm-block mb-5 pb-4">
        
      </div>

      
      <div class="row">
        <div class="col-12">
          <h2 class="contact-title">Purchase List Form</h2>
        </div>
        <div class="col-lg-8">
          <form class="form-contact contact_form" action="purchaseinsert.jsp" method="post" name="form" novalidate="novalidate" onsubmit="javascript:return onsubmitform();">
            <div class="row">
              
                 <%
           
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st=con.createStatement();
                
                
                String fullname=request.getParameter("rname");
               
                
                ResultSet rs=st.executeQuery("select * from tblrawmaterial");
                 %><div class="col-sm-8">
                    <div class="form-group">
                    <select name="rname"  class="form-control">
               <% while(rs.next())
                {%>
                    
                            <option><%out.print(rs.getString("rawmaterialName"));%></option>
                            <%}%>
                    </select>
                     </div>
              </div>
               
                
                
               
                
                <div class="col-sm-8">
                <div class="form-group">
                 <input class="form-control placeholder hide-on-focus" placeholder="Quantity" type="number" name="quantity" required/>
                </div>
              </div>
            </div>    
                
                
            <div class="form-group mt-3">
              <button type="submit" name="add" class="button button-contactForm">Add</button>
            </div>
               
          </form>
          <table class="table">
            <tr>
               
                <td><b>Raw Material Name</b></td>
                <td><b>Quantity</b></td>
                <td><b>Rate</b></td>
                <td><b>Tax Percentage</b></td>
                <td><b>Total</b></td>
                
            </tr>
        <%
                 Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                 Statement st1=con1.createStatement();
                 double grandTotal=0.0;
                 

                ResultSet rs1=st1.executeQuery("select * from tbltemporary where userName='"+session.getAttribute("id")+"'");
                
//                if(rs1.next())
//                {
//                     out.print("<b>UserName: </b>"+rs1.getString(3));
//                     out.print("<br/>");
//                     out.print("<br/>");
//                     rs1.beforeFirst();
//                }
                
                while(rs1.next())
                {%>
               
                    <tr>
                      <td><%out.print(rs1.getString(1));%></td>
                     <td><%out.print(rs1.getString(2));%></td>
                    
                
                     <%
                         Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                         Statement st2=con2.createStatement();
                         ResultSet rs2=st2.executeQuery("select * from tblrawmaterial where rawmaterialName='"+rs1.getString(1)+"'");
                         
                         rs2.next();
                        {%>
               
                             
                             <td><%out.print(rs2.getString(7));%></td>
                             <td><%out.print(rs2.getString(5));%></td>
                             <%
                                 float taxAmount=((rs2.getInt(7))*(rs1.getInt(2)))*(rs2.getInt(5))/100;
                                 
                                 float total=(rs2.getInt(7))*(rs1.getInt(2))+taxAmount;
                                 out.print("<td>"+total+"</td>");
                                 
                                 grandTotal=grandTotal+total;
                             %>
                            </tr>
                           
                        <% }%>
                    
                <% }%>
            </table> 
            <%  
                               out.print("<b>Grand Total=</b>"+grandTotal+"");
                                
                           %>
            <form class="form-contact contact_form" action="orderinsert.jsp" method="post" name="form1" novalidate="novalidate" onsubmit="javascript:return onsubmitform();">
            <div class="row">
                <div class="col-sm-8">
                <div class="form-group">
                 <input class="form-control placeholder hide-on-focus" placeholder="Supplier" type="text" name="supplier" required/>
                </div>
              </div>
                
                <div class="col-sm-8">
                <div class="form-group">
                 <input class="form-control placeholder hide-on-focus" placeholder="Target Date" type="date" name="tdate" required/>
                </div>
              </div>
            </div>    
                
                
            <div class="form-group mt-3">
              <button type="submit" name="order" class="button button-contactForm">Order</button>
            </div>
              
          </form>
                
               
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

