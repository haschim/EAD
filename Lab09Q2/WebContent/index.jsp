<%@ page language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>dataTable Qu.2</title>
	</head>
<body>

<f:view>
<h:form>

<h1>JSF 2.0 dataTable example</h1>

<h:dataTable value="#{bookController.allBooks}" var="oneBook" border="1">
	<h:column>
		<f:facet name="header">
			<f:verbatim>ISBN</f:verbatim>
		</f:facet>
		<h:outputText value="#{oneBook.isbn}"/>
		<f:facet name="footer">
			<h:inputText size="10" value="#{bookController.isbn}"/>
		</f:facet>
	</h:column>

	<h:column>
		<f:facet name="header">
			<f:verbatim>Title</f:verbatim>
		</f:facet>
		<h:outputText value="#{oneBook.title}"/>
		<f:facet name="footer">
			<h:inputText size="10" value="#{bookController.title}"/>
		</f:facet>
	</h:column>
	
	<h:column>
		<f:facet name="header">
			<f:verbatim>Action</f:verbatim>
		</f:facet>
		<h:commandLink value="Delete" action="#{bookController.delBook(oneBook)}" />
		<f:facet name="footer">
			<h:commandButton value="Add" action="#{bookController.addBook()}" />
		</f:facet>
	</h:column>
</h:dataTable>

<!-- 
	<h3>Add Book</h3>
	<table>
		<tr>
			<td>ISBN: </td>
			<td><h:inputText size="10" value="#{bookController.isbn}"/></td>
		</tr>
		<tr>
			<td>Title: </td>
			<td><h:inputText size="10" value="#{bookController.title}"/></td>
		</tr>
	</table>
	<h:commandButton value="Add" action="#{bookController.addBook()}" />
-->

</h:form>
</f:view>

</body>
</html>