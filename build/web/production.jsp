<%-- 
    Document   : production
    Created on : 23 Jul, 2019, 6:54:23 PM
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
    <title>Real_state || Production</title>
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
                                                                
                                                                <li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										PRODUCTION
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                                 <a class="dropdown-item" href="stockintake.jsp">Stock Intake</a>
                                                                                <a class="dropdown-item" href="production.jsp">Production</a>
                                                                                
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
     <center>    
    <section class="contact-section area-padding">
    <div class="container">
      <div class="d-none d-sm-block mb-5 pb-4">
        
      </div>

      <div class="row">
        <div class="col-lg-8">
        
        <form class="form-contact contact_form" method="post" name="form" action="" novalidate="novalidate">
          <div class="row">
              <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                  Statement st=con.createStatement();
                  
                String name=request.getParameter("pname");
                
                ResultSet rs=st.executeQuery("select * from tblproduct1");
              %>
              
              <div class="col-sm-8">
                <div class="form-group">
                 <input class="form-control placeholder hide-on-focus" placeholder="Date" type="date" name="date" required/>
                </div>
              </div>
              
              <div class="col-sm-8">
                <div class="form-group">
                    <select name="pname" class="form-control">
                        <%while(rs.next())
                        {%>
                        <option><%out.print(rs.getString(2));%></option>
                        <%}%>
                    </select>
                </div>
              </div>
              
              <div class="col-sm-8">
                <div class="form-group">
                 <input class="form-control placeholder hide-on-focus" placeholder="Supervisior Name" type="text" name="supervisior" required/>
                </div>
              </div>
                    
                <div class="col-sm-8">
                <div class="form-group">
                 <input class="form-control placeholder hide-on-focus" placeholder="Machine Number" type="number" name="mnumber" required/>
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
        </div>
      </div>
        </section>
    </center>
   

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


