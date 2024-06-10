<%-- 
    Document   : Access
    Created on : May 26, 2012, 11:21:41 PM
    Author     : jakaria imtiaz
--%>

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
            <rich:panel header="USER LOGIN ACCESS CONTROLL">
                <h:form>
                    <rich:tabPanel width="30%" headerAlignment="left" style="background-color:cycan">
                        <rich:tab label="Citizen Access Control">

                            <table>
                                <tr><td style="color: black">User Name:</td><td><rich:comboBox defaultLabel="Select One" value="#{accessuser.uu}">

                                            <f:selectItems value="#{accessuser.sa}"/>
                                            <a4j:support event="onchange" action="#{accessuser.acs}" reRender="aaa" ajaxSingle="true"/>

                                        </rich:comboBox></td></tr>
                                <tr><td style="color: black">Access Status:</td><td><h:inputText id="aaa" size="24" value="#{accessuser.location}"/></td></tr>
                                <tr><td style="color: black">Access:</td><td><rich:comboBox defaultLabel="Select One"  value="#{accessuser.ss}">

                                            <f:selectItem itemValue="Yes"/>
                                            <f:selectItem itemValue="No"/>
                                        </rich:comboBox></td></tr>


                            </table>
                            <h:commandButton value="UPDATE" action="#{accessuser.sav}"/>
                            <h4><font color="red"><center><h:outputText id="a" value="#{accessuser.mm}"/></center></font></h4>


                        </rich:tab>
                        <rich:tab label="Govt. Department Access Control">

                            <table>
                                <tr><td style="color: black">User Name:</td><td><rich:comboBox defaultLabel="Select Name" value="#{accessuser.uuu}">

                                            <f:selectItems value="#{accessuser.saa}"/>
                                            <a4j:support event="onchange" action="#{accessuser.acss}" reRender="good" ajaxSingle="true"/>
                                        </rich:comboBox></td></tr>
                                <tr><td style="color: black">Access Status:</td><td><h:inputText id="good" size="24" value="#{accessuser.location1}"/></td></tr>
                                <tr><td style="color: black">Access:</td><td><rich:comboBox  defaultLabel="Select One" value="#{accessuser.sss}">

                                            <f:selectItem itemValue="Yes"/>
                                            <f:selectItem itemValue="No"/>

                                        </rich:comboBox></td></tr>


                            </table>
                            <h:commandButton value="UPDATE" action="#{accessuser.sav1}"/>
                            <h4><font color="red"><center><h:outputText value="#{accessuser.mmm}"/></center></font></h4>

                        </rich:tab>

                    </rich:tabPanel>
                </h:form>

            </rich:panel>
        </body>
    </html>
</f:view>
