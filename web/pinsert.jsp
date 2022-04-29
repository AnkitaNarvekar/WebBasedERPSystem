<%-- 
    Document   : pinsert
    Created on : 29 Jun, 2019, 4:09:18 PM
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
    <body>
        <%
            if(session.getAttribute("id")==null)
            {
                response.sendRedirect("indexfirst.jsp");
            }
           
         %>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st=con.createStatement();
                
                
                String pname=request.getParameter("pname");
                String description=request.getParameter("description");
                float units=Float.parseFloat(request.getParameter("units"));
                float taxp=Float.parseFloat(request.getParameter("taxp"));
                float price=Float.parseFloat(request.getParameter("price"));
                
                
                int i=st.executeUpdate("insert into tblproduct1(productName,description,units,taxPercentage,price) values('"+pname+"','"+description+"',"+units+","+taxp+","+price+")");
                if(i>0)
                {
                    response.sendRedirect("product.jsp?g=1");
                }
                else
                {
                    response.sendRedirect("product.jsp?g=2");
                }
            }
            
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
