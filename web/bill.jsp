<%-- 
    Document   : bill
    Created on : 12 Jul, 2019, 1:37:05 PM
    Author     : Dell
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bill</title>
    </head>
    <%
        Date today=new Date();
        SimpleDateFormat DATE_FORMAT=new SimpleDateFormat("dd-MM-yyyy");
        String ddMMyyyyToday=DATE_FORMAT.format(today);
    %>
    <body>
         <%
            if(session.getAttribute("id")==null)
            {
                response.sendRedirect("indexfirst.jsp");
            }
           
         %>
    <center>
        <table border="1px" style="width:60%">
            <%
                  double grandTotal=0.0;
                  double total=0.0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st=con.createStatement();
                
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st1=con1.createStatement();
                
                Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st2=con2.createStatement();
                
                Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
                Statement st3=con3.createStatement();
                
                
                    ResultSet rs1=st1.executeQuery("select * from tblpurchase where userName='"+session.getAttribute("id")+"'");
                    rs1.next();
                    
                    ResultSet rs2=st2.executeQuery("select * from tblsupplier where supplierName='"+rs1.getString(2)+"'");
                    rs2.next();
                    
                    ResultSet rs3=st3.executeQuery("select * from tblpurchaselist where orderNumber='"+rs1.getString(1)+"'");
                    
                    %>
                            
               
                    
                    <tr>
                        <td colspan="6"><h1>Purchase Order</h1></td> 
                    </tr> 
                    <tr>
                        <td colspan="3">Supplier: <%out.print(rs1.getString(2));%><br/><br/>Address: <%out.print(rs2.getString(6));%><br/><br/>GST: <%out.print(rs2.getString(7));%></td>  
                        <td colspan="3">Invoice Number:<%out.print(rs1.getString(1));%> <br/><br/>Invoice Date:<%=ddMMyyyyToday%><br/><br/>Target Date: <%out.print(rs1.getString(3));%></td>
                    </tr>
                    
                    <tr>
                        <th>SL No</th>
                        
                        <th>Particulars</th>
                           
                        <th>Rate</th>
                            
                        <th>Quantity</th>
                         
                        <th>Tax %</th>
                         
                        <th>Amount</th>
                    </tr>
                    
                           
                    <% while(rs3.next())
                    {%>
                    
                    <tr>
                             <%
                                 float taxAmount=((rs3.getInt(3))*(rs3.getInt(4)))*(rs3.getInt(5))/100;
                                 
                                 total=(rs3.getInt(3))*(rs3.getInt(4))+taxAmount;
                                 
                                 
                                 grandTotal=grandTotal+total;
                                 
                             %>
                            </tr>
                    
                    <tr>
                        
                        <td><%out.print(1);%></td>
                        <td><%out.print(rs3.getString(2));%></td>
                        <td><%out.print(rs3.getString(4));%></td>
                        <td><%out.print(rs3.getString(3));%></td>
                        <td><%out.print(rs3.getString(5));%></td>
                        <td><%out.print(total);%></td>
                    </tr>
                    <% }%>
                    <tr>
                        <th colspan="5">Grand Total</th>
                        <td><b><%out.print(grandTotal);%></b></td>
                    </tr>
                    
                 
              
        
        </table>
    </center>
    </body>
</html>
