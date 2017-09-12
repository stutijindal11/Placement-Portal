/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class addprofile extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        
         PrintWriter out = response.getWriter();
         String regno=request.getParameter("regno");
         String name=request.getParameter("name");
         String gender=request.getParameter("gender");
         String email=request.getParameter("email");
         String dob=request.getParameter("dob");
         String phone=request.getParameter("phoneno");
         Connection conn ;
         String url = "jdbc:mysql://localhost/";
         String dbName = "portal";
        
         String driver = "com.mysql.jdbc.Driver";
	 String userName = "root"; 
         String password = "family";
                 
         String n="";
         try {
            
            /*
             * TODO output your page here. You may use following sample code.
             */
           // out.println("<html>");
           // out.println("<head>");
           // out.println("<title>Servlet addprofile</title>");            
           // out.println("</head>");
           // out.println("<body>");
           // out.println("<h1>Servlet addprofile at " + request.getContextPath() + "</h1>");
           // out.println("</body>");
           // out.println("</html>");
            
            Socket skt=new Socket("127.0.0.1",8084);
            PrintWriter out1 = new PrintWriter(skt.getOutputStream(), true);
            BufferedReader in=new BufferedReader(new InputStreamReader(skt.getInputStream()));
            
            //out1.print("110911544");
            //out1.print("sanjana");
            //out1.print("female");
            //out1.print("sanjanachawla@yahoo.co.in");
            //out1.print("1993-13-24");
            //out1.print("9008756450");
            //out.println("Data sent to server");
          
            
            
            //out.println("Recieved data is");
            while(!in.ready()){}
            out.println(in.readLine());
            out.println("\n");
            
            
           
           try{
                  Class.forName(driver).newInstance();
                  conn = DriverManager.getConnection(url+dbName,userName,password);
                  Statement st = conn.createStatement();
                  String sql="insert into student values('"+regno+"','"+name+"','"+gender+"','"+email+"','"+dob+"','"+phone+"','"+n+"','"+n+"')";
                   st.executeUpdate(sql);
                  
                  }
              catch(Exception e)
              {
                  out.println("error in server"+e);
              }
            
            
            out.println("Database Updated");
            out1.println(regno); 
            in.close();
            
            
            
            
        } catch(Exception e){
       out.println("eroor is "+e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
