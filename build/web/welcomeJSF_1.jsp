<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://myfaces.apache.org/tomahawk" prefix="t" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Upload here</title>
    </head>
    <body>
        <f:view>
            <h:form enctype="multipart/form-data">
                
            <center><br><br><br>
                <h:dataTable  value="#{usertest.showData}"
                             var="item" bgcolor="#F1F1F1" border="10" cellpadding="8"
                             width="100%" styleClass="order-table"
                             headerClass="order-table-header" rowClasses="order-table-odd-row,order-table-even-row">
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="ImageId" />
                        </f:facet>
                        <h:outputText value="#{item.imageID}"/>
                    </h:column>
                  
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Image" />
                        </f:facet>
                        <h:outputLink value="RetrieveImage?Image_id=#{item.imageID}" target="_blank" >
                            <h:graphicImage value="RetrieveImage?Image_id=#{item.imageID}" width="100" height="100"></h:graphicImage>
                        </h:outputLink>
                        
                    </h:column>
                </h:dataTable><br>
            </center>
        </h:form>
    </f:view>
</body>
</html>