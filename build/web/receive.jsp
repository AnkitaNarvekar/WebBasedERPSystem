<%-- 
    Document   : receive
    Created on : 19 Jul, 2019, 12:25:28 PM
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
                
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st1=con1.createStatement();
                
                Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st2=con2.createStatement();
                
                String rawmaterialname=request.getParameter("q");
                int ordernumber=Integer.parseInt(request.getParameter("u"));
                
                int i=st.executeUpdate("update tblpurchaselist set Received='Yes' where rawmaterialName='"+rawmaterialname+"' and orderNumber="+ordernumber+"");
                if(i>0)
                {
                    
                    
                    ResultSet rs1=st1.executeQuery("select * from tblpurchaselist where rawmaterialName='"+rawmaterialname+"' and orderNumber="+ordernumber+"");
                    rs1.next();
                   
                    int j=st2.executeUpdate("insert into tblstock(productName,quantity) values('"+rs1.getString(2)+"',"+rs1.getString(3)+")");
                    response.sendRedirect("status.jsp?x="+ordernumber);
                    
                }
                     
                else
                {
                    response.sendRedirect("status.jsp?x=2");
                }
                
                
              
            }
                catch(Exception e)
             {
                out.print(e);
             }
            %>
    </body>
</html>
