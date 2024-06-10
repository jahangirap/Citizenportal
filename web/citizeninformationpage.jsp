<%-- 
    Document   : citizeninformationpage
    Created on : May 27, 2012, 10:06:09 AM
    Author     : jakaria imtiaz
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>  
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
            <script language="javascript">
            function showFull(id){
                window.open('http://localhost:8080/CitizenPortal/faces/personalfullinformation.jsp?id='+id,'mywindow','width=1200, height=1000,toolbar=no,resizable=yes,menubar=yes');
            }
            </script>
        </head>
        <body> 
           <table border="1">
               <tr><th>ID</th><th>Name_of_Citizen</th><th>Father's_Name</th><th>Mother's_Name</th><th>Email_ID</th><th>Phone_Number</th>
               <th>Date_of_Birth</th><th>Religion</th><th>Gender</th><th>National_Id_No</th></tr>
            <%
              try {
                    Connection con = DatabaseConnection.Database.getConnection();
                    Statement st;
                    String query = "select * from userregist";
                    st = con.createStatement();
                    ResultSet rs = st.executeQuery(query);
            %>

            <%
                while (rs.next()) {
            %>
            <tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
                <td><%=rs.getString(11)%></td>
                <td><%=rs.getString(13)%></td>                
                <td><%=rs.getString(15)%></td>
                <td><input type="button" name="Full Information" value="Full Information" style="background-color:#49743D;font-weight:bold;color:#ffffff;" 
                           onclick="showFull(<%=rs.getString(1)%>);" ></td>
               </tr>
            <%
                }
            %>
            <%
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
        </body>
    </html>
</f:view>
