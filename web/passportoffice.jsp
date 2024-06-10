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
            <title>Passport office</title>
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
            </style>
        </head>
        <body>
            <rich:panel styleClass="div1">

            </rich:panel> 
            <rich:panel styleClass="div2">

            </rich:panel>
            <rich:panel styleClass="div3">
               
            </rich:panel>
        </body>
    </html>
</f:view>
