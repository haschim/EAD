<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Display Data table in JSF</title>
	</head>
<body>
	<f:view>
		<h:dataTable value="#{bookController.allBooks2}" var="all2" border="1" width="50%">
			
			<f:facet name="header">
				<h:outputText value="Existing Books"/>
			</f:facet>
			
			<h:column>
				<f:facet name="header">
					<f:verbatim>ISBN</f:verbatim>
				</f:facet>
				<h:outputText value="#{all2.isbn}"/>
			</h:column>
			
			<h:column>
				<f:facet name="header">
					<f:verbatim>Title</f:verbatim>
				</f:facet>
				<h:outputText value="#{all2.title}"/>
			</h:column>
			
		</h:dataTable>
	</f:view>
</body>
</html>