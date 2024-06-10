<%-- 
    Document   : newinf
    Created on : Jun 8, 2012, 12:39:21 AM
    Author     : jakaria imtiaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
        </head>
        <body>
            <h:form>
                <rich:panel header="Citizen Full Information">
                    <center> <rich:panel header="Introduction">

                            <table>
                                <tr>
                                    <td style="color: black">Name:</td>
                                    <td><h:outputText value="#{vendor.name}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Father's Name:</td>
                                    <td><h:outputText value="#{vendor.fa_name}"/></td>
                                </tr>
                                <tr>

                                    <td style="color: black">Mother's Name:</td>
                                    <td><h:outputText value="#{vendor.ma_name}"/></td>

                                </tr>
                                <tr>
                                    <td style="color: black"> Present Address:</td>
                                    <td><h:outputText value="#{vendor.pre_address}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black"> Permanent Address:</td>
                                    <td><h:outputText value="#{vendor.per_address}"/></td>
                                </tr>

                                <tr>
                                    <td style="color: black">Email:</td> <td> <h:outputText value="#{vendor.email}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Phone :</td> <td> <h:outputText value="#{vendor.phone}"/></td>
                                </tr>
                                 <tr>
                                    <td style="color: black">Occupation :</td> <td> <h:outputText value="#{vendor.occupation}"/></td>
                                </tr>
                            </table>
                        </rich:panel>
                        <rich:panel header="Education">

                            <table>
                                <tr>
                                    <td style="color: black">Educational Qualification:</td>
                                    <td><h:outputText value="#{vendor.edu}"/></td>
                                </tr>

                            </table>
                        </rich:panel>
                        <rich:panel header="Crime Report">

                            <table>
                                <tr>
                                    <td style="color: black">Type of Crime :</td>
                                    <td><h:outputText value="#{vendor.crime}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Date :</td>
                                    <td><h:outputText value="#{vendor.crime_date}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Comments :</td>
                                    <td><h:outputText value="#{vendor.comment}"/></td>
                                </tr>

                            </table>
                        </rich:panel>
                        <rich:panel header="Traffic Report">
 <table>
                                <tr>
                                    <td style="color: black">Driving License :</td>
                                    <td><h:outputText value="#{vendor.d_license}"/></td>
                                </tr>
 </table>

                        </rich:panel>
                        <rich:panel header="Ohters">


                        </rich:panel>
                    </center>
                </rich:panel>
            </h:form>
        </body>
    </html>
</f:view>
