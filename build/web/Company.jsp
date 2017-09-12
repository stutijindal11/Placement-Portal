

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Companies</title>
        <style type="text/css">
            
   * {
	margin: 0;
	padding: 0;
	outline: none;
	
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

body {
    background: #eee;
    color: #444;
    -webkit-font-smoothing: antialiased;
    font-family: 'Helvetica Neue', sans-serif;
    font-size: 20px;
    font-weight: 400;
    height: auto !important;
    height: 100%;
    min-height: 100%;
    text-rendering: optimizeLegibility;
    
}

div.wrapper {
  margin: 20px;
  width: 350px;
  float:left;
}


nav.vertical {
  border-radius: 4px;
  box-shadow: 0 0 10px rgba(0,0,0,.15);
  overflow: hidden;
  text-align: center;
}

  nav.vertical > ul {
    list-style-type: none;
  }

    nav.vertical > ul > li {
      display: block;
    }

      nav.vertical > ul > li > a {
        background-color: rgb(157, 34, 60);
        background-image: -webkit-linear-gradient(135deg, rgb(114, 51, 98), rgb(157, 34, 60));
        background-image: -moz-linear-gradient(135deg, rgb(114, 51, 98), rgb(157, 34, 60));
        background-image: -o-linear-gradient(135deg, rgb(114, 51, 98), rgb(157, 34, 60));
        background-image: linear-gradient(135deg, rgb(114, 51, 98), rgb(157, 34, 60));
        border-bottom: 1px solid rgba(255,255,255,.1);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.1), 0 1px 1px rgba(0,0,0,.1);
        color: rgb(255,255,255);
        display: block;
        font-size: .85em;
        font-weight: 500;
        height: 50px;
        letter-spacing: .5em;
        line-height: 50px;
        text-shadow: 0 1px 1px rgba(0,0,0,.1);
        text-transform: uppercase;
        transition: all .1s ease;
        text-decoration: none;
      }

        nav.vertical > ul > li > a:hover {
         background-color: rgb(114, 51, 98);
         background-image: -webkit-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));
         background-image: -moz-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));
         background-image: -o-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));
         background-image: linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98)); 
         cursor: pointer;
        }
        
          nav.vertical > ul > li > div {
            background-color: rgb(255,255,255);
          }
 
          nav.vertical > ul > li > div > ul {
            list-style-type: none;
          }

            nav.vertical > ul > li > div > ul > li > a {
             background-color: rgb(255,255,255);
             border-bottom: 1px solid rgba(0,0,0,.05);
             color: #333331;
             display: block;
             font-size: 1.1em;
             padding: 10px 0;
             text-decoration: none;
             transition: all 0.15s linear;
            }

              nav.vertical > ul > li > div > ul > li:hover > a {
                background-color: lightBlue;
                color: rgb(255,255,255);
                padding: 10px 0 10px 50px;
              }
    
             
        .activeTab {
            Font-Family: Arial;
            Font-Size  : 12px;
            Font-Weight: Bold;
            Background-Color: #FFFFFF;
            Border-Top:   1px solid #000000;
            Border-Left:  1px solid #000000;
            Border-Right: 1px solid #000000;
        }
        .inactiveTab {
            Font-Family: Arial;
            Font-Size  : 12px;
            Font-Weight: Boldx;
            Background-Color: #EEEEEE;
            Border     : 1px solid #000000;
        }
        .tabContent {
            Font-Family: Arial;
            Font-Size  : 12px;
            Font-Weight: Boldx;
            Background-Color: #FFFFFF;
            Border-Left:  1px solid #000000;
            Border-Right: 1px solid #000000;
            Border-Bottom:   1px solid #000000;
        }
        a {
            Text-Decoration: None;
        }
 
