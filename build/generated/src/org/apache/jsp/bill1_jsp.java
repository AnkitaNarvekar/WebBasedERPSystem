package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.*;

public final class bill1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Bill</title>\n");
      out.write("    </head>\n");
      out.write("    ");

        Date today=new Date();
        SimpleDateFormat DATE_FORMAT=new SimpleDateFormat("dd-MM-yyyy");
        String ddMMyyyyToday=DATE_FORMAT.format(today);
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("         ");

            if(session.getAttribute("id")==null)
            {
                response.sendRedirect("indexfirst.jsp");
            }
           
         
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <table border=\"1px\" style=\"width:60%\">\n");
      out.write("            ");

                  double grandTotal=0.0;
                  double total=0.0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st=con.createStatement();
                
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st1=con1.createStatement();
                
                Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st2=con2.createStatement();
                
                Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st3=con3.createStatement();
                
                Connection con4=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st4=con4.createStatement();
            
                
                    ResultSet rs1=st1.executeQuery("select * from tblpurchase where userName='"+session.getAttribute("id")+"'");
                    rs1.next();
                    
                    ResultSet rs2=st2.executeQuery("select * from tblsupplier where supplierName='"+rs1.getString(2)+"'");
                    rs2.next();
                    
                    ResultSet rs3=st3.executeQuery("select * from tblpurchaselist where orderNumber='"+rs1.getString(1)+"'");
                    rs3.next();
                   
      out.write("\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"6\"><h1>Purchase Order</h1></td> \n");
      out.write("                    </tr> \n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"3\">Supplier: ");
out.print(rs1.getString(2));
      out.write("<br/><br/>Address: ");
out.print(rs2.getString(6));
      out.write("<br/><br/>GST: ");
out.print(rs2.getString(7));
      out.write("</td>  \n");
      out.write("                        <td colspan=\"3\">Invoice Number:");
out.print(rs1.getString(1));
      out.write(" <br/><br/>Invoice Date:");
      out.print(ddMMyyyyToday);
      out.write("<br/><br/>Target Date: ");
out.print(rs1.getString(3));
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <th>SL No</th>\n");
      out.write("                        \n");
      out.write("                        <th>Particulars</th>\n");
      out.write("                           \n");
      out.write("                        <th>Rate</th>\n");
      out.write("                            \n");
      out.write("                        <th>Quantity</th>\n");
      out.write("                         \n");
      out.write("                        <th>Tax %</th>\n");
      out.write("                         \n");
      out.write("                        <th>Amount</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
 while(rs3.next())
                    {
      out.write("<tr>\n");
      out.write("                             ");

                                 double taxAmount=((rs3.getInt(3))*(rs3.getInt(4)))*(rs3.getInt(5))/100;
                                 
                                 total=(rs3.getInt(3))*(rs3.getInt(4))+taxAmount;
                                 
                                 
                                 grandTotal=grandTotal+total;
                             
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                           \n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
out.print(1);
      out.write("</td>\n");
      out.write("                        <td>");
out.print(rs3.getString(2));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(rs3.getString(4));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(rs3.getString(3));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(rs3.getString(5));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(total);
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
 }
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <th colspan=\"5\">Grand Total</th>\n");
      out.write("                        <td><b>");
out.print(grandTotal);
      out.write("</b></td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                 \n");
      out.write("              \n");
      out.write("        \n");
      out.write("        </table>\n");
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
