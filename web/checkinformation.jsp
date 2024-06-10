<%-- 
    Document   : checkinformation
    Created on : May 25, 2012, 4:14:32 PM
    Author     : jakaria imtiaz
--%>
<%@taglib prefix="a4j"  uri="http://richfaces.org/a4j"%>
<%@taglib prefix="rich"  uri="http://richfaces.org/rich"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <style>
                .div1{
                    position: absolute;
                    top: 0%;
                    right: 50%;
                    left: 0%;
                   
                  background-color: cyan;
                }
            </style>
        </head>
        <body>
            <h:form>
                <rich:panel header="Show Information">
                <center>   <table border="2">
                        <tr><td>   <h:outputLabel value="Name :"/> </td><td>   <h:inputText id="name1" value="#{usertest.name}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Father's Name :"/>  </td><td>   <h:inputText id="fname1" value="#{usertest.fname}"/></td></tr><br/>
                        <tr><td>   <h:outputLabel value="Mother's Name :"/>  </td><td>   <h:inputText id="mname1" value="#{usertest.mname}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Present Address :"/> </td><td>   <h:inputText id="paddress1" value="#{usertest.paddress}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Permanent Address :"/> </td><td>   <h:inputText id="praddress1" value="#{usertest.praddress}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Email :"/>  </td><td>  <h:inputText id="email1" value="#{usertest.email}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Phone :"/> </td><td>   <h:inputText id="phone1" value="#{usertest.phone}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Date of Birth :"/> </td><td>    <h:inputText id="da1" value="#{usertest.da}"/></td></tr><br/>
                        <tr><td>   <h:outputLabel value="Education :"/>  </td><td>  <h:inputText id="education1" value="#{usertest.education}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Religion :"/> </td><td>   <h:inputText id="religion1" value="#{usertest.religion}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Marital Status :"/> </td><td>   <h:inputText id="marital1" value="#{usertest.marital}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Gender :"/>  </td><td>  <h:inputText id="gender1" value="#{usertest.gender}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Nationality :"/> </td><td>   <h:inputText id="nationality1" value="#{usertest.nationality}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="National Id No :"/> </td><td>   <h:inputText id="nationalid1" value="#{usertest.nationalid}"/></td></tr><br/>
                        <tr><td>   <h:outputLabel value="Driving Licence :"/> </td><td>   <h:inputText id="drivinglicence1" value="#{usertest.drivinglicence}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Passport No :"/>  </td><td>  <h:inputText id="passportnumber1" value="#{usertest.passportnumber}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Occupation :"/> </td><td>   <h:inputText id="occupation1" value="#{usertest.occupation}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Blood Group :"/> </td><td>   <h:inputText id="blood1" value="#{usertest.blood}"/></td></tr><br/>
                        <tr><td>  <h:outputLabel value="Freedom Fighter's Son/Daughter :"/></td><td>    <h:inputText id="freedom1" value="#{usertest.freedom}"/></td></tr>
                    </table></center>
                    </rich:panel>
                    <h:commandButton value="Submit" action="#{usertest.form}"></h:commandButton>
                    
                    
                
            </h:form>
        </body>
    </html>
</f:view>