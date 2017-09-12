<%-- 
    Document   : Announcements
    Created on : 18 Nov, 2014, 3:06:50 PM
    Author     : Admin
--%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Announcements</title>
       
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
        
    <center><h1><font color="purple" >Announcements</font></center>
       <hr size="5" color="purple" />
        <%
            
         String name=request.getParameter("name");
          String regno=request.getParameter("regno");
         session.setAttribute("name",name);
          session.setAttribute("regno",regno);
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

            <li><a href="Schedule.jsp">Schedule</a></li>
            <li><a href="Company.jsp">Company</a></li>
          
          </ul>
        </div>
      </li>
      <li>
        <a href="#">Profile</a>
        <div>
          <ul>
            <li><a href="Details.jsp">Details</a></li>
            <li><a href="ChangeDetails.jsp">Change Details</a></li>
           
          </ul>
        </div>
      </li>
      <li>
        <a href="#">Help</a>
        <div>
          <ul>
            <li><a href="Guidelines.jsp">Guidelines</a></li>
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
   
          
          
          
          
          
  <div class="wrapper1">
  <nav class="vertical1">
    <ul>
      <li>
        <label for="home">IMPORTANT</label>
        <input type="radio" checked name="verticalMenu1" id="home" />
        <div style="overflow:auto;">
           
               
                
                
                <p style="text-align:left">Placed students appearing for ADM processes will be violating the placement rules,
                        will be out of placement if they do so and on-hand offers will be terminated with 
                        immediate effect and the concerned company will be informed of the same.</p>
                
                 <p style="text-align:left">2015 batch ... Please note: ADM opportunities are always for unplaced students 
                        and students with internship only offers. Once placed in an ADM, you cannot appear
                        for the next ADM but you can continue to appear for core companies.</p> 
                 <p style="text-align:left">Even if you get placed with a core profile within ADMs, it's still an ADM offer.</p>
                <p style="text-align:left">Successful TCS offers whether core profile or not, is considered as an ADM offer.
                        Placed students are NOT eligible to appear for any of the ADM's while only 
                        unplaced students are eligible to appear for ADM's. Also, students with internship
                        (I) only offers are eligible to appear for ADM opportunities.</p>
            
        </div>
      </li>
      <li>
        <label for="blog">GUIDELINES</label>
        <input type="radio" name="verticalMenu1" id="blog" />
        <div style="overflow: auto;">
            <p style="text-align:left">All companies & their data are subject to change and additions / deletions / 
                        cancellations / postponement.</p>
                <p style="text-align:left">Eligibility also includes no backlogs, in all cases.</p>
                
                <p style="text-align:left">Do NOT register just because the company is allowing all branches.</p>
                <p style="text-align:left">Kindly note that the above time schedule, branches & eligibility criteria are 
                        tentative and subject to change.</p>
                <p style="text-align:left">Opportunities for other branches are always under discussion / negotiation and 
                        will be scheduled as and when they get approved.</p>
               
                <p style="text-align:left">Latecomers and/or dress code violators will have serious and appropriate action 
                        taken against them immediately.</p>
            
        </div>
      </li>
     
    </ul>
  </nav>
</div>
          
          <br><br><br>
<div style="height:auto; font-size:15px ;float:left;padding-left:10px;width:100%;background-color:#FFFFDA;color:#8A0000;min-width:1038px;">
<div style="width:70%; margin: 0 auto;float:left;height:500 auto">
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
