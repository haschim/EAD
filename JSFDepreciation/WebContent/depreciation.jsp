<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
<head>
	<title>Depreciation Calculator JSF</title>
</head>
<body>
<f:view>
<h:form>
	<h3>Depreciation Calculator</h3>
	
	Original Price: <h:inputText value="#{depreciateManagedBean.originalPrice}" /><br/>
	
	Origin:	<h:selectOneRadio value="#{depreciateManagedBean.origin}" style="display:inline-table;"> 
				<f:selectItem itemValue="japan" itemLabel="Japan" />
				<f:selectItem itemValue="europe" itemLabel="Europe" />
				<f:selectItem itemValue="others" itemLabel="Others" />
			</h:selectOneRadio>	<br/>
	
	Age: <h:inputText value="#{depreciateManagedBean.age}" /><br/>
	
	<h:commandButton value="Calculate Depreciation" action="#{depreciateManagedBean.finalValueCalculator()}" /><br/>
	
	Final Value: <h:outputText value="#{depreciateManagedBean.finalValue}" />
</h:form>
</f:view>
</body>
</html>
