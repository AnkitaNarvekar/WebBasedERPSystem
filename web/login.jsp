<%-- 
    Document   : login
    Created on : 2 Jul, 2019, 10:35:57 AM
    Author     : Dell
--%>


<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
       <% 
           String usr=request.getParameter("user");
           String pwd=request.getParameter("pass");
           
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
               Statement st=con.createStatement();
           
               
               ResultSet rs=st.executeQuery("select * from tblusers where binary userName='"+usr+"' and binary password='"+pwd+"'");
                 
               if(rs.next())
               {
                   session.setAttribute("id",usr);
                    session.setAttribute("user",rs.getString("type"));
                  response.sendRedirect("index.jsp");
                 
               }
               
              
             
              else
               {
                   response.sendRedirect("indexfirst.jsp?m=1");
                  // out.print("Invalid username or password");
               }
               
           }
           catch(Exception e)
            {
                  out.print(e);     
            }
       %>
    </body>
</html>
