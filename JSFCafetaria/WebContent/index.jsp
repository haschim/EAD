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
			<h3>UOM Catering System</h3><br/>
			
			<h3>1. Select Your Starter(s)</h3>
			<h:selectManyListbox value="#{menu.starter}">
				<f:selectItem itemValue="60" itemLabel="Crispy Chicken"/>
				<f:selectItem itemValue="70" itemLabel="Coconut Lobster"/>
				<f:selectItem itemValue="45" itemLabel="Spring Rolls"/>
			</h:selectManyListbox>
			
			<h3>1. Select Your Starter(s)</h3>
			<h:selectManyListbox value="#{menu.meal}">
				<f:selectItem itemValue="100" itemLabel="Vegetables Stir Fry"/>
				<f:selectItem itemValue="125" itemLabel="Authentic Fried Rice"/>
				<f:selectItem itemValue="150" itemLabel="Fish with Black Pepper Sauce"/>
			</h:selectManyListbox>
			
			<br><br>
			
			<h:commandButton action="#{menu.calculate}" value="Calculate" />
			<br><br> Total: Rs <h:outputText value="#{menu.total}" />
		</h:form>
	</f:view>
</body>
</html>