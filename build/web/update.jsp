<%-- 
    Document   : update
    Created on : May 25, 2012, 1:12:43 PM
    Author     : jakaria imtiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@page import="java.sql.*"%>
    <%
        String id = request.getParameter("id");
        int no = Integer.parseInt(id);
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        try {
           
            Connection con = DatabaseConnection.Database.getConnection();

            Statement st = null;
            st = con.createStatement();
            st.executeUpdate("update register set firstname='" + firstname + "',lastname='" + lastname + "',address='" + address + "',email='" + email + "' where id='" + no + "'");
            out.println("Data is updated successfully");
        } catch (Exception e) {
            out.println(e);
        }
    %>

</html>
