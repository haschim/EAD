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
	NIC: <h:inputText value="#{registration2.nic}" required="true" id="nic" label="NIC" >
		<f:validateLength minimum="14" maximum="15"/>
	</h:inputText>
	<h:message for="nic" errorStyle="color:red" /><br>
	
	Name: <h:inputText value="#{registration2.name}" required="true" id="name" label="Name"
	requiredMessage="Name cannot be blank" validatorMessage="Name is not valid">
	<f:validateRegex pattern="[a-zA-Z]+"/></h:inputText>
	<h:message for="name" errorStyle="color:red" /><br>
	
	Age: <h:inputText value="#{registration2.numericAge}" id="age" label="Age" >
		<f:validateLongRange minimum="18" maximum="40"/>
	</h:inputText>
	<h:message for="age" errorStyle="color:red" /><br>
	
	Telephone: <h:inputText value="#{registration2.numericTelephone}" id="tel" label="Telephone" >
		<f:validateLength minimum="7" maximum="7"/>
	</h:inputText>
	<h:message for="tel" errorStyle="color:red" /><br>
	
	<h:commandButton value="Register" action="#{registration2.register}" />
 </h:form>
</f:view>

</body>
</html>