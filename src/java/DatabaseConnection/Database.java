/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DatabaseConnection;

import java.sql.*;

/**
 *
 * @author jakaria imtiaz
 */
public class Database {
     public static Connection getConnection() 
   {
       try {
            Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection
                      ("jdbc:mysql://localhost/citizenportal",
                      "root","");
            return con;
       }
       catch(Exception ex) {
           System.out.println(ex.getMessage());
           return null;
       }
   }
  
    
}
