/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
import java.rmi.*;

public interface Interface extends Remote{
  String Validate(String n) throws RemoteException;

    
}
