<%-- page - specifies information about the page --%>
<%@ page language="java"%>

<%-- taglib - allows use of custom tags in the page --%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<!DOCTYPE html>
<html>
<head>
	<title>Depreciation Page</title>
</head>
<body>
	<f:view>
		<h:form>
			<h3>Depreciation Calculator</h3>			
			
			Original Price: <h:inputText value="#{depreciateManagedBean.originalPrice}" /><br/>
			
			Origin:
			<h:selectOneRadio value="#{depreciateManagedBean.origin}">
				<f:selectItem itemValue="japan" itemLabel="Japan" />
				<f:selectItem itemValue="europe" itemLabel="Europe" />
				<f:selectItem itemValue="others" itemLabel="Others" />
			</h:selectOneRadio><br/>
			
			Age: <h:inputText value="#{depreciateManagedBean.age}" /><br/>
			
			<h:commandButton action="#{depreciateManagedBean.FinalValueCalculator()}" value="Calculate Depreciation" /><br/>
			
			Final Value: <h:outputText value="#{depreciateManagedBean.finalValue}" />
		</h:form>
	</f:view>
</body>
</html>