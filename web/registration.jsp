<%-- 
    Document   : registration
    Created on : Dec 1, 2018, 11:28:58 AM
    Author     : u
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
         <title>Dadigama Jewellary Shop</title>
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
          <h1><a href="registration.html">Dadigama<span class="logo_colour"> Jewellary</span></a></h1>
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
                            <li><a href="jewellary/Braselet.html">Braselets</a></li>
                            <li><a href="jewellary/earring.html">Earrings</a></li>
                            <li><a href="jewellary/weddingitems.html">Wedding Items</a></li>
                        </ul>
                    </li>
                    
                    <li><a href="category.jsp">Search Your selection</a></li>
                </ul>
            </div>
         <div id="content">
        <!-- insert the page content here -->
                 <%
                      String fname = request.getParameter("fname");
                    String lname = request.getParameter("lname");
                    String gender = request.getParameter("gender");
                    String address = request.getParameter("address");
                    String email = request.getParameter("email");
                    String uname = request.getParameter("uname");
                    String pwd = request.getParameter("pwd");
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellary","root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO user (firstName,lastName,gender,address,Email,user_name,password) VALUES ('"+fname+"', '"+lname+"', '"+gender+"', '"+address+"','"+email+"', '"+uname+"', '"+pwd+"')";
                        int n = stmt.executeUpdate(query);
                                if(n>0){
               
                  out.println("<h4>Registration Successfull... Now you can login to <a href='login.html'>Dedigama Jewellary Shop</a></h4>");
               }
           
           }catch(Exception e){
           
           
            out.println("<p>Error while registraining the user"+ e.getMessage()+"</p>");
           
           }
                 %>
       
               
                   
        </div>
                  <!--********************************************************FOOTER*************************************************-->
    <div id="footer">
      <div class = "col-12">
        <div class="social col-3">
            <h3>Social media</h3>
            <ul>
              <!--<a href="#4"><span class="fb"></span>Facebook</a>-->
            </ul>
          </div>   
           
        <div class="contact col-3">
            <h3>Contact us</h3>
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
 </div>
    </body>
</html>
