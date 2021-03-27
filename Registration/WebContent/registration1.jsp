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
			<h:outputText value="#{registration1.errorMessages}" escape="false" /><br>
			
			NIC: <h:inputText value="#{registration1.nic}" /><br>
			
			Name: <h:inputText value="#{registration1.name}" /><br>
			
			Age: <h:inputText value="#{registration1.age}" /><br>
			
			Telephone: <h:inputText value="#{registration1.telephone}" /><br>
			
			<h:commandButton value="Register" action="#{registration1.register}" />
			
			
		</h:form>
	</f:view>
</body>
</html>