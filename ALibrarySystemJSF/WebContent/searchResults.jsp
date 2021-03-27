<%@ page language="java"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Search Results</title>
	<link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
	<f:view>
		<h:form>
			<h:dataTable value="#{bookController.lstSearchResults}" var="lstSearchResults" styleClass="datatable" >			
				<f:facet name="header">
					<h:outputText value="Search Results" styleClass="datatable__main" />
				</f:facet>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>ISBN</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstSearchResults.isbn}" styleClass="datatable__otext" />
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Title</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstSearchResults.title}" styleClass="datatable__otext" />
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Author</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstSearchResults.author}" styleClass="datatable__otext" />
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Publisher</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstSearchResults.publisher}" styleClass="datatable__otext" />
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Year</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstSearchResults.year}" styleClass="datatable__otext" />
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Format</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstSearchResults.format}" styleClass="datatable__otext" />
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Is Borrowed?</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstSearchResults.isborrowed}" styleClass="datatable__otext" />
				</h:column>
			</h:dataTable>
		</h:form>	
		<a href="http://localhost:8080/ALibrarySystemJSF/faces/searchBook.jsp" class="form__hyperlink">Search another book</a>
		<a href="http://localhost:8080/ALibrarySystemWeb/adminMenu.jsp" class="form__hyperlink">Go back to menu</a>
	</f:view>
</body>
</html>