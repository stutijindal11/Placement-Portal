/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author Admin
 */
public class StudentSignin extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            int flag=0;
            String ureg=request.getParameter("ureg");
            String upass=request.getParameter("upass");
            Connection conn;
            Statement stmt;
            ResultSet rs;
            String driver="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost/";
            String dbname="portal";
            String userName="root";
            String Password="family";
                   
                    
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet StudentSignin</title>");            
            out.println("</head>");
            out.println("<body>");
            if(ureg.matches("")||upass.matches("")){
            out.println("Please Enter the details first");
            }
            else{
            Class.forName(driver).newInstance();
            conn=DriverManager.getConnection(url+dbname,userName, Password);
            stmt=conn.createStatement();
            String sql="Select name from Student where regno='"+ureg+"' and dob='"+upass+"'";
            rs=stmt.executeQuery(sql);
            if(rs.next() == false){
            out.println("Invalid UserName or Password");
            }
            else{
                String n=rs.getString("name");
                response.sendRedirect("Announcements.jsp?name="+n+"&regno="+ureg);
            
            }
            }
            //out.println("<h1>Servlet StudentSignin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
         
        } 
        catch(Exception e)
        {out.println(""+e);}
        finally {            
            out.close();
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
