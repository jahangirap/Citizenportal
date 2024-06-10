

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j"%>  
<%@ taglib uri="http://richfaces.org/rich" prefix="rich"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
            <style>
                .div1{
                    position: absolute;
                    top: 0%;
                    left: 0%;
                    right: 0%;
                    bottom: 81%;
                   background-image: url('3.gif');
                  
                  
                }
                .div2{
                    position: absolute;
                    top: 19%;
                    left: 0%;
                    right: 0%;
                    bottom: 0%;
                 background-image: url('lots-of-people.jpeg')

                }
               
                .div3{
                    position: absolute;
                    top: 20%;
                    left: 30%;
                    right: 30%;
                    bottom: 45%;
                    background-color:aliceblue;
                    color: blue;

                    font-size: xx-large;
                }
                .div4{
                    position: absolute;
                    top: 80%;
                    left: 0%;
                    right: 0%;
                    bottom: 0%;
                 background-image: url('footer_img.jpg')

                }
               
            </style>
        </head>
        <body>
            <rich:panel styleClass="div1">
                
            </rich:panel>

            <rich:panel styleClass="div2">
                <h:form>
                    <rich:panel header="Please Login" styleClass="div3">


                        <h:selectOneRadio value="#{Conf.radd}">
                                     <f:selectItem id="item1" itemLabel="General Citizen" itemValue="2" />
                                     <f:selectItem id="item2" itemLabel="Govt. Department" itemValue="1" />
                                    </h:selectOneRadio>

                        
                        <center><table>
                                
                                <tr><td style="color: blue">User Name:</td><td><h:inputText size="25" value="#{Conf.user}"/></td>
                                    <td><h:outputText value="#{Conf.mes}"/></td></tr>
                                <tr><td style="color: blue">Password:</td><td><h:inputSecret size="25" value="#{Conf.pass}"/></td></tr>
                                <tr><td></td><td></td></tr>
                                <tr><td></td><td><center><h:commandButton value="LOGIN" action="#{Conf.sss}"/></center></td></tr>
                                 </table></center>
                        Don't have any User_Name ?<br/>
                        Click here for
                         <h:commandLink value="User Registration" action="#{newclass.nnn}"/>
                    </rich:panel>
                   
                </h:form>
            </rich:panel>  
                        <rich:panel styleClass="div4">
                
            </rich:panel>
                        </f:view>
            </body>
        </html>
