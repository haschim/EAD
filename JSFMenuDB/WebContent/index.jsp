<%@ page language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>UOM Catering System</title>
</head>
<body>
	<f:view>
		<h:form>
			<h3>UOM Catering System</h3>
			
			<h3>1. Select Your Starter(s)</h3>
			<h:selectManyListbox value="#{menu.starter}">
				<f:selectItems value="#{menu.startersValues}"/>
			</h:selectManyListbox>

			<h3>2. Select Your Meal(s)</h3>
			<h:selectManyListbox value="#{menu.meal}">
				<f:selectItems value="#{menu.mealsValues}"/>
			</h:selectManyListbox>
			
			<br><br>
			
			<h:commandButton action="#{menu.calculate}" value="Calculate" />
			<br><br> 
			Total: Rs <h:outputText value="#{menu.total}" />
			
		</h:form>
	</f:view>
</body>
</html>