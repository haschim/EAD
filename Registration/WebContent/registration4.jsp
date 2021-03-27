<%@ page language="java"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Registration with validation JSF</title>
	</head>
<body>

<f:view>
 <h:form>	
	NIC: <h:inputText value="#{registration4.nic}" required="true" id="nic" 
	label="NIC" />
	<h:message for="nic" errorStyle="color:red" /><br>
		
	Name: <h:inputText value="#{registration4.name}" required="true" id="name" 
	label="Name"/><br>
		
	Age: <h:inputText value="#{registration4.numericAge}" id="age" label="Age" 
	validator="#{registration4.validateAge}"/>
	<h:message for="age" style="color:red" /><br>
		
	Telephone: <h:inputText value="#{registration4.numericTelephone}" id="tel" label="Telephone" 
	validator="#{registration4.validateTel}" />
	<h:message for="tel" style="color:red" /><br>
		
		<h:commandButton value="Register" action="#{registration4.register}" />
 </h:form>
</f:view>

</body>
</html>