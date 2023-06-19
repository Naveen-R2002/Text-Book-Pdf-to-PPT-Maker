/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class connect {
    public static Connection getconnection() throws ClassNotFoundException, SQLException{
        Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con= (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/EBook_To_Presentation","root","root");
        
        return con;
        }
    
}
