<%-- 
    Document   : adchange
    Created on : 21 Nov, 2014, 11:03:39 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcomeadmin</title>
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
        
        
        
        
        
        
        
        
  div.wrapper1 {
  margin: 20px auto;
  width: 100%;
  top:50px;
  padding-right: 10px;
  padding-top:13px;
}

nav.vertical1 {
  border-radius: 4px;
  box-shadow: 0 0 10px rgba(0,0,0,.15);
  overflow: hidden;
  text-align: center;
}

  nav.vertical1 > ul {
    list-style-type: none;
  }

    nav.vertical1 > ul > li {
      display: block;
    }

      nav.vertical1 > ul > li > label,
      nav.vertical1 > ul > li > a {
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
      }

        nav.vertical1 > ul > li > label:hover,
        nav.vertical1 > ul > li > a:hover {
         background-color: rgb(114, 51, 98);
         background-image: -webkit-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));
         background-image: -moz-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));
         background-image: -o-linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98));
         background-image: linear-gradient(150deg, rgb(114, 51, 98), rgb(114, 51, 98)); 
         cursor: pointer;
        }

        nav.vertical1 > ul > li > label + input {
          display: none;
          visability: hidden;
        }
        
          nav.vertical1 > ul > li > div {
            background-color: rgb(255,255,255);
            height: 0;
            overflow: scroll;
            transition: all .35s ease;
          }

            nav.vertical1 > ul > li > div > p {
              margin: 24px;
              text-align: left;
            }

            nav.vertical1 ::-webkit-scrollbar {
              width: .9em;
            }

            nav.vertical1::-webkit-scrollbar-thumb {
              background-color: rgb(114, 51, 98);
              border: solid rgb(255,255,255);
              border-width: .4em .4em .4em 0;
              border-radius: 0 .4em .4em 0;
            }

            nav.vertical1 > ul > li > label + input:checked + div {
              height: 200px;
            }
            
        </style>
      
        
        
    </head>
    <body style="background-color:#FFE4C4;" >
        
    <center><h1><font color="purple" >ADMINISTRATOR PAGE</font></center>
       <hr size="5" color="purple" />
        <%
            
         String name=request.getParameter("name");
          
         session.setAttribute("name",name);  
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
      
          
          
       <div class="wrapper" style="margin:30px">
      <form method="get">     
          <div style="width:100%; margin: 0 auto;">
		<div style="float:left;padding-left:20px;position:relative;width:100%;"><img src="edu.jpg"/></div>
         
          </div>
      </form>     
       </div> 
    
 
          
          
        
 <br><br><br><br>
 
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
