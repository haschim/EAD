<%@ page language="java" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
<head>
	<title>Input Name Page</title>
</head>
<body>
<f:view>
	<h:form>
		<h:outputText value="Enter your name:" />
		<h:inputText value="#{userManagedBean.userName}" />
		<h:commandButton action="result" value="OK" />
	</h:form>
</f:view>
</body>
</html>