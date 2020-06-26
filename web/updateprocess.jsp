<%-- 
    Document   : updateprocess
    Created on : Dec 1, 2018, 7:49:41 PM
    Author     : SAKTHIMICRO SYSTEM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Dadigama Jewellary  - Home</title>
        <meta name="description" content="website description" />
        <meta name="keywords" content="website keywords, website keywords" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="style/style.css" />
         
    </head>
    <body>
        <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_color-->
          <h1><a href="index.html">Dadigama<span class="logo_colour"> Jewellary</span></a></h1>
          <h2>...Great Goldsmiths...</h2>
        </div>
      </div>
      </div>


      <!--***************************************NAVIGATION****************************************************-->
      <div id="mainav" class="clear"> 
        <ul class="clear">
          <li class="active"><a href="index.jsp">Home</a></li>
          <li>
              <%
              if(session.getAttribute("user_id")!=null){
                  out.println("<a href='logout.jsp'> Logout</a>");
              }
              else{
                  out.println("<a href='login.html'> Login</a>");
              }
              %>
          </li>
          <li><a class="drop" href="category">Jewellary</a>
            <ul>
              <li><a href="necklace.jsp">Necklaces</a></li>
              <li><a href="rings.jsp">Rings</a></li>
              <li><a href="Braselet.html">Braselets</a></li>
              <li><a href="earring.html">Earrings</a></li>
              <li><a href="weddingitems.html">Wedding Items</a></li>
            </ul>
          </li>
          <li><a href="customers.jsp">Customers</a>
            
          </li>
          <li class="active"><a href="stock_items.jsp">Stock Items</a></li>
          <li><a href="orders.jsp">Orders</a></li>
        </ul>
      </div>
    
      <img src="Images/banner03.jpg" width=100% alt="First slide">
             
     <!--****************************************************CONTENT*****************************************************-->     
  
    
  </div>
</div>
     

     
     
     
    <!--********************************************************FOOTER*************************************************-->
    <div id="footer">
      <div class = "col-12">
        <div class="social col-3">
            <h3>Social media</h3>
            <ul>
              <a href="#"><span class="fb"></span>Facebook</a>
            </ul>
          </div>   
           
        <div class="contact col-3">
            <h3>Contact Us</h3>
            <p>Dadigama Jewelry <br> 54 Main Street <br>Badulla <br> SriLanka </p>
        </div>
        <div class="contact col-3">
          <h3>  </h3>
         <p><span class="email"> </span><a href="email">contact@dadigamajewelry.com</a></p>
            <p><span class="phone"></span> 055 223 4348</p>
        </div>
          
        
        <div class="copy col-3">  
         <h3> </h3>
        <p> Copyright 2018 Jewelry. All rights reserved. <p> </div>
        </div>
    
  </div>
    </body>
</html>

<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/jewellary";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
int id =Integer.parseInt(request.getParameter("id"));
String item_name=request.getParameter("itemName");
String item_type=request.getParameter("itemType");
String material=request.getParameter("material");
Float weight=Float.parseFloat(request.getParameter("weight"));
Float price=Float.parseFloat(request.getParameter("price"));
if(String.valueOf(id) != null  )
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update item_details set item_id=?,item_name=?,item_type=?,material=?,weight=?,price=?  where item_id='"+id+"'";
ps = con.prepareStatement(sql);
ps.setInt(1,id);
ps.setString(2, item_name);
ps.setString(3, item_type);
ps.setString(4, material);
ps.setFloat(5, weight);
ps.setFloat(6, price);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("<script type='text/javascript'>alert('Record Updated Successfully');</script>");
}
else
{
out.print("<script type='text/javascript'>alert('There is a problem in updating Record');</script>");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}

%>