table, th, td {
    margin: 10px auto;
    border: 1px solid black;
    border-collapse: collapse;
    padding-right:10px;
    border-radius: 4px;
    top:50px;
    
    
}
th, td {
    white-space: nowrap;
    overflow: hidden;
    padding:40px;
    
}

    
        </style>
       
    </head>
    <body style="background-color:#FFE4C4;">
    <center><h1><font color="purple" >Companies</font></center>
    <hr size="5" color="purple"/>
       
       <%
       
         String name=(String)session.getAttribute("name"); 
         String regno=(String)session.getAttribute("regno"); 
         
        %> 
        
      <h3 style="font-family: 'Helvetica Neue', sans-serif;margin: 20px;">
          Welcome <%= name %> ,</h3>    
      
          
    <div class="wrapper" style="margin:10px">
  <nav class="vertical">
    <ul>
      <li>
        <a href="#">Menu</a>
        <div>
          <ul>
           
            <li><a href="Schedule.jsp?name=" <%= name %>>Schedule</a></li>
            <li><a href="Company.jsp?name=" <%= name %>>Company</a></li>
          
          </ul>
        </div>
      </li>
      <li>
        <a href="#">Profile</a>
        <div>
          <ul>
            <li><a href="Details.jsp?name=" <%= name %>>Details</a></li>
            <li><a href="ChangeDetails.jsp?name=" <%= name %>>Change Details</a></li>
           
          </ul>
        </div>
      </li>
      <li>
        <a href="#">Help</a>
        <div>
          <ul>
            <li><a href="Guidelines.jsp?name=" <%= name %>>Guidelines</a></li>
             <li><a href="Resume.jsp">Resume</a></li>   
         
          </ul>
        </div>
      </li>
      <li>
          <a href="index.jsp">Signout</a>
      </li>
    </ul>
  </nav>
  </div>
     
    
   
  <div class="wrapper" style="margin:10px">
      <form method="get">      
    <table  border="2" bgcolor="white" width="100%" cellspacing="1" cellpadding="3">
    <thead>
    <tr bgcolor="purple">
     <td align=“middle”>Company Name</td>
    <%-- <td align=“middle”>Date Of Procedure</td>--%>
     <td align=“middle”>Eligible Branches</td>
     <td align=“middle”>Offer</td>
     <td align=“middle”>CGPA Criteria</td>
     <td align=“middle”>CTC</td>
     <td align=“middle”>Stipend</td>
     
     </tr>
    </thead>
    <tbody>
     <% int i=0;
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
            String sql="Select * from company";
            rs=stmt.executeQuery(sql);
            while(rs.next()){
                i++;
            %>
            <tr valign="middle">
    
                <td> <%= rs.getString(1) %></td>
                <%--<td> <%= rs.getString(2) %></td>--%>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
                <td> <%= rs.getString(5) %></td>
                <td> <%= rs.getString(6) %></td>
                <td> <%= rs.getString(7) %></td>
               <%-- <td><input type="submit" name="b" value="Register"></td>
                <td><input type="hidden" name="cname" value="<%= rs.getString(1)%>"></td>
                <td><input type="hidden" name="regno" value="<%= regno%>"></td>--%>
                
            </tr>
            
            <%
            }
            conn.close();
            }
            catch(Exception e)
            {
            }
     %>
    </tbody>
 </table>
     
    
    
      </form>     
       </div> 
    
    <div style="padding-top:500px;padding-left:370px ;margin:10px">
    <form action="registercomp" method="get">
        <label>Enter Company Name To Register</label><br>
        <input type="text" name="cname">
        <input type="hidden" name="regno" value="<%= regno%>">
        <input type="submit" value="Register">
    </form>
    </div>
 <br><br><br><br>    
<div style="font-size:15px ;float:left;padding-left:10px;right:0px;width:100%;background-color:#FFFFDA;color:#8A0000;min-width:100%;">
<div style="width:70%; margin: 0 auto ; float:left;height:500 auto" >
<b>Contact:</b>
<p> 
    Office of Industrial Liason, Placement and Practice School<br>
    Manipal Institute of Technology <br>
    Manipal University <br>
    Phone: 0820-2925562<br><br><br><br>
</p>
</div>
     <br>
 <div>
<p> 
&copy; 2014-2015 <br> 
Manipal Institute of Technology
</p>

</div>
</div>
    </body>
</html>
