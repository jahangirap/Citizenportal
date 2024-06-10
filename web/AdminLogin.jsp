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
            <title>Administration Page</title>
            <style>
                .div1{
                    position: absolute;
                    top: 0%;
                    left: 0%;
                    right: 0%;
                    bottom: 90%;
                    background-image: url('citizens_banner.jpg');
                }
                .div2{
                    position: absolute;
                    top: 80%;
                    left: 0%;
                    right: 0%;
                    bottom: 0%;
                    background-image: url('footer_img.jpg');
                }
                .div3{
                    position: absolute;
                    top: 10%;
                    left: 0%;
                    right: 0%;
                    bottom: 20%;
                    background-color: black;
                }
                .div4{
                    position: absolute;
                    top: 0%;
                    left: 0%;
                    right: 0%;
                    bottom:88%;
                    background-color: cyan;
                }
                .div5{
                    position: absolute;
                    top: 55%;
                    left: 02%;
                    right: 70%;
                    bottom:10%;
                    background-color: cyan;
                }
                .div6{
                    position: absolute;
                    top: 75%;
                    left: 0%;
                    right: 0%;
                    bottom:0%;

                }
               
            </style>
        </head>
        <body>
            <rich:panel styleClass="div1">
              
            </rich:panel> 
            <rich:panel styleClass="div2">
                   </rich:panel>
            <rich:panel styleClass="div3">
                <rich:panel styleClass="div4">
                  <h:form>
                      <rich:toolBar width="100%">

                    <rich:dropDownMenu >
                        <f:facet name="label">
                            <h:panelGroup>

                                <h:outputText value="HOME & LIVING" />

                            </h:panelGroup>
                        </f:facet>
                        <rich:menuItem >Auto Care</rich:menuItem>
                        <rich:menuItem >Bad & Bath</rich:menuItem>
                        <rich:menuItem >Kitchen & Dining</rich:menuItem>
                        <rich:menuItem >Luggage</rich:menuItem>
                        <rich:menuItem >Home Improvement</rich:menuItem>
                        <rich:menuItem >Home Decor</rich:menuItem>
                        <rich:menuItem >Magazines & Books</rich:menuItem>
                        <rich:menuItem >Home Furnishing</rich:menuItem>
                        <rich:menuItem >Sports & Outdoor</rich:menuItem>


                    </rich:dropDownMenu>

                    <rich:dropDownMenu>
                        <f:facet name="label">
                            <h:panelGroup>

                                <h:outputText value="File" />

                            </h:panelGroup>
                        </f:facet>
                        <rich:menuItem submitMode="ajax" value="Access Controll" action="#{navigate.accesscontroll}"/>
                        <rich:menuItem submitMode="ajax" value="Citizen Information" action="#{navigate.citizeninformationpage}"/>
                        <rich:menuGroup value="Save As...">
                            <rich:menuItem submitMode="ajax" value="Text File" action="#{ddmenu.doSaveText}"/>
                            <rich:menuItem submitMode="ajax" value="PDF File" action="#{ddmenu.doSavePDF}"/>
                             <rich:menuItem submitMode="ajax" value="Close" action="#{ddmenu.doClose}"/>
                        <rich:menuSeparator id="menuSeparator11"/>
                        
                        </rich:menuGroup>
                       <rich:menuItem submitMode="ajax" value="Exit" action="#{ddmenu.doExit}"/>
                        
                    </rich:dropDownMenu>
                    
                   
                    </rich:toolBar>
                </h:form>
                </rich:panel>
            </rich:panel>
        </body>
    </html>
</f:view>
