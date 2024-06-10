/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RetrieveImage extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 4593558495041379082L;

    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        Statement stmt = null;
//PreparedStatement ps;
        ResultSet rs;
        InputStream sImage;

        try {

            String idd = request.getParameter("Image_id");
            System.out.println("inside servlet–>" + idd);

            Connection con = DatabaseConnection.Database.getConnection();
          
            stmt = con.createStatement();
            String strSql = "select image from userregist where id='" + idd + "' ";
            System.out.println("inside servlet Sql–>" + strSql);
            rs = stmt.executeQuery(strSql);
            if (rs.next()) {
                byte[] bytearray = new byte[1048576];
                int size = 0;
                sImage = rs.getBinaryStream(1);
                response.reset();
                response.setContentType("image/jpeg");
                while ((size = sImage.read(bytearray)) != -1) {
                    response.getOutputStream().
                            write(bytearray, 0, size);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
