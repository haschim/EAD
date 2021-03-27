<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Search Book</title>
	<link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
	<h3 class="page__heading">Search a Book from the Library.</h3>
	<f:view>
		<h:form styleClass="form flex--column center--horizontal">			
			
			<h:outputLabel for="keywords" styleClass="form__label padding--top">Enter Keywords: </h:outputLabel>
			<h:inputText value="#{bookController.search.keywords}" styleClass="form__input"/><br/>
			
			<h:commandButton value="Search" action="#{bookController.searchBook()}" styleClass="form__button yellow--btn"/>
		</h:form>
		<a href="http://localhost:8080/ALibrarySystemWeb/adminMenu.jsp" class="form__hyperlink">Go back to menu</a>
	</f:view>
</body>
</html>