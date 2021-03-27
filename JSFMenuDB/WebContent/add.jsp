<%@ page language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Insert Starters and Meals</title>
</head>
<body>
	<f:view>
		<h:form>
			<h3>Add Starter</h3>
			Id: <h:outputText value="#{starter.id}" /><br><br>
			Name: <h:inputText value="#{starter.name}" /><br><br>
			Price: <h:inputText value="#{starter.price}" /><br><br>
							
			<h:commandButton action="#{starter.addStarter()}" value="Add Starter" />
		</h:form>
		
		<h:form>	
			<h3>Add Meal</h3>
			Id: <h:outputText value="#{meal.id}" /><br><br>
			Name: <h:inputText value="#{meal.name}" /><br><br>
			Price: <h:inputText value="#{meal.price}" /><br><br>
			
			<h:commandButton action="#{meal.addMeal()}" value="Add Meal" />
		</h:form>
	</f:view>
	
	<br>
	<a href="index.jsp">Browse Menus</a>
	
</body>
</html>