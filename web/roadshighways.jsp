
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
            <title>Transport Authority</title>
            <style>
                .div1{
                    position: absolute;
                    top: 0%;
                    left: 0%;
                    right: 0%;
                    bottom: 77%;
                   
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
                    top: 0%;
                    left: 40%;
                    right: 20%;
                    bottom: 10%;
                    border: #ffffff;

                    color: blueviolet;
                }
                .div4{
                    position: absolute;
                    top:24%;
                    left: .5%;
                    right: 65%;
                    bottom: 21%;
                    border: #ffffff;

                }
                 .div5{
                    position: absolute;
                    top:24%;
                    left: 35.5%;
                    right: .5%;
                    bottom: 21%;
                    border: #ffffff;

                }
                #scrolltable{
                     height: 290px;
                    overflow-y: scroll;
                    overflow-x: auto;

                }

            </style>
        </head>
        <body bgcolor="black">
            <rich:panel styleClass="div1">
                <rich:panel styleClass="div3">
                    <center><h1 style="font-size: 30px"> BANGLADESH Traffic Control Office</h1></center>
                </rich:panel>
            </rich:panel> 

            <rich:panel styleClass="div4">
                <div id="scrolltable">
                    <h:form>
                         <h4><center><b><u>Previous Record of Citizen </u></b> </center></h4>
                     <rich:comboBox defaultLabel="Select One" value="#{vendor.id}">

                                            <f:selectItems value="#{accessuser.user_id}"/>
                                            <a4j:support event="onchange" action="#{vendor.information}" reRender="a,b,c,d,e,f,g,h,i,j,k,l,m,o,n" ajaxSingle="true"/>

                                        </rich:comboBox>
                            <table>
                                <tr><td style="color: black">Citizen ID:</td><td>


                                <tr>
                                    <td style="color: black">Name:</td>
                                    <td><h:outputText id="a" value="#{vendor.name}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Father's Name:</td>
                                    <td><h:outputText id="b" value="#{vendor.fa_name}"/></td>
                                </tr>
                                <tr>

                                    <td style="color: black">Mother's Name:</td>
                                    <td><h:outputText id="c" value="#{vendor.ma_name}"/></td>

                                </tr>
                                <tr>
                                    <td style="color: black"> Present Address:</td>
                                    <td><h:outputText id="d" value="#{vendor.pre_address}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black"> Permanent Address:</td>
                                    <td><h:outputText id="e" value="#{vendor.per_address}"/></td>
                                </tr>

                                <tr>
                                    <td style="color: black">Email:</td> <td> <h:outputText id="f" value="#{vendor.email}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Phone :</td> <td> <h:outputText id="g" value="#{vendor.phone}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Occupation :</td> <td> <h:outputText id="h" value="#{vendor.occupation}"/></td>
                                </tr>

                                <tr>
                                    <td style="color: black">Educational Qualification:</td>
                                    <td><h:outputText id="i" value="#{vendor.edu}"/></td>
                                </tr>

                                <tr>
                                    <td style="color: black">Type of Crime :</td>
                                    <td><h:outputText id="j" value="#{vendor.crime}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Date :</td>
                                    <td><h:outputText id="k" value="#{vendor.crime_date}"/></td>
                                </tr>
                                <tr>
                                    <td style="color: black">Comments :</td>
                                    <td><h:outputText id="l" value="#{vendor.comment}"/></td>
                                </tr>

                                <tr>
                                    <td style="color: black">Driving License :</td>
                                    <td><h:outputText id="m" value="#{vendor.d_license}"/></td>
                                </tr>
                               
                               
                            </table>

                    </h:form>
                </div>
            </rich:panel>
                     <rich:panel styleClass="div5">
                <div id="scrolltable">
                    <h:form>
                        <h4><center><b><u>Report Entry</u></b> </center></h4>
                       
                       
                                  <h:outputText value="#{vendor.msg}"/>
                    </h:form>
                </div>
            </rich:panel>
            <rich:panel styleClass="div2">

            </rich:panel>

        </body>
    </html>
</f:view>
