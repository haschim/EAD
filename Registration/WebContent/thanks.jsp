<%@ page language="java"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Thanks</title>
	</head>
<body>
	<f:view>
		<h:outputText value="Thanks "/>
		<h:outputText value="#{registration1.name}" />
		<h:outputText value="! Your details have been recorded." />
	</f:view>
</body>
</html>