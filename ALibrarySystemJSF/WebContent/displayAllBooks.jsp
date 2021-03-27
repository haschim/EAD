<%@ page language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Book Management</title>
	<link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
	<f:view>
		<h:form>
		
			<h:dataTable value="#{bookController.allBooks}" var="lstBooks" styleClass="datatable" >			
				<f:facet name="header">
					<h:outputText value="Books Collection" styleClass="datatable__main" />
				</f:facet>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>ISBN</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstBooks.isbn}" styleClass="datatable__otext"/>
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Title</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstBooks.title}" styleClass="datatable__otext"/>
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Author</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstBooks.author}" styleClass="datatable__otext"/>
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Publisher</f:verbatim>
					</f:facet>	
					<h:outputText value="#{lstBooks.publisher}" styleClass="datatable__otext"/>
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Year</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstBooks.year}" styleClass="datatable__otext"/>
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Format</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstBooks.format}" styleClass="datatable__otext"/>
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<f:verbatim>Is Borrowed?</f:verbatim>
					</f:facet>
					<h:outputText value="#{lstBooks.isborrowed}" styleClass="datatable__otext"/>
				</h:column>
			</h:dataTable>
		</h:form>	
		<a href="http://localhost:8080/ALibrarySystemWeb/adminMenu.jsp" class="form__hyperlink">Go back to menu</a>
	</f:view>
</body>
</html>