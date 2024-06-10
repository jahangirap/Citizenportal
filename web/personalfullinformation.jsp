<%-- 
    Document   : personalfullinformation
    Created on : May 27, 2012, 11:20:41 AM
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
        </head>
        <body>
           
            <rich:panel header="Information Page">
                   <h:form>
            <rich:tabPanel>
                 
                <rich:tab label="Address">
                    <%
   
        String id = request.getParameter("id");
        int no = Integer.parseInt(id);
       
             try {
                    Connection con = DatabaseConnection.Database.getConnection();
                    Statement st;
                    String query = "select * from userregist where id='"+no+"'";
                    st = con.createStatement();
                    ResultSet rs = st.executeQuery(query);
            %>
          

            <%
                while (rs.next()) {
            %>
                    <table cellpadding="2" cellspacing="2" bgcolor="cycan">
               <tr><th>Name_of_Citizen</th><th>Father's_Name</th><th>Mother's_Name</th><th>Present_Address</th><th>Permanent_Address</th>
               <th>Phone</th><th>Email</th></tr>

        
            <tr>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(7)%></td>
                 </tr>
          
             </table>
             <%
                }
            %>
            <%
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
                </rich:tab>
                <rich:tab label="Education">
                  
                    </rich:tab>
                <rich:tab label="Crime Report">
                    
                </rich:tab>
                <rich:tab label="Contact">
                    
                </rich:tab>
          
                
            </rich:tabPanel>
             </h:form>
        </rich:panel>
           
        </body>
    </html>
</f:view>
