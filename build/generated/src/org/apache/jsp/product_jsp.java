package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <title>Real_state || Product</title>\n");
      out.write("    <link rel=\"icon\" href=\"img/favicon.png\">\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <!-- animate CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("    <!-- owl carousel CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("    <!-- themify CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\n");
      out.write("    <!-- flaticon CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/flaticon.css\">\n");
      out.write("    <!-- font awesome CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome/css/all.min.css\">\n");
      out.write("    <!-- style CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("   <!--::menu part start::-->\n");
      out.write("   <header class=\"main_menu\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-12\">\n");
      out.write("\t\t\t\t\t<nav class=\"navbar navbar-expand-lg navbar-light\">\n");
      out.write("\t\t\t\t\t\t<a class=\"navbar-brand\" href=\"index.jsp\"> <img src=\"img/logo.png\" alt=\"logo\"> </a>\n");
      out.write("\t\t\t\t\t\t<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\"\n");
      out.write("\t\t\t\t\t\t\taria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"navbar-toggler-icon\"></span>\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t\t<div class=\"collapse navbar-collapse main-menu-item\" id=\"navbarNav\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"navbar-nav\">\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"nav-item active\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"index.jsp\">Home<span class=\"sr-only\">(current)</span></a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"nav-item dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\"\n");
      out.write("\t\t\t\t\t\t\t\t\t\tdata-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\tMaster\n");
      out.write("\t\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"customer.jsp\">Customer</a>\n");
      out.write("                                                                                <a class=\"dropdown-item\" href=\"product.jsp\">Product</a>\n");
      out.write("                                                                                <a class=\"dropdown-item\" href=\"rawmaterial.jsp\">Raw Material</a>\n");
      out.write("                                                                                <a class=\"dropdown-item\" href=\"supplier.jsp\">Supplier</a>\n");
      out.write("                                                                                <a class=\"dropdown-item\" href=\"users.jsp\">Users</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("                                                                \n");
      out.write("                                                                 <li class=\"nav-item active\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"productlist.jsp\">Purchase Order</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("                                                                \n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"btn_1 d-none d-lg-block\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"indexfirst.jsp\" class=\"float-right\">Logout</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                               \n");
      out.write("\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</header>\n");
      out.write(" <!--::menu part end::-->\n");
      out.write("\n");
      out.write("  <!-- ================  breadcrumb part start ================  -->\n");
      out.write("  <section class=\"breadcrumb blog_bg\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("              <div class=\"col-lg-12\">\n");
      out.write("                  <div class=\"breadcrumb_iner\">\n");
      out.write("                      <div class=\"breadcrumb_iner_item\">\n");
      out.write("                          <h2>Product</h2>\n");
      out.write("                          <p>Home<span class=\"ti-angle-double-right\"></span>Product</p>\n");
      out.write("                      </div>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("  </section>\n");
      out.write("  <!-- ================ breadcrumb part start ================ -->\n");
      out.write("\n");
      out.write("  <!-- ================ contact section start ================= -->\n");
      out.write("  <section class=\"contact-section area-padding\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"d-none d-sm-block mb-5 pb-4\">\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-12\">\n");
      out.write("          <h2 class=\"contact-title\">Product Form</h2>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-8\">\n");
      out.write("          <form class=\"form-contact contact_form\" action=\"pinsert.jsp\" method=\"post\" id=\"customerForm\" novalidate=\"novalidate\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("              \n");
      out.write("              <div class=\"col-sm-6\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input type=\"text\" class=\"form-control placeholder hide-on-focus\" placeholder=\"Product name\" pattern=\"[A-Za-z\\ \\]+\" title=\"Please enter charaters only\" name=\"pname\" required/>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                \n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <textarea class=\"form-control w-100 placeholder hide-on-focus\" name=\"description\" id=\"message\" cols=\"30\" rows=\"9\" placeholder=\"description\"></textarea>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                \n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                 <input class=\"form-control placeholder hide-on-focus\" placeholder=\"Units(numbers/litres)\" type=\"text\" name=\"units\" required/>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                \n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input type=\"text\" class=\"form-control placeholder hide-on-focus\" placeholder=\"Tax Percentage\" pattern=\"[0-9\\.\\]\" title=\"Enter valid tax percenatge\" name=\"taxp\" required/>\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                \n");
      out.write("              \n");
      out.write("                \n");
      out.write("              <div class=\"col-sm-6\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <input type=\"text\" class=\"form-control placeholder hide-on-focus\" placeholder=\"Price\"  pattern=\"[0-9\\.\\]\" title=\"Enter valid price\" name=\"price\" required/>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("            <div class=\"form-group mt-3\">\n");
      out.write("              <button type=\"submit\" class=\"button button-contactForm\">Submit</button>\n");
      out.write("            </div>\n");
      out.write("               \n");
      out.write("          </form>\n");
      out.write("            <div><a href=\"pdisplay.jsp\">View Records</a><br/><br/></div>\n");
      out.write("            ");

            if(request.getParameter("g")!=null)
            {
                if(request.getParameter("g").equals("1"))
                {
                    out.print("Inserted Successfully!!");
                }
                
                else if(request.getParameter("g").equals("2"))
                {
                    out.print("Error in insertion!!");
                }
            }
        
      out.write("\n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("        <div class=\"col-lg-4\">\n");
      out.write("          <div class=\"media contact-info\">\n");
      out.write("            <span class=\"contact-info__icon\"><i class=\"ti-home\"></i></span>\n");
      out.write("            <div class=\"media-body\">\n");
      out.write("              <h3><a href=\"\">Belgaum</a></h3>\n");
      out.write("              <p>Rosemead, CA 91770</p>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"media contact-info\">\n");
      out.write("            <span class=\"contact-info__icon\"><i class=\"ti-tablet\"></i></span>\n");
      out.write("            <div class=\"media-body\">\n");
      out.write("              <h3><a href=\"tel:454545654\">9480398618</a></h3>\n");
      out.write("              <p>Mon to Fri 9am to 6pm</p>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"media contact-info\">\n");
      out.write("            <span class=\"contact-info__icon\"><i class=\"ti-email\"></i></span>\n");
      out.write("            <div class=\"media-body\">\n");
      out.write("              <h3><a href=\"mailto:anknarvekar98@gmail.com\">anknarvekar98@gmail.com</a></h3>\n");
      out.write("              <p>Send us your query anytime!</p>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("  <!-- ================ contact section end ================= -->\n");
      out.write("\n");
      out.write(" <!--::footer_part start::-->\n");
      out.write(" <footer class=\"footer_part\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("       <div class=\"row\">\n");
      out.write("          <div class=\"col-sm-6 col-lg-3\">\n");
      out.write("             <div class=\"single_footer_part\">\n");
      out.write("                <h4>About Us</h4>\n");
      out.write("                <p>Heaven fruitful doesn't over lesser days appear creeping seasons so behold bearing days open</p>\n");
      out.write("                <a href=\"index.jsp\" class=\"footer_logo\"> <img src=\"img/footer_logo.png\" alt=\"#\"> </a>\n");
      out.write("             </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-6 col-lg-3\">\n");
      out.write("             <div class=\"single_footer_part\">\n");
      out.write("                <h4>Contact Info</h4>\n");
      out.write("                <p>Address :Your address goes\n");
      out.write("                      here, your demo address.</p>\n");
      out.write("                <p>Phone : +8880 44338899</p>\n");
      out.write("                <p>Email : anknarvekar98@gmail.com</p>\n");
      out.write("             </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-6 col-lg-3\">\n");
      out.write("             <div class=\"single_footer_part\">\n");
      out.write("                <h4>Important Link</h4>\n");
      out.write("                <ul class=\"list-unstyled\">\n");
      out.write("                   <li><a href=\"\"> WHMCS-bridge</a></li>\n");
      out.write("                   <li><a href=\"\">Search Domain</a></li>\n");
      out.write("                   <li><a href=\"\">My Account</a></li>\n");
      out.write("                   <li><a href=\"\">Shopping Cart</a></li>\n");
      out.write("                   <li><a href=\"\">Our Shop</a> Our Shop</li>\n");
      out.write("                </ul>\n");
      out.write("             </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-6 col-lg-3\">\n");
      out.write("             <div class=\"single_footer_part\">\n");
      out.write("                <h4>Newsletter</h4>\n");
      out.write("                <p>Heaven fruitful doesn't over lesser in days. Appear creeping seasons deve behold bearing days open</p>\n");
      out.write("                <div class=\"mail_part\">\n");
      out.write("                   <input type=\"text\" placeholder=\"Email Address\" class=\"placeholder hide-on-focus\">\n");
      out.write("                   <a href=\"\" class=\"email_icon\"><i class=\"far fa-paper-plane\"></i></a>\n");
      out.write("                </div>\n");
      out.write("             </div>\n");
      out.write("          </div>\n");
      out.write("       </div>\n");
      out.write("       <hr>\n");
      out.write("       <div class=\"row\">\n");
      out.write("          <div class=\"col-sm-6 col-lg-6\">\n");
      out.write("             <div class=\"copyright_text\">\n");
      out.write("                <P><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>\n");
      out.write("             </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-6 col-lg-6\">\n");
      out.write("             <div class=\"footer_icon\">\n");
      out.write("                <ul class=\"list-unstyled\">\n");
      out.write("                   <li><a href=\"#\" class=\"single_social_icon\"><i class=\"fab fa-facebook-f\"></i></a></li>\n");
      out.write("                   <li><a href=\"#\" class=\"single_social_icon\"><i class=\"fab fa-twitter\"></i></a></li>\n");
      out.write("                   <li><a href=\"#\" class=\"single_social_icon\"><i class=\"fas fa-globe\"></i></a></li>\n");
      out.write("                   <li><a href=\"#\" class=\"single_social_icon\"><i class=\"fab fa-behance\"></i></a></li>\n");
      out.write("                </ul>\n");
      out.write("             </div>\n");
      out.write("          </div>\n");
      out.write("       </div>\n");
      out.write("    </div>\n");
      out.write(" </footer>\n");
      out.write(" <!--::footer_part end::-->\n");
      out.write("\n");
      out.write("<!-- ==================jquery plugins here ===================== -->\n");
      out.write("<!-- jquery -->\n");
      out.write("<script src=\"js/jquery-1.12.1.min.js\"></script>\n");
      out.write("<!-- popper js -->\n");
      out.write("<script src=\"js/popper.min.js\"></script>\n");
      out.write("<!-- bootstrap js -->\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("<!-- easing js -->\n");
      out.write("<script src=\"js/jquery.easing.min.js\"></script>\n");
      out.write("<!-- particles js -->\n");
      out.write("<script src=\"js/contact.js\"></script>\n");
      out.write("<!-- carousel js -->\n");
      out.write("<script src=\"js/gmaps.min.js\"></script>\n");
      out.write("<!-- easing js -->\n");
      out.write("<script src=\"js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("<!-- particles js -->\n");
      out.write("<script src=\"js/jquery.form.js\"></script>\n");
      out.write("<!-- magnific-popup js -->\n");
      out.write("<script src=\"js/jquery.magnific-popup.js\"></script>\n");
      out.write("<!-- particles js -->\n");
      out.write("<script src=\"js/jquery.validate.min.js\"></script>\n");
      out.write("<!-- carousel js -->\n");
      out.write("<script src=\"js/mail-script.js\"></script>\n");
      out.write("<!-- custom js -->\n");
      out.write("<script src=\"js/custom.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
