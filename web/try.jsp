<%-- 
    Document   : try
    Created on : Jun 8, 2012, 12:00:45 AM
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
              <h:form enctype="multipart/form-data">
                  <rich:panel>
               
                    <rich:dataTable value="#{vendor.messages}" var="wonder" id="table" rows="10" width="600px" columnClasses="center">
                        <f:facet name="header">
                            <h:outputText value="Citizen Information"/>
                        </f:facet>
                        <rich:column sortBy="#{wonder.vendorid}" filterBy="#{wonder.vendorid}" filterEvent="onkeyup">
                            <f:facet name="header">
                                <h:outputText value="ID"/>
                            </f:facet>
                            <h:outputText value="#{wonder.vendorid}"/>
                        </rich:column>
                        <rich:column sortBy="#{wonder.name}" filterBy="#{wonder.name}" filterEvent="onkeyup">
                            <f:facet name="header">
                                <h:outputText value="Name"/>
                            </f:facet>
                            <h:outputLink value="newinf.jsp" >
                                <f:param name="id" value="#{wonder.vendorid}"></f:param>
                                <h:outputText value="#{wonder.name}"></h:outputText>
                            </h:outputLink>
                            
                        </rich:column>
                        <rich:column sortBy="#{wonder.fname}" filterBy="#{wonder.fname}" filterEvent="onkeyup">
                            <f:facet name="header">
                                <h:outputText value="Father's Name"/>
                            </f:facet>
                            <h:outputText value="#{wonder.fname}"/>
                        </rich:column>
                        <rich:column sortBy="#{wonder.mname}" filterBy="#{wonder.mname}" filterEvent="onkeyup">
                            <f:facet name="header">
                                <h:outputText value="Mother's Name"/>
                            </f:facet>
                            <h:outputText value="#{wonder.mname}"/>
                        </rich:column>
                        <rich:column sortBy="#{wonder.pre_address}" filterBy="#{wonder.pre_address}" filterEvent="onkeyup">
                            <f:facet name="header">
                                <h:outputText value="Present Address"/>
                            </f:facet>
                            <h:outputText value="#{wonder.pre_address}"/>
                        </rich:column>
                        <rich:column sortBy="#{wonder.email}" filterBy="#{wonder.email}" filterEvent="onkeyup">
                            <f:facet name="header">
                                <h:outputText value="Email"/>
                            </f:facet>
                            <h:outputText value="#{wonder.email}"/>
                        </rich:column>
                        <rich:column sortBy="#{wonder.phone}" filterBy="#{wonder.phone}" filterEvent="onkeyup">
                            <f:facet name="header">
                                <h:outputText value="Phone"/>
                            </f:facet>
                            <h:outputText value="#{wonder.phone}"/>
                        </rich:column>
                        <h:column>
                        <f:facet name="header">
                            <h:outputText value="Image" />
                        </f:facet>
                        <h:outputLink value="RetrieveImage?id=#{wonder.vendorid}" target="_blank" >
                            <h:graphicImage value="RetrieveImage?id=#{wonder.vendorid}" width="100" height="100"></h:graphicImage>
                        </h:outputLink>
                        
                    </h:column>
                        <f:facet name="footer">
                            <rich:datascroller id="ds"></rich:datascroller>
                        </f:facet>
                    </rich:dataTable>
                </rich:panel>
            </h:form>
          
        </body>
    </html>
</f:view>
