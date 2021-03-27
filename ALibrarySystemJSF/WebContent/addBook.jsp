<%@ page language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Add Book</title>
	<link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
	<f:view>
		<h:form styleClass="form flex--column center--horizontal">			
			
			<h:outputLabel for="isbn" styleClass="form__label padding--top">Enter ISBN: </h:outputLabel>
			<h:inputText value="#{bookController.bookObj.isbn}" required="true" id="isbn" label="isbn" styleClass="form__input">
				<f:validateRegex pattern="^[0-9]{10,10}|[0-9]{13,13}$" />
			</h:inputText>
			<h:message for="isbn" errorStyle="color:red" /><br/>
			
			<h:outputLabel for="title" styleClass="form__label">Enter Title: </h:outputLabel>
			<h:inputText value="#{bookController.bookObj.title}" required="true" id="title" label="title" styleClass="form__input">
			</h:inputText>
			<h:message for="title" errorStyle="color:red"/><br/>
			
			<h:outputLabel for="author" styleClass="form__label">Enter Author: </h:outputLabel>
			<h:inputText value="#{bookController.bookObj.author}" required="true" id="author" label="author" styleClass="form__input"><br/>
			</h:inputText>
			<h:message for="author" errorStyle="color:red"/><br/>
						
			<h:outputLabel for="publisher" styleClass="form__label">Enter Publisher: </h:outputLabel>
			<h:inputText value="#{bookController.bookObj.publisher}" required="true" id="publisher" label="publisher" styleClass="form__input">
			</h:inputText>
			<h:message for="publisher" errorStyle="color:red"/><br/>
			
			<h:outputLabel for="year" styleClass="form__label">Enter year: </h:outputLabel>
			<h:inputText value="#{bookController.bookObj.year}" required="true" id="year" label="year" styleClass="form__input">
				<f:validateLength minimum="4" maximum="4" />
			</h:inputText>
			<h:message for="year" errorStyle="color:red"/><br/>
			
			<h:outputLabel for="format" styleClass="form__label">Enter format: </h:outputLabel>
			<h:selectOneMenu value="#{bookController.bookObj.format}" styleClass="form__input">
				<f:selectItem itemLabel="Electronic" itemValue="electronic"/>
				<f:selectItem itemLabel="Hardcopy" itemValue="book"/>
				<f:selectItem itemLabel="Audiobook" itemValue="audiobook"/>
			</h:selectOneMenu><br/>
			
			<h:outputLabel for="isborrowed" styleClass="form__label">Can be borrowed: </h:outputLabel>
			<h:selectBooleanCheckbox value="#{bookController.bookObj.isborrowed}" required="true" styleClass="form__input">
				<f:selectItem itemLabel="Yes" itemValue="true"/>
			</h:selectBooleanCheckbox><br/>
			
			<h:commandButton value="Add Book" action="#{bookController.createBook}" styleClass="form__button yellow--btn"/>
		</h:form>
		<a href="http://localhost:8080/ALibrarySystemWeb/adminMenu.jsp" class="form__hyperlink">Go back to menu</a>
	</f:view>
</body>
</html>

<!-- 
	// Regex pattern dimistified by Haschim //
	 ^ signifies start 
	 $ signifies end
	 [0-9] only digits 0-9
	 {10,13} ten to thirteen characters
	 a-Za-z any uppercase/lowercase letter
	 | or 
 -->

