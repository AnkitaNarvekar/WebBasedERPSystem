<%-- 
    Document   : pdelete
    Created on : 30 Jun, 2019, 8:39:00 PM
    Author     : Dell
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletion</title>
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
                
                int pid=Integer.parseInt(request.getParameter("g"));
                        
                int i=st.executeUpdate("delete from tblproduct1 where productId="+pid+"");
                
                if(i>0)
                {
                    out.print("<script>alert('Record deleted')</script>");
                    out.print("<script>window.location.href='pdisplay.jsp';</script>");
                }
                else
                {
                    out.print("Error in deletion");
                }
                
            }
            
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>

