<%@ page language="java" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
<head>
	<title>Result Page</title>
</head>
<body>
	<f:view>
		<h:outputText value="Welcome #{userManagedBean.userName} to the JSF 2.0 World!" />
	</f:view>
</body>
</html>