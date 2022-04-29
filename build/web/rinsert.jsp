<%-- 
    Document   : rinsert
    Created on : 29 Jun, 2019, 4:21:08 PM
    Author     : Dell
--%>
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
           
         %><%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st=con.createStatement();
                
                
                String rname=request.getParameter("rname");
                String description=request.getParameter("description");
                float units=Float.parseFloat(request.getParameter("units"));
                float taxp=Float.parseFloat(request.getParameter("taxp"));
                int stocklevel=Integer.parseInt(request.getParameter("stocklevel"));
                float price=Float.parseFloat(request.getParameter("price"));
                
                
                int i=st.executeUpdate("insert into tblrawmaterial(rawmaterialName,description,units,taxPercentage,stockLevel,price) values('"+rname+"','"+description+"',"+units+","+taxp+","+stocklevel+","+price+")");
                if(i>0)
                {
                    response.sendRedirect("rawmaterial.jsp?h=1");
                }
                else
                {
                    response.sendRedirect("rawmaterial.jsp?h=2");
                }
            }
            
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
