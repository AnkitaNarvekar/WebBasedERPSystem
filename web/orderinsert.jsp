<%-- 
    Document   : orderinsert
    Created on : 4 Jul, 2019, 7:02:09 PM
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
                
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st1=con1.createStatement();
                
                Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st2=con2.createStatement();
                
                Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st3=con3.createStatement();
                
                
                String supplier=request.getParameter("supplier");
                String tdate=request.getParameter("tdate");
                String username=request.getParameter("username"); 
                
                
                int i=st.executeUpdate("insert into tblpurchase(supplierName,targetDate,userName) values('"+supplier+"','"+tdate+"','"+session.getAttribute("id")+"')");
                if(i>0)
                {
                    
                     ResultSet rs1=st1.executeQuery("select max(orderNumber) from tblpurchase");
                     rs1.next();
                     
                     ResultSet rs2=st2.executeQuery("select * from tbltemporary where userName='"+session.getAttribute("id")+"'");
                     while(rs2.next())
                     {
                         ResultSet rs3=st3.executeQuery("select price,taxPercentage from tblrawmaterial where rawmaterialName='"+rs2.getString(1)+"'");
                         rs3.next();
                         
                         int j=st.executeUpdate("insert into tblpurchaselist(orderNumber,rawmaterialName,quantity,price,taxPercentage) values('"+rs1.getString(1)+"','"+rs2.getString(1)+"','"+rs2.getString(2)+"','"+rs3.getString(1)+"','"+rs3.getString(2)+"')");
                     }
                }
               
                    response.sendRedirect("bill.jsp");
                
                
            }
     
            
            
            
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
