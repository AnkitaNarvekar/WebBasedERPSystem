package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class status_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if(session.getAttribute("id")==null)
            {
                response.sendRedirect("indexfirst.jsp");
            }
           
         
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <form name=\"form\" method=\"post\" action=\"\">\n");
      out.write("        \n");
      out.write("                Order Number:<input type=\"number\" name=\"ordernumber\"/><br/><br/>\n");
      out.write("                \n");
      out.write("                <input type=\"submit\" value=\"Submit\"/><br/><br/>\n");
      out.write("            \n");
      out.write("            </form> \n");
      out.write("        <table border=\"1px\" style=\"width:60%\">\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <th>Order Number</th>\n");
      out.write("                <th>Product</th>\n");
      out.write("                <th>Tax Percentage</th>\n");
      out.write("                <th>Quantity</th>\n");
      out.write("                <th>Received</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

            try
            {
              
               if(request.getParameter("ordernumber")!=null){
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
              Statement st=con.createStatement();
              
              Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
              Statement st1=con1.createStatement();
              
             
              int ordernumber=Integer.parseInt(request.getParameter("ordernumber"));
              
              
              ResultSet rs=st.executeQuery("select * from tblpurchase where userName='"+session.getAttribute("id")+"'");
              if(rs.next()){
              ResultSet rs1=st1.executeQuery("select * from tblpurchaselist where orderNumber="+ordernumber+"");
              while(rs1.next())
              {
      out.write("\n");
      out.write("              <tr>\n");
      out.write("                    <td>");
out.print(rs1.getString(1));
      out.write("</td>\n");
      out.write("                    <td>");
out.print(rs1.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
out.print(rs1.getString(5));
      out.write("</td>\n");
      out.write("                    <td>");
out.print(rs1.getString(3));
      out.write("</td>\n");
      out.write("                    <td><a href=\"receive.jsp?u=");
 out.print(rs1.getString(1)); 
      out.write("&q=");
 out.print(rs1.getString(2)); 
      out.write("\">Receive</a></td>\n");
      out.write("              </tr>\n");
      out.write("               ");
}
            }}}
        
            catch(Exception e)
            {
                out.print(e);
             }
       
      out.write("\n");
      out.write("       ");

            if(request.getParameter("x")!=null)
            {
               
                     Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                     Statement st2=con2.createStatement();
              
                    
                    ResultSet rs2=st2.executeQuery("select * from tblpurchaselist where Received='No' and orderNumber="+request.getParameter("x")+"");
                    while(rs2.next())
                    {
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                    <td>");
out.print(rs2.getString(1));
      out.write("</td>\n");
      out.write("                    <td>");
out.print(rs2.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
out.print(rs2.getString(5));
      out.write("</td>\n");
      out.write("                    <td>");
out.print(rs2.getString(3));
      out.write("</td>\n");
      out.write("                    <td><a href=\"receive.jsp?u=");
 out.print(rs2.getString(1)); 
      out.write("&q=");
 out.print(rs2.getString(2)); 
      out.write("\">Receive</a></td>\n");
      out.write("                    </tr>\n");
      out.write("               ");
}
                }
                
                else if(request.getParameter("x").equals("2"))
                {
                    out.print("Error in insertion!!");
                }
            
        
      out.write(" \n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("    </center>\n");
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
