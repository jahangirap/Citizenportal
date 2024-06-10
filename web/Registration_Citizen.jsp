<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="a4j"  uri="http://richfaces.org/a4j"%>
<%@taglib prefix="rich"  uri="http://richfaces.org/rich"%>
<%@taglib uri="http://myfaces.apache.org/tomahawk" prefix="t"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>User Registration Form</title>
            <style>



                .s1{

                    font-size: 30px;
                    font-style: inherit;
                    color: blue;
                    font-family: fantasy;

                }


            </style>
        </head>
        <body bgcolor="skyblue">
            <h:form enctype="multipart/form-data">


                <rich:panel header="Citizen Registration">

                    <table>   
                        <tr><td>Image :</td><td><t:inputFileUpload value="#{usertest.uploadedFile}" size="20" /></td></tr>
                        <tr><td>Name:</td><td><h:inputText size="26" value="#{usertest.name}"></h:inputText></td></tr>
                        <tr><td>Father's Name:</td><td><h:inputText size="26" value="#{usertest.fname}"></h:inputText></td></tr>
                        <tr><td>Mother's Name:</td><td><h:inputText size="26" value="#{usertest.mname}"></h:inputText></td></tr>
                        <tr><td>Present Address:</td><td><h:inputTextarea value="#{usertest.paddress}"></h:inputTextarea></td></tr>
                        <tr><td>Permanent Address:</td><td><h:inputTextarea value="#{usertest.praddress}"></h:inputTextarea></td></tr>
                        <tr><td>Email Address:</td><td><h:inputText size="26" value="#{usertest.email}"></h:inputText></td></tr>
                        <tr><td>Phone Number:</td><td><h:inputText size="26" value="#{usertest.phone}"></h:inputText></td></tr>
                        <tr><td>Date of Birth:</td><td><rich:calendar value="#{usertest.da}"></rich:calendar></td></tr>
                            <tr>
                                <td>Educational Qualification:</td> 
                                <td><h:selectManyCheckbox value="#{usertest.education}">
                                    <f:selectItem itemValue="S.S.C" itemLabel="S.S.C" />
                                    <f:selectItem itemValue="H.S.C" itemLabel="H.S.C" />
                                    <f:selectItem itemValue="Graduate" itemLabel="Graduate" />
                                    <f:selectItem itemValue="Masters" itemLabel=" Post Graduate" />
                                    <f:selectItem itemValue="Others" itemLabel="Others" />
                                </h:selectManyCheckbox></td>

                        </tr>
                        <tr>
                            <td>Religion:</td> 
                            <td><h:selectOneMenu value="#{usertest.religion}">
                                    <f:selectItem itemValue="" itemLabel="Select One" />
                                    <f:selectItem itemValue="Islam" itemLabel="Islam" />
                                    <f:selectItem itemValue="Hindus" itemLabel="Hindus" />
                                    <f:selectItem itemValue="Christian" itemLabel="Christian" />
                                    <f:selectItem itemValue="Buddist" itemLabel=" Buddist" />
                                    <f:selectItem itemValue="Others" itemLabel="Others" />
                                </h:selectOneMenu></td>
                        </tr>
                        <tr>
                            <td>Marital Status:</td> 
                            <td><h:selectOneRadio value="#{usertest.marital}">
                                    <f:selectItem itemValue="Single" itemLabel="Single" />
                                    <f:selectItem itemValue="Married" itemLabel="Married" />
                                </h:selectOneRadio></td>
                        </tr>
                        <tr>
                            <td>Gender:</td> 
                            <td><h:selectOneRadio value="#{usertest.gender}">
                                    <f:selectItem itemValue="Male" itemLabel="Male" />
                                    <f:selectItem itemValue="Female" itemLabel="Female" />


                                </h:selectOneRadio></td>
                        </tr>
                        <tr>
                            <td>Nationality:</td> 
                            <td><h:selectOneRadio value="#{usertest.nationality}">
                                    <f:selectItem itemValue="Bangladeshi" itemLabel="Bangladeshi" />
                                    <f:selectItem itemValue="Others" itemLabel="Others" />

                                </h:selectOneRadio></td>
                        </tr>
                        <tr><td>National id(if any):</td><td><h:inputText size="26" value="#{usertest.national_id}"></h:inputText></td></tr>
                        <tr><td>Driving License(if any):</td><td><h:inputText size="26" value="#{usertest.drivinglicence}"></h:inputText></td></tr>
                        <tr><td>Passport Number(if any):</td><td><h:inputText size="26" value="#{usertest.passportnumber}"></h:inputText></td></tr>
                        <tr><td>Occupation:</td><td><h:inputText size="26" value="#{usertest.occupation}"></h:inputText></td>
                            <tr>
                                <td>Blood Group :</td> 
                                <td><h:selectOneMenu id="h7" value="#{usertest.blood}">
                                    <f:selectItem itemValue="" itemLabel="Select One" />
                                    <f:selectItem itemValue="A+" itemLabel="A+" />
                                    <f:selectItem itemValue="A-" itemLabel="A-" />
                                    <f:selectItem itemValue="AB+" itemLabel="AB+" />
                                    <f:selectItem itemValue="AB-" itemLabel="AB-" />
                                    <f:selectItem itemValue="B+" itemLabel="B+" />
                                    <f:selectItem itemValue="B-" itemLabel="B-" />
                                    <f:selectItem itemValue="O+" itemLabel="O+" />
                                    <f:selectItem itemValue="O-" itemLabel="O-" />
                                </h:selectOneMenu></td>
                        </tr>

                        <tr>
                            <td>Freedom fighter's(son/daughter):</td> 
                            <td>
                                <h:selectOneRadio value="#{usertest.freedom}">
                                    <f:selectItem itemValue="Yes" itemLabel="Yes" />
                                    <f:selectItem itemValue="No" itemLabel="No" />


                                </h:selectOneRadio></td>
                        </tr>

                    </table>

                        <h:commandButton value="Submit" action="#{usertest.form()}"></h:commandButton>
                    <h:outputText value="#{usertest.message}"/>

                </rich:panel>



            </h:form>
        </f:view>

    </body>
</html>

