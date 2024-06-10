<%-- 
    Document   : RegistrationShow
    Created on : Nov 27, 2021, 7:58:06 PM
    Author     : Dept. Of ICT MBSadar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                
                <center>

                    <h:dataTable value="#{usertest.showData}" var="cat"  border="2" >
                        <%--  <h:column> 
                        <f:facet name="header">
                            <h:outputText value="ImageId" />
                        </f:facet>
                                           
                        <h:outputText value="#{cat.imageID}"/>
                    </h:column> --%>
                    
                    
                        <center>  <h:column>
                            <f:facet name="header" >
                                <h:outputText value="Name"  />
                                </f:facet>
                            <h:outputText value="#{cat.name}"></h:outputText>

                        </h:column></center> 

 
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="FatherName" />
                                </f:facet>
<h:outputText value="#{cat.fname}"></h:outputText> 

                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="MothersName" />
                                </f:facet>
                            <h:outputText value="#{cat.mname}"></h:outputText>

                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                 <h:outputText value="PresentAdd" />
                                </f:facet>
                            <h:outputText value="#{cat.praddress}"></h:outputText>

                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                  <h:outputText value="ParmaAdd" />
                                </f:facet>
                            <h:outputText value="#{cat.paddress}"></h:outputText>
                        </h:column>
  
           
                        <h:column>
                            <f:facet name="header">
                                 <h:outputText value="Email" />
                                </f:facet>
                            <h:outputText value="#{cat.email}"></h:outputText>
                        </h:column>

                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Phone" />
                                </f:facet>
                            <h:outputText value="#{cat.phone}"></h:outputText>
                        </h:column>
                      
                          
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Education" />
                                </f:facet>
                            <h:outputText value="#{cat.education}"></h:outputText>
                        </h:column>
                           
                       
                       
                        <h:column>
                            <f:facet name="header">
                                  <h:outputText value="religion" />
                                </f:facet>
                            <h:outputText value="#{cat.religion}"></h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                 <h:outputText value="marital" />
                                </f:facet>
                            <h:outputText value="#{cat.marital}"></h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                  <h:outputText value="gender" />
                                </f:facet>
                            <h:outputText value="#{cat.gender}"></h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                             <h:outputText value="nationality" />
                            </f:facet>
                            <h:outputText value="#{cat.nationality}"></h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                             <h:outputText value="national_id" />
                            </f:facet>
                            <h:outputText value="#{cat.national_id}"></h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                 <h:outputText value="passport" />
                                </f:facet>
                            <h:outputText value="#{cat.passportnumber}"></h:outputText>
                        </h:column>
                        
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="driving_licence" />
                                </f:facet>
                            <h:outputText value="#{cat.drivinglicence}"></h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="occupation" />
                                </f:facet>
                            <h:outputText value="#{cat.occupation}"></h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                             <h:outputText value="freedom_fighter" />
                            </f:facet>
                            <h:outputText value="#{cat.freedom}"></h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Blood_Group" />
                            </f:facet>
                            <h:outputText value="#{cat.blood}"></h:outputText>
                        </h:column>
                      <h:column>
                        <f:facet name="header">
                            <h:outputText value="Image" />
                        </f:facet>
                        <h:outputLink value="RetrieveImage?Image_id=#{cat.imageID}" target="_blank" >
                            <h:graphicImage value="RetrieveImage?Image_id=#{cat.imageID}" width="500" height="200"></h:graphicImage>
                        </h:outputLink>
                        
                    </h:column>
                            
                    </h:dataTable>
                        
                 
                </center>     
        
                
                
   </h:form>
        </body>
    </html>
</f:view>
