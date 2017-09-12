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
import java.sql.*;
public class ServerImpl extends UnicastRemoteObject implements Interface {
     public ServerImpl() throws RemoteException
    {
        super();
    }
    public String Validate(String n) throws RemoteException
    
    {    
      if(n.matches(""))
          return "false";
                  
       else
          return "true";

}
}