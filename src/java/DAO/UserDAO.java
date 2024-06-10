/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;
import java.util.*;

/**
 *
 * @author jakaria imtiaz
 */
public class UserDAO {

  
    public static ArrayList<VendorBean> getVendor() {
        try {

            Connection con = DatabaseConnection.Database.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from userregist");
            ArrayList<VendorBean> al = new ArrayList<VendorBean>();
            ResultSet rs = ps.executeQuery();
            boolean found = false;
            while (rs.next()) {
                VendorBean e = new VendorBean();
                e.setVendorid(rs.getString(1));
                e.setName(rs.getString(2));
                e.setFname(rs.getString(3));
                e.setMname(rs.getString(4));
                e.setPre_address(rs.getString(5));
                e.setPer_address(rs.getString(6));
                e.setEmail(rs.getString(7));
                e.setPhone(rs.getString(8));
                e.setImage(rs.getBlob(21));
                al.add(e);
                found = true;
            }
            rs.close();
            if (found) {
                return al;
            } else {
                return null; // no entires found
            }
        } catch (Exception e) {
            System.out.println("Error In getNotice() -->" + e.getMessage());
            return (null);
        }
    }

   
}
