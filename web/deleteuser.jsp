<%-- 
    Document   : deleteuser
    Created on : May 25, 2012, 1:07:26 PM
    Author     : jakaria imtiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@page language="java"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {

Connection con = DatabaseConnection.Database.getConnection();
String query = "select * from register where id='"+no+"'";
Statement st = con.createStatement();
st.executeUpdate("DELETE FROM register WHERE id = '"+no+"'");
out.println("Record is deleted successfully");
}
catch(Exception e){}
%>

</html>
