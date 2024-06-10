<%-- 
    Document   : table
    Created on : May 25, 2012, 12:03:13 PM
    Author     : jakaria imtiaz
--%>


<%@ page import="java.sql.*" %>
<html>
    <head>
        <script language="javascript">
            function editRecord(id){
                window.open('http://localhost:8080/CitizenPortal/faces/edituser.jsp?id='+id,'mywindow','width=600, height=350,toolbar=no,resizable=yes,menubar=yes');
            }
            function deleteRecord(id){
                window.open('http://localhost:8080/CitizenPortal/faces/deleteuser.jsp?id='+id,'mywindow','width=600, height=350,toolbar=no,resizable=yes,menubar=yes');
            }
        </script>
    </head>
    <body>

        <br><br>
        <table border="1">
            <tr><th>FirstName</th><th>LastName</th><th>Address</th><th>Email</th><th>Edit</th><th>Delete</th></tr>
            <%


                int sumcount = 0;

                try {
                    Connection con = DatabaseConnection.Database.getConnection();
                    Statement st;
                    String query = "select * from register";
                    st = con.createStatement();
                    ResultSet rs = st.executeQuery(query);
            %>

            <%
                while (rs.next()) {
            %>
            <tr><td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><input type="button" name="edit" value="Edit" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
                <td><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:bold;color:#ffffff;" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>
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
    </form>

    
</body>
</html>