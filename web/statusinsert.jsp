<%-- 
    Document   : statusinsert
    Created on : 19 Jul, 2019, 8:52:55 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
            if(session.getAttribute("id")==null)
            {
                response.sendRedirect("indexfirst.jsp");
            }
           
         %>
    <body>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st=con.createStatement();
                
                int ordernumber1=Integer.parseInt(request.getParameter("ordernumber1"));
                int invoicenumber=Integer.parseInt(request.getParameter("invoicenumber"));
                String invoicedate=request.getParameter("invoicedate");
               
                
                int i=st.executeUpdate("insert into tblreceivedmaterial(orderNumber,invoiceNumber,invoiceDate) values("+ordernumber1+","+invoicenumber+",'"+invoicedate+"')");
                if(i>0)
                {
                    response.sendRedirect("status.jsp");
                }
                else
                {
                    response.sendRedirect("status.jsp?l=2");
                }
            }
            
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
