<%-- 
    Document   : cdelete
    Created on : 28 Jun, 2019, 9:53:47 AM
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
                
                int cid=Integer.parseInt(request.getParameter("r"));
                        
                int i=st.executeUpdate("delete from tblcustomer1 where customerId="+cid+"");
                
                if(i>0)
                {
                    out.print("<script>alert('Record deleted')</script>");
                    out.print("<script>window.location.href='cdisplay.jsp';</script>");
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
