package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class customers_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Dadigama Jewellary  - Home</title>\n");
      out.write("        <meta name=\"description\" content=\"website description\" />\n");
      out.write("        <meta name=\"keywords\" content=\"website keywords, website keywords\" />\n");
      out.write("        <meta http-equiv=\"content-type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style/style.css\" />\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"main\">\n");
      out.write("    <div id=\"header\">\n");
      out.write("      <div id=\"logo\">\n");
      out.write("        <div id=\"logo_text\">\n");
      out.write("          <!-- class=\"logo_color-->\n");
      out.write("          <h1><a href=\"index.html\">Dadigama<span class=\"logo_colour\"> Jewellary</span></a></h1>\n");
      out.write("          <h2>...Great Goldsmiths...</h2>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      <!--***************************************NAVIGATION****************************************************-->\n");
      out.write("      <div id=\"mainav\" class=\"clear\"> \n");
      out.write("        <ul class=\"clear\">\n");
      out.write("          <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("          <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("          <li><a class=\"drop\" href=\"category\">Jewellary</a>\n");
      out.write("            <ul>\n");
      out.write("              <li><a href=\"jewellary/Neclace.html\">Neclaces</a></li>\n");
      out.write("              <li><a href=\"jewellary/ring.html\">Rings</a></li>\n");
      out.write("              <li><a href=\"jewellary/Braselet.html\">Braselets</a></li>\n");
      out.write("              <li><a href=\"jewellary/earring.html\">Earrings</a></li>\n");
      out.write("              <li><a href=\"jewellary/weddingitems.html\">Wedding Items</a></li>\n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"active\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/customers.jsp\">Customers</a>\n");
      out.write("            \n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/stock_items.jsp\">Stock Items</a></li>\n");
      out.write("          <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/orders.jsp\">Orders</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("      \n");
      out.write("             \n");
      out.write("     <!--****************************************************CONTENT*****************************************************-->     \n");
      out.write("     <div style=\"height:500px;\">\n");
      out.write("         <div>\n");
      out.write("            <h1>View Customer Details</h1>\n");
      out.write("            </div>\n");
      out.write("      <div>\n");
      out.write("            <table id=\"customers\">\n");
      out.write("                \n");
      out.write("  <tr>\n");
      out.write("    <th>User_id</th>\n");
      out.write("    <th>First Name</th>\n");
      out.write("    <th>Last Name</th>\n");
      out.write("    <th>Email</th>\n");
      out.write("    <th>Address</th>\n");
      out.write("    <th>User Name</th>\n");
      out.write("    <th>Password</th>\n");
      out.write("    <th>Gender</th>\n");
      out.write("  </tr>\n");
      out.write("  ");

try {

String connectionURL = "jdbc:mysql://localhost:3306/jewellary";
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "root", "");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from user";
rs = statement.executeQuery(QueryString);
while (rs.next()) {

      out.write("\n");
      out.write("<TR>\n");
      out.write("<TD>");
      out.print(rs.getInt(1));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(2));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(3));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(4));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(5));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(6));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(7));
      out.write("</TD>\n");
      out.write("<TD>");
      out.print(rs.getString(8));
      out.write("</TD>\n");
      out.write("\n");
      out.write("</TR>\n");
 } 
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {

      out.write("\n");
      out.write("</font>\n");
      out.write("<font size=\"+3\" color=\"red\"></b>\n");

out.println("Unable to connect to database.");
}

      out.write("\n");
      out.write("\n");
      out.write("</table>    \n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("     \n");
      out.write("\n");
      out.write("     \n");
      out.write("     \n");
      out.write("     \n");
      out.write("    <!--********************************************************FOOTER*************************************************-->\n");
      out.write("    <div id=\"footer\">\n");
      out.write("      <div class = \"col-12\">\n");
      out.write("        <div class=\"social col-3\">\n");
      out.write("            <h3>Social media</h3>\n");
      out.write("            <ul>\n");
      out.write("              <a href=\"#\"><span class=\"fb\"></span>Facebook</a>\n");
      out.write("            </ul>\n");
      out.write("          </div>   \n");
      out.write("           \n");
      out.write("        <div class=\"contact col-3\">\n");
      out.write("            <h3>Contact Us</h3>\n");
      out.write("            <p>Dadigama Jewelry <br> 54 Main Street <br>Badulla <br> SriLanka </p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"contact col-3\">\n");
      out.write("          <h3>  </h3>\n");
      out.write("         <p><span class=\"email\"> </span><a href=\"email\">contact@dadigamajewelry.com</a></p>\n");
      out.write("            <p><span class=\"phone\"></span> 055 223 4348</p>\n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("        \n");
      out.write("        <div class=\"copy col-3\">  \n");
      out.write("         <h3> </h3>\n");
      out.write("        <p> Copyright 2018 Jewelry. All rights reserved. <p> </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
