
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


<%
String id=request.getParameter("item_id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellary", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM item_details WHERE item_id='"+id+"'");
out.println("<script type='text/javascript'>alert('Data Deleted Successfully');</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

