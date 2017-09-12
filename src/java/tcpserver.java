/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class tcpserver {
    public static void main(String args[]){ 
        String regno,name,gender,email,dob,phone;
        try {
           
            
             int portNumber = 8084;
             String data="SERVER IS RUNNING";
            ServerSocket self = new ServerSocket(portNumber);
                  
                  Socket client = self.accept();
                  System.out.println("Server Ready");
                  PrintWriter out = new PrintWriter(client.getOutputStream(), true);
                 // System.out.println("Sending data: "+data);
                  BufferedReader in = new BufferedReader(new InputStreamReader(client.getInputStream()));
                 // while(!in.ready()){}
                 // regno=in.readLine();
                 // name=in.readLine();
                  //gender=in.readLine();
                 // email=in.readLine();
                 // phone=in.readLine();
                 // System.out.println("Server ready :AT SERVER");
                 // String n="";
                  //out.print("Data has been recieved by Server"+email);
                  
                 //Connection conn ;
		 //String url = "jdbc:mysql://localhost/";
		// String dbName = "project";
        
		//  String driver = "com.mysql.jdbc.Driver";
		// String userName = "root"; 
		 // String password = "family";
                
               /* try{
                  Class.forName(driver).newInstance();
                  conn = DriverManager.getConnection(url+dbName,userName,password);
                  Statement st = conn.createStatement();
                  String sql="insert into student values('"+regno+"','"+name+"','"+gender+"','"+email+"','"+dob+"','"+phone+"','"+n+"','"+n+"')";
                   st.executeUpdate(sql);
                  
                  }
              catch(Exception e)
              {
                  out.println("error in server"+e);
              }*/
            
                 
             out.println(data);
             
         while(!in.ready()){}
             System.out.println("Registration no "+in.readLine()+" added into database");   
             
             out.close();
             client.close();
             self.close();
             } catch (IOException ex) {
             System.out.println("server problem"+ex); 
             }
             }
         
    }


