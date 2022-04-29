<%-- 
    Document   : uinsert
    Created on : 1 Jul, 2019, 1:16:36 PM
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
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st=con.createStatement();
                
                
                String fullname=request.getParameter("fullname");
                String cnumber=request.getParameter("cnumber");
                String address=request.getParameter("address");
                String uname=request.getParameter("uname");
                String password=request.getParameter("password");
                String rpassword=request.getParameter("rpassword");
                String type =request.getParameter("type");
                
                ResultSet rs=st.executeQuery("select * from tblusers where userName='"+uname+"'");
                if(rs.next())
                {
                    response.sendRedirect("users.jsp?f=3");
                }
                
                else{
                int i=st.executeUpdate("insert into tblusers values('"+fullname+"','"+cnumber+"','"+address+"','"+uname+"','"+password+"','"+rpassword+"','"+type+"')");
                if(i>0)
                {
                    response.sendRedirect("users.jsp?f=1");
                }
                else
                {
                    response.sendRedirect("users.jsp?f=2");
                }
            }
            }
            
            catch(Exception e)
            {
                out.print(e);
            }
            
        %>
    </body>
</html>
