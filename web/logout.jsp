<%-- 
    Document   : logout
    Created on : 2 Jul, 2019, 10:53:46 AM
    Author     : Dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("id",null);
            response.sendRedirect("indexfirst.jsp");
            %>
    </body>
</html>
