package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Details_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>My Details</title>\n");
      out.write("      <style type=\"text/css\">             \n");
      out.write("   * {\n");
      out.write("\tmargin: 0;\n");
      out.write("\tpadding: 0;\n");
      out.write("\toutline: none;\n");
      out.write("\t\n");
      out.write("\t-webkit-box-sizing: border-box;\n");
      out.write("\t-moz-box-sizing: border-box;\n");
      out.write("\tbox-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("    background: #eee;\n");
      out.write("    color: #444;\n");
      out.write("    -webkit-font-smoothing: antialiased;\n");
      out.write("    font-family: 'Helvetica Neue', sans-serif;\n");
      out.write("    font-size: 20px;\n");
      out.write("    font-weight: 400;\n");
      out.write("    height: auto !important;\n");
      out.write("    height: 100%;\n");
      out.write("    min-height: 100%;\n");
      out.write("    text-rendering: optimizeLegibility;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write("div.wrapper {\n");
      out.write("  margin: 20px;\n");
      out.write("  width: 350px;\n");
      out.write("  float:left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("nav.vertical {\n");
      out.write("  border-radius: 4px;\n");
      out.write("  box-shadow: 0 0 10px rgba(0,0,0,.15);\n");
      out.write("  overflow: hidden;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("  nav.vertical > ul {\n");
      out.write("    list-style-type: none;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("    nav.vertical > ul > li {\n");
      out.write("      display: block;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("      nav.vertical > ul > li > a {\n");
      out.write("        background-color: rgb(157, 34, 60);\n");
      out.write("        background-image: -webkit-linear-gradient(135deg, rgb(114, 51, 98), rgb(157, 34, 60));\n");
      out.write("        background-image: -moz-linear-gradient(135deg, rgb(114, 51, 98), rgb(157, 34, 60));\n");
      out.write("        background-image: -o-linear-gradient(135deg, rgb(114, 51, 98), rgb(157, 34, 60));\n");
      out.write("        background-image: linear-gradient(135deg, rgb(114, 51, 98), rgb(157, 34, 60));\n");
      out.write("        border-bottom: 1px solid rgba(255,255,255,.1);\n");
      out.write("        box-shadow: inset 0 1px 1px rgba(0,0,0,.1), 0 1px 1px rgba(0,0,0,.1);\n");
      out.write("        color: rgb(255,255,255);\n");
      out.write("        display: block;\n");
      out.write("        font-size: .85em;\n");
      out.write("        font-weight: 500;\n");
      out.write("        height: 50px;\n");
      out.write("        letter-spacing: .5em;\n");
      out.write("        line-height: 50px;\n");
      out.write("        text-shadow: 0 1px 1px rgba(0,0,0,.1);\n");
      out.write("        text-transform: uppercase;\n");
      out.write("        transition: all .1s ease;\n");
      out.write("        text-decoration: none;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("        nav.vertical > ul > li > a:hover {\n");
      out.write("         background-color: rgb(114, 51, 98);\n");
      out.write("         background-image: -webkit-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));\n");
      out.write("         background-image: -moz-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));\n");
      out.write("         background-image: -o-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));\n");
      out.write("         background-image: linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98)); \n");
      out.write("         cursor: pointer;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("          nav.vertical > ul > li > div {\n");
      out.write("            background-color: rgb(255,255,255);\n");
      out.write("          }\n");
      out.write(" \n");
      out.write("          nav.vertical > ul > li > div > ul {\n");
      out.write("            list-style-type: none;\n");
      out.write("          }\n");
      out.write("\n");
      out.write("            nav.vertical > ul > li > div > ul > li > a {\n");
      out.write("             background-color: rgb(255,255,255);\n");
      out.write("             border-bottom: 1px solid rgba(0,0,0,.05);\n");
      out.write("             color: #333331;\n");
      out.write("             display: block;\n");
      out.write("             font-size: 1.1em;\n");
      out.write("             padding: 10px 0;\n");
      out.write("             text-decoration: none;\n");
      out.write("             transition: all 0.15s linear;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("              nav.vertical > ul > li > div > ul > li:hover > a {\n");
      out.write("                background-color: lightBlue;\n");
      out.write("                color: rgb(255,255,255);\n");
      out.write("                padding: 10px 0 10px 50px;\n");
      out.write("              }\n");
      out.write("    \n");
      out.write("             \n");
      out.write("        .activeTab {\n");
      out.write("            Font-Family: Arial;\n");
      out.write("            Font-Size  : 12px;\n");
      out.write("            Font-Weight: Bold;\n");
      out.write("            Background-Color: #FFFFFF;\n");
      out.write("            Border-Top:   1px solid #000000;\n");
      out.write("            Border-Left:  1px solid #000000;\n");
      out.write("            Border-Right: 1px solid #000000;\n");
      out.write("        }\n");
      out.write("        .inactiveTab {\n");
      out.write("            Font-Family: Arial;\n");
      out.write("            Font-Size  : 12px;\n");
      out.write("            Font-Weight: Boldx;\n");
      out.write("            Background-Color: #EEEEEE;\n");
      out.write("            Border     : 1px solid #000000;\n");
      out.write("        }\n");
      out.write("        .tabContent {\n");
      out.write("            Font-Family: Arial;\n");
      out.write("            Font-Size  : 12px;\n");
      out.write("            Font-Weight: Boldx;\n");
      out.write("            Background-Color: #FFFFFF;\n");
      out.write("            Border-Left:  1px solid #000000;\n");
      out.write("            Border-Right: 1px solid #000000;\n");
      out.write("            Border-Bottom:   1px solid #000000;\n");
      out.write("        }\n");
      out.write("        a {\n");
      out.write("            Text-Decoration: None;\n");
      out.write("        }\n");
      out.write(" \n");
      out.write("table, th, td {\n");
      out.write("    margin: 10px auto;\n");
      out.write("    width:100%;\n");
      out.write("    border: 1px solid black;\n");
      out.write("    border-collapse: collapse;\n");
      out.write("    padding-right:10px;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    top:60px;\n");
      out.write("    \n");
      out.write("    \n");
      out.write("}\n");
      out.write("th, td {\n");
      out.write("    white-space: nowrap;\n");
      out.write("    overflow: hidden;\n");
      out.write("    padding-top:30px;\n");
      out.write("    padding-bottom:30px;\n");
      out.write("    padding-right:105px;\n");
      out.write("    padding-left:105px;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("     <body style=\"background-color:#FFE4C4;\">\n");
      out.write("    <center><h1><font color=\"purple\" >My Details</font></center>\n");
      out.write("    <hr size=\"5\" color=\"purple\"/>\n");
      out.write("       \n");
      out.write("       ");

       
         String name=(String)session.getAttribute("name");  
         String regno=(String)session.getAttribute("regno"); 
        
      out.write(" \n");
      out.write("        \n");
      out.write("      <h3 style=\"font-family: 'Helvetica Neue', sans-serif;margin: 20px;\">\n");
      out.write("          Welcome ");
      out.print( name );
      out.write(" ,</h3>    \n");
      out.write("      \n");
      out.write("          \n");
      out.write("    <div class=\"wrapper\" style=\"margin:10px\">\n");
      out.write("  <nav class=\"vertical\">\n");
      out.write("    <ul>\n");
      out.write("      <li>\n");
      out.write("        <a href=\"#\">Menu</a>\n");
      out.write("        <div>\n");
      out.write("          <ul>\n");
      out.write("           \n");
      out.write("            <li><a href=\"Schedule.jsp?name=\" ");
      out.print( name );
      out.write(">Schedule</a></li>\n");
      out.write("            <li><a href=\"Company.jsp?name=\" ");
      out.print( name );
      out.write(">Company</a></li>\n");
      out.write("          \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      <li>\n");
      out.write("        <a href=\"#\">Profile</a>\n");
      out.write("        <div>\n");
      out.write("          <ul>\n");
      out.write("            <li><a href=\"Details.jsp?name=\" ");
      out.print( name );
      out.write(">Details</a></li>\n");
      out.write("            <li><a href=\"ChangeDetails.jsp?name=\" ");
      out.print( name );
      out.write(">Change Details</a></li>\n");
      out.write("           \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      <li>\n");
      out.write("        <a href=\"#\">Help</a>\n");
      out.write("        <div>\n");
      out.write("          <ul>\n");
      out.write("            <li><a href=\"Guidelines.jsp?name=\" ");
      out.print( name );
      out.write(">Guidelines</a></li>\n");
      out.write("             <li><a href=\"Resume.jsp\">Resume</a></li>   \n");
      out.write("         \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      <li>\n");
      out.write("          <a href=\"index.jsp\">Signout</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("  </nav>\n");
      out.write("  </div>\n");
      out.write("     \n");
      out.write("   <div class=\"wrapper\" style=\"margin:10px\">\n");
      out.write("      <form action=\"\" method=\"get\">  \n");
      out.write("     \n");
      out.write("    <table  border=\"2\" bgcolor=\"white\" width=\"100%\" cellspacing=\"1\" cellpadding=\"3\">\n");
      out.write("   \n");
      out.write("    <tr bgcolor=\"purple\">\n");
      out.write("     <td align=“middle”>PERSONAL DETAILS</td>\n");
      out.write("\n");
      out.write("     </tr>\n");
      out.write("    \n");
      out.write("    </table>\n");
      out.write("     ");

           Connection conn;
            Statement stmt;
            ResultSet rs;
            String driver="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost/";
            String dbname="portal";
            String userName="root";
            String Password="family";
            try{
            Class.forName(driver).newInstance();
            conn=DriverManager.getConnection(url+dbname,userName, Password);
            stmt=conn.createStatement();
            String sql="Select * from student where regno='"+regno+"'";
            rs=stmt.executeQuery(sql);
            while(rs.next()){
            
      out.write("\n");
      out.write("            <label>REGISTRATION NUMBER</label>&nbsp;&nbsp;&nbsp;&nbsp;");
      out.print( rs.getString(1) );
      out.write("\n");
      out.write("                <br><br><br>\n");
      out.write("            <label>NAME</label>&nbsp;&nbsp;&nbsp;&nbsp;");
      out.print( rs.getString(2) );
      out.write("\n");
      out.write("                <br><br><br>\n");
      out.write("                 <label>GENDER</label>&nbsp;&nbsp;&nbsp;&nbsp;");
      out.print( rs.getString(3) );
      out.write("\n");
      out.write("                <br><br><br>\n");
      out.write("                 <label>EMAIL ID</label>&nbsp;&nbsp;&nbsp;&nbsp;");
      out.print( rs.getString(4) );
      out.write("\n");
      out.write("                <br><br><br>\n");
      out.write("                 <label>DATE OF BIRTH</label>&nbsp;&nbsp;&nbsp;&nbsp;");
      out.print( rs.getString(5) );
      out.write("\n");
      out.write("                <br><br><br>\n");
      out.write("                 <label>PHONE NUMBER</label>&nbsp;&nbsp;&nbsp;&nbsp;");
      out.print( rs.getString(6) );
      out.write("\n");
      out.write("                <br><br><br>\n");
      out.write("                 <label>CGPA</label>&nbsp;&nbsp;&nbsp;&nbsp;");
      out.print( rs.getString(7) );
      out.write("\n");
      out.write("                <br>\n");
      out.write("        \n");
      out.write("            \n");
      out.write("            ");

            }
            conn.close();
            }
            catch(Exception e)
            {
            }
     
      out.write("\n");
      out.write("     \n");
      out.write("      </form>     \n");
      out.write("       </div>   \n");
      out.write("     <br>\n");
      out.write("     \n");
      out.write("<div style=\"padding-top:600px;padding-left:370px;margin:10px\">\n");
      out.write("<form action=\"insert\" method=\"get\">\n");
      out.write("<label>RESUME</label>\n");
      out.write("<p>Please specify a file<br>\n");
      out.write("<input type=\"file\" name=\"datafile\" >\n");
      out.write("\n");
      out.write("</p>\n");
      out.write("<div>\n");
      out.write("   \n");
      out.write("<input type=\"submit\" value=\"Send\">\n");
      out.write("<input type=\"hidden\" name=\"name\" value=\"");
      out.print( name );
      out.write("\">\n");
      out.write("</div>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("    ");
 
   String msg=request.getParameter("msg"); 
      out.write("\n");
      out.write("     <br>\n");
      out.write("    <br> \n");
      out.write("     \n");
      out.write("<div style=\"font-size:15px ;float:left;padding-left:10px;right:0px;width:100%;background-color:#FFFFDA;color:#8A0000;min-width:100%;\">\n");
      out.write("<div style=\"width:70%; margin: 0 auto ; float:left;height:500 auto\">\n");
      out.write("<b>Contact:</b>\n");
      out.write("<p> \n");
      out.write("    Office of Industrial Liason, Placement and Practice School<br>\n");
      out.write("    Manipal Institute of Technology <br>\n");
      out.write("    Manipal University <br>\n");
      out.write("    Phone: 0820-2925562<br><br><br><br>\n");
      out.write("</p>\n");
      out.write("</div>\n");
      out.write("     <br>\n");
      out.write(" <div>\n");
      out.write("<p> \n");
      out.write("&copy; 2014-2015 <br> \n");
      out.write("Manipal Institute of Technology\n");
      out.write("</p>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>  \n");
      out.write("       \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
