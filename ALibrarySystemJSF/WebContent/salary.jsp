<%@ page language="java" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Calculate Salary</title>
	<link rel="stylesheet" href="./assets/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
	<f:view>
		<h:form styleClass="form flex--column center--horizontal">
			<b class="padding--top">Basic Salary</b>
			<h:inputText value="#{salaryManager.basicSalary}" styleClass="form__input" />
			
			<b class="padding--top">Overtime rate</b>
			<h:inputText value="#{salaryManager.rate}" styleClass="form__input" />
			
			<b class="padding--top">Overtime hrs</b>
			<h:inputText value="#{salaryManager.hrs}" styleClass="form__input" />
			
			<b class="padding--top">Select Allowance Fees</b>
			<h:selectManyListbox value="#{salaryManager.salaryAllowance}" styleClass="form__listbox">
				<f:selectItems value="#{salaryManager.salaryAllowanceValue}" var="s" itemValue="#{s.allowanceValue}" itemLabel="#{s.allowanceLabel}"/>
			</h:selectManyListbox>
			<h:commandButton action="#{salaryManager.calculate}" value="Calculate" styleClass="form__button margin--vertical yellow--btn"/>
			Total Rs: <h:outputText value="#{salaryManager.total}" styleClass="form__label" />

			<h:commandLink action="#{salaryManager.clear}" value="Clear" styleClass="form__hyperlink"/>
					<a href="http://localhost:8080/ALibrarySystemWeb/adminMenu.jsp" class="form__hyperlink">Go back to menu</a>			
		</h:form>
	</f:view>
</body>
</html>