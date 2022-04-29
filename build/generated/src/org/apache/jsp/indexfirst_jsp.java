package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class indexfirst_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <title>Real_state || Login</title>\n");
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
      out.write("\t\t\t\t\t  \n");
      out.write("\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</header>\n");
      out.write(" \n");
      out.write("         <form class=\"form-contact contact_form\" action=\"login.jsp\" method=\"post\" id=\"customerForm\" novalidate=\"novalidate\">\n");
      out.write("             \n");
      out.write("            <div class=\"row\">\n");
      out.write("               \n");
      out.write("              <div class=\"col-sm-8\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input type=\"text\" class=\"form-control placeholder hide-on-focus\" placeholder=\"UserName\" name=\"user\" required/>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                \n");
      out.write("                <div class=\"col-sm-8\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input type=\"password\" class=\"form-control placeholder hide-on-focus\" placeholder=\"Password\" name=\"pass\" required/>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>    \n");
      out.write("                <div class=\"form-group mt-3\">\n");
      out.write("              <button type=\"submit\" class=\"button button-contactForm\">Login</button>\n");
      out.write("            </div>\n");
      out.write("               \n");
      out.write("       \n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        ");

            if(request.getParameter("m")!=null)
            {
                out.print("Invalid username or password");
            }
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
