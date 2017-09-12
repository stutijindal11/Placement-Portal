/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
import java.rmi.*;  
 import java.rmi.server.*;  
 import java.rmi.registry.*;  
   
public class Server{
    public static void main(String args[])
    {
        try{
            Registry reg = LocateRegistry.createRegistry(9798);  
            ServerImpl s = new ServerImpl();  
            reg.rebind("Server",s);  
                
            System.out.println("Server is ready!");
            
            
        }catch(Exception e){
            System.out.println("error in server"+e);
        }
    }
    
}
