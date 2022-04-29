<%-- 
    Document   : purchaseinsert
    Created on : 4 Jul, 2019, 1:32:02 PM
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
                
                
                String rname=request.getParameter("rname");
                int quantity=Integer.parseInt(request.getParameter("quantity"));
                String username=request.getParameter("username");
                
                
                int i=st.executeUpdate("insert into tbltemporary values('"+rname+"',"+quantity+",'"+session.getAttribute("id")+"')");
                if(i>0)
                {
                    response.sendRedirect("productlist.jsp?i=1");
                }
                else
                {
                    response.sendRedirect("productlist.jsp?i=2");
                }
            }
            
            catch(Exception e)
            {
                out.print(e);
            }
        %> 
    </body>
</html>
