<%-- 
    Document   : addcomp
    Created on : 22 Nov, 2014, 3:27:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Addcomp</title>
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
    width:100%;
    border: 1px solid black;
    border-collapse: collapse;
    padding-right:10px;
    border-radius: 4px;
    top:60px;
    
    
}
th, td {
    white-space: nowrap;
    overflow: hidden;
    padding-top:30px;
    padding-bottom:30px;
    padding-right:105px;
    padding-left:105px;
    
} 
        
        
        
        
        
        
        
 
            
        </style>
      
        
        
    </head>
    <body style="background-color:#FFE4C4;" >
        
    <center><h1><font color="purple" >Company Profile</font></center>
       <hr size="5" color="purple" />
        <%
            
        String name=(String)session.getAttribute("name"); 
        
        %> 
        
      <h3 style="font-family: 'Helvetica Neue', sans-serif;margin: 20px;">
          Welcome <%= name %> ,</h3>    
      
 <div class="wrapper" style="margin:10px">
  <nav class="vertical">
    <ul>
      <li>
        <a>Company</a>
      <div>
          <ul>

            <li><a href="addcomp.jsp">New Company</a></li>
            
          
          </ul>
        </div>
      </li>
      <li>
        <a>Student</a>
        <div>
          <ul>

            <li><a href="addprofile.jsp">New Profile</a></li>
           
          
          </ul>
        </div>
        </li>
        <li>
         
          <a href="index.jsp">Signout</a>
          
      </li>
    </ul>
  </nav>
  </div>
        
 
       <div class="wrapper"  style="margin:10px">
            <form action="addcomp" method="get">  
     
    <table  border="2" bgcolor="white" width="100%" cellspacing="1" cellpadding="3">
   
    <tr bgcolor="purple">
     <td align=“middle”>Add Company Details</td>

     </tr>
    
    </table>
                <br>
            <label>NAME</label><br><input type="text"  name = "name">
                <br><br><br>
            <label>DATE OF PROCEDURE</label><br><input type="text"  name = "dop">
                <br><br><br>
                 <label>BRANCH</label><br><input type="text" name = "brach">
                <br><br><br>
                 <label>OFFER</label><br><input type="text" name = "offer">
                <br><br><br>
                 <label>GGPA CRITERIA</label><br><input type="text" name = "cgpa">
                <br><br><br>
                 <label>CTC</label><br><input type="text" name = "ctc">
                <br><br><br>
                <label>STIPEND</label><br><input type="text" name = "stipend">
                <br><br><br>
                <input type="submit" value="Submit">
    
      </form>     
       </div>      
              

          
<br><br><br>
 
 <p style="padding-top:400px"></p>
<div style="height:900 auto; font-size:15px ;float:left;padding-left:10px;width:100%;background-color:#FFFFDA;color:#8A0000;min-width:1038px;">
<div style="width:70%; margin: 0 auto;float:left;height:900 auto;bottom:0;padding-top:20px">

<p> 
    Office of Industrial Liason, Placement and Practice School<br>
    Manipal Institute of Technology <br>
    Manipal University <br>
    Phone: 0820-2925562<br><br><br><br><br><br>
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
