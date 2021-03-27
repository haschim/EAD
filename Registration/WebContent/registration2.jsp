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
	NIC: <h:inputText value="#{registration2.nic}" required="true" id="nic" label="NIC" />
	<h:message for="nic" errorStyle="color:red" /><br>
	
	Name: <h:inputText value="#{registration2.name}" required="true" id="name" label="Name" />
	<h:message for="name" errorStyle="color:red" /><br>
	
	Age: <h:inputText value="#{registration2.numericAge}" id="age" label="Age" />
	<h:message for="age" errorStyle="color:red" /><br>
	
	Telephone: <h:inputText value="#{registration2.numericTelephone}" id="tel" label="Telephone" />
	<h:message for="tel" errorStyle="color:red" /><br>
	
	<h:commandButton value="Register" action="#{registration2.register}" />
</h:form>
</f:view>
</body>
</html>