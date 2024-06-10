<% if
    (session.getAttribute("sessionname") == null)
             {  response.sendRedirect("welcomeJSF.jsp");
}%>
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
            <title>Citizen Home Page</title>
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
                   
                }
            </style>
        </head>
        <body>
            <h:form>
            <rich:panel styleClass="div1">


            </rich:panel> 
            <rich:panel styleClass="div2">

            </rich:panel>
            <rich:panel styleClass="div3">
                <h:selectOneRadio value="#{newclass.rad}">
  <f:selectItem id="item1" itemLabel="News" itemValue="1" />
  <f:selectItem id="item2" itemLabel="Sports" itemValue="2" />
  <f:selectItem id="item3" itemLabel="Music" itemValue="3" />
  <f:selectItem id="item4" itemLabel="Java" itemValue="4" />
  <f:selectItem id="item5" itemLabel="Web" itemValue="5" />
</h:selectOneRadio>
                
                <h:selectManyCheckbox value="#{newclass.che}">
                    <f:selectItem itemLabel="S.S.C" itemValue="S.S.C"/>
                    <f:selectItem itemLabel="H.S.C" itemValue="H.S.C"/>
                </h:selectManyCheckbox>
                
                <h:commandButton value="OK" action="#{newclass.sav}"/>
                <h:commandLink value="Log Out" action="#{newclass.main}"/>
                
                
              
            </rich:panel>
            </h:form>
        </body>
    </html>
</f:view>
