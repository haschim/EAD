<%@ page language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Dental Payment Form</title>
</head>
<body>
	<f:view>
		<h:form>
			<h3>Dental Payment Form</h3>

			<h:selectOneRadio value="#{dental.type}">
				<f:selectItem itemValue="reg" itemLabel="Regular"/>
				<f:selectItem itemValue="vis" itemLabel="Visiting"/>
			</h:selectOneRadio>
			
			<br>
			
			<h:selectManyCheckbox value="#{dental.tasks}">
				<f:selectItem itemValue="cleaning" itemLabel="Cleaning" />
				<f:selectItem itemValue="cavityFilling" itemLabel="Cavity Filling" />
				<f:selectItem itemValue="xray" itemLabel="X-Ray" />
			</h:selectManyCheckbox>
		
			<br>
		
			<h:commandButton action="#{dental.calculate}" value="Calculate"  />
			<br><br>
			
			<b><h:outputText value="Total Rs: #{dental.total}" /></b>
		</h:form>
	</f:view>
</body>
</html>