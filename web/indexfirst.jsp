<%-- 
    Document   : indexfirst
    Created on : 2 Jul, 2019, 10:31:30 AM
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Real_state || Login</title>
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
					  
					</nav>
				</div>
			</div>
		</div>
	</header>
 
         <form class="form-contact contact_form" action="login.jsp" method="post" id="customerForm" novalidate="novalidate">
             
            <div class="row">
               
              <div class="col-sm-8">
                <div class="form-group">
                    <input type="text" class="form-control placeholder hide-on-focus" placeholder="UserName" name="user" required/>
                    
                </div>
              </div>
                
                <div class="col-sm-8">
                <div class="form-group">
                    <input type="password" class="form-control placeholder hide-on-focus" placeholder="Password" name="pass" required/>
                </div>
              </div>
            </div>    
                <div class="form-group mt-3">
              <button type="submit" class="button button-contactForm">Login</button>
            </div>
               
       
        </form>

        <%
            if(request.getParameter("m")!=null)
            {
                out.print("Invalid username or password");
            }
            %>
    </body>
</html>
