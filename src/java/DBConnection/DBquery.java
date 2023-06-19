/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedHashSet;
import java.util.Vector;
import DBConnection.DBFormat;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class DBquery extends DBFormat {

    Connection con = null;
    ResultSet rs = null;
    Statement st = null;
  public String login(String uname, String pass) throws ClassNotFoundException, SQLException {
        String utype = "";
        con = connect.getconnection();
        String q = "select * from login where uname = '" + uname + "' and pass = '" + pass + "'";
        st = con.createStatement();
        System.out.println("value of q" + q);
        rs = st.executeQuery(q);
        if (rs.next()) {
            utype = rs.getString("utype");
        }
        return utype;
    }
    public int add_book_det(String id, String bname, String authhor, String fname) throws ClassNotFoundException, SQLException {
        int i;
        con = connect.getconnection();
        String q = "insert into book_details values('" + id + "','" + bname + "','" + authhor + "','" + fname + "')";
        st = con.createStatement();
        i = st.executeUpdate(q);
        return i;
    }
 
    public ArrayList get_book_det(int id) throws SQLException, ClassNotFoundException {
        ArrayList al= new ArrayList();
        con = connect.getconnection();
        String q = "select * from book_details where id = '" + id + "'";
        st = con.createStatement();
        rs = st.executeQuery(q);
        while (rs.next()) {
            al.add(rs.getString("bname"));
            al.add(rs.getString("author"));
            al.add(rs.getString("fname"));
        }
        return al;
    }
  
  
 
  
   public int get_book_count() throws SQLException, ClassNotFoundException {
       int c=0;
        con = connect.getconnection();
        String q = "select count(*) from book_details ";
        st = con.createStatement();
        rs = st.executeQuery(q);
        while (rs.next()) {
           c=rs.getInt(1);
        }
        return c;
    }
  
 
  
   
   

    
}
