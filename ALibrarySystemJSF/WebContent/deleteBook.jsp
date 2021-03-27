<%@ page language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Delete Book</title>
	<link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
	<f:view>
	<h:form styleClass="form flex--column center--horizontal">					
		<h:panelGrid styleClass="padding--top">
			<h:column >
				<h:outputLabel for="isbn" styleClass="form__label">Enter ISBN: </h:outputLabel>
				<h:inputText value="#{bookController.bookObj.isbn}" required="true" id="isbn" label="isbn" styleClass="form__input">
					<f:validateRegex pattern="^[0-9]{10,10}|[0-9]{13,13}$" />
				</h:inputText>
				<h:message for="isbn" errorStyle="color:red" /><br/>
			</h:column>
			<h:column>
				<h:commandLink value="Delete Book" onclick="alert('This action is irreversible, to confirm deletion of book, please press ok!!!')" action="#{bookController.deleteBook}" styleClass="yellow--btn"/>
			</h:column>
		</h:panelGrid>	
		</h:form>
	</f:view>
	<a href="http://localhost:8080/ALibrarySystemWeb/adminMenu.jsp" class="form__hyperlink">Go back to menu</a>
</body>
</html>