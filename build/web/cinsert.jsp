<%-- 
    Document   : next
    Created on : 15 Jun, 2019, 3:18:39 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertion</title>
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
                
 
                String cname=request.getParameter("cname");
                String cperson=request.getParameter("cperson");
                String lnumber=request.getParameter("lnumber");
                String mnumber=request.getParameter("mnumber");
                String addr=request.getParameter("addr");
                String gst=request.getParameter("gst");
                String fnumber=request.getParameter("fnumber");
                
                int i=st.executeUpdate("insert into tblcustomer1(customerName,contactPerson,landlineNumber,mobileNumber,address,gstNumber,faxNumber) values('"+cname+"','"+cperson+"','"+lnumber+"','"+mnumber+"','"+addr+"','"+gst+"','"+fnumber+"')");
                if(i>0)
                {
                    response.sendRedirect("customer.jsp?f=1");
                }
                else
                {
                    response.sendRedirect("customer.jsp?f=2");
                }
            }
            
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
