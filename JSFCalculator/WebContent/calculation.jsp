<%@ page language="java" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
<head>
<title>Calculator</title>
</head>
<body>
	<f:view>
		<h:form>
			Enter number 1: <h:inputText id="num1" value="#{calculatorMB.num1}"/><br>
			Enter number 2: <h:inputText id="num2" value="#{calculatorMB.num2}"/><br>
			<h:selectOneRadio value="#{calculatorMB.operation}">
				<f:selectItem itemValue="add" itemLabel="Addition" />
				<f:selectItem itemValue="sub" itemLabel="Subtraction" />
				<f:selectItem itemValue="mul" itemLabel="Multiplication" />
				<f:selectItem itemValue="div" itemLabel="Division" />
			</h:selectOneRadio>
			<h:commandButton value="Perform operation" action="#{calculatorMB.calculate()}" /><br>
			<h:outputText value="#{calculatorMB.result}" />
		</h:form>
	</f:view>
</body>
</html>